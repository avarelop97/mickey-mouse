//ZMHORI14 PROC
//*--------------------------------------------------------------------*
//* PROCESO.: ZMHORI14
//* OBJETIVO: DESCARGAR INFORMACION PRODUCTIVA DE LA TABLA VECPRE      *
//*           REALIZA FORMATEO PARA INGESTA EN DATIO                  *
//* REALIZO: ANGEL SANCHEZ OSORNO
//* FECHA  : ABRIL   2024
//*====================================================================*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA TABLA VECTOR DE PRECIOS (VECPRE)                *
//*--------------------------------------------------------------------*
//ZMHO0250 EXEC PGM=ADUUMAIN,
//          PARM='MXP1,ZMHO0300,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.FACTORY.UVECPRE.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=209,BLKSIZE=0)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: IKJEFT01/ZM3HOR14                                        *
//* OBJETIVO: RECIBE ARCHIVO CON LA DESCARGA DE LA TABLA VECPRE        *
//*           LE DA FORMATO DISPLAY                                    *
//*--------------------------------------------------------------------*
//ZMHO0200 EXEC PGM=ZM3HOR14,COND=(4,LT)
//*
//ZM3H14E1 DD DSN=MXCP.ZM.FIX.FACTORY.UVECPRE.D&FECHA,DISP=SHR
//*
//ZM3H14S1 DD DSN=MXCP.ZM.FIX.FACTORY.UVECPRE.SAL.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=378,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                SE ADICIONA CONDICION CTL-M ALTAMIRA                *
//*PARA QUE DATIO PUEDA LEER LA CONDICION EN ALTAMIRA Y HACER EL       *
//*APROVISIONAMIENTO DE LA TABLA                                       *
//* PROGRAMA: IOACND                                                   *
//**********************************************************************
//ZMHO0240 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND BCHORI14_OK &FEC'
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
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL PRC ZMHORI14                           *
//*--------------------------------------------------------------------*
