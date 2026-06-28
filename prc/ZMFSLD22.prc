//ZMFSLD22 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - AI FACTORY 2.0.                                *
//* PROCESO      : ZMFSLD22                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REFORMATEO DE ARCHIVO MANCUER.DIA PARA INGESTAR     *
//*                EN DATIO                                            *
//* REALIZO      : ANGEL SANCHEZ OSORNO                                *
//* FECHA        : FEBRERO 2024.                                       *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*SDATOOL-45415-ASO-INI ANGEL SANCHEZ OSORNO ABRIL 2024               *
//*SE AGREGAN PASO PARA LEVANTAR CONDICIONES EN ALTAMIRA PARA QUE      *
//*DATIO HAGA EL APROVISIONAMIENTO DE LAS TABLAS QUE SE ENVIAN A FACSET*
//*
//**********************************************************************
//*
//**********************************************************************
//* JCL BCFSLD22
//**********************************************************************
//* UTILERIA   : ICEMAN                                            *
//* OBJETIVO   : FORMATEAR ARCHIVO DE MANCUER.DIA PARA DEJAR SOLO      *
//*              EL NUMERO DE PROMOTOR Y CORREO DEL MISMO              *
//**********************************************************************
//ZFS22T01 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FCT.ZM4FSL27.MANCUER.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MANCUER.F&FECHA..FORM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,LRECL=84,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS22T15),DISP=SHR
//*SDATOOL-45415-ASO-INI
//**********************************************************************
//*                SE ADICIONA CONDICION CTL-M ALTAMIRA                *
//*PARA QUE DATIO PUEDA LEER LA CONDICION EN ALTAMIRA Y HACER EL       *
//*APROVISIONAMIENTO DE LA TABLA                                       *
//*PROGRAMA: IOACND                                                    *
//ZFS22T10 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND BCFSLD22_OK &FECAD'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*SDATOOL-45415-ASO-FIN
//*
//**********************************************************************
//*                    TERMINA ZMFSLD22
//**********************************************************************
