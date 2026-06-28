//ZMLLPD20 PROC
//*
//**********************************************************************
//**
//** SISTEMA        :  MUV
//**
//** PROCESO        :  ZMLLPD20
//**
//** OBJETIVO       :  SEPARACION DE OFICIONAS DE MESA DE PRECIOS
//**
//** CORRE ANTES DE :  BCLLND21
//**
//**
//** DESPUES DE     :  BCLLND17
//**
//**
//** OBSERVACIONES  :
//**
//** REALIZO        :  GETRONICS (IEF)
//*                    OCTUBRE 2005.                                   *
//**********************************************************************
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA              DESCRIPCION              *
//* ----------- --------- ------- ------------------------------------ *
//*   @DGCM01  * XM26224 *06MAY13*SE AGREGAN PASOS PLL20P10 Y PLL20P05 *
//*                               ADEMAS SE MODIFICA NOMBRE DE ARCHIVO *
//*                               DE SALIDA Y CONTENIDO DE CTC ZLL20T25*
//*--------------------------------------------------------------------*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PLL20P50 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..ZMLLPD20,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*---------------------------------------------------------------------
//* SORT
//* OBJETIVO: EXTRAE INFORMACION DE ESPECIALISTAS GESTION INDUCIDA
//*---------------------------------------------------------------------
//PLL20P40 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAESP,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..GESTINDU,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=611,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL20T40),DISP=SHR
//*
//*---------------------------------------------------------------------
//* SORT
//* OBJETIVO: EXTRAE INFORMACION DE ESPECIALISTAS METRO NORTE
//*---------------------------------------------------------------------
//PLL20P35 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAESP,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..METRNORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=611,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL20T35),DISP=SHR
//*
//*---------------------------------------------------------------------
//* SORT
//* OBJETIVO: EXTRAE INFORMACION DE ESPECIALISTAS NORESTE
//*---------------------------------------------------------------------
//PLL20P30 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAESP,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..NORESTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=611,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL20T30),DISP=SHR
//*
//*---------------------------------------------------------------------
//* SORT
//* OBJETIVO: EXTRAE INFORMACION DE ESPECIALISTAS NORTE
//*---------------------------------------------------------------------
//PLL20P25 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAESP,DISP=SHR
//*@DGCM01-INI
//*SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..NORTE,
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..NOROESTE,
//*@DGCM01-FIN
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=611,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL20T25),DISP=SHR
//*
//*---------------------------------------------------------------------
//* SORT
//* OBJETIVO: EXTRAE INFORMACION DE ESPECIALISTAS OCCIDENTE
//*---------------------------------------------------------------------
//PLL20P20 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAESP,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..OCCIDENT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=611,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL20T20),DISP=SHR
//*
//*---------------------------------------------------------------------
//* SORT
//* OBJETIVO: EXTRAE INFORMACION DE ESPECIALISTAS SUR
//*---------------------------------------------------------------------
//PLL20P15 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAESP,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..SUR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=611,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL20T15),DISP=SHR
//*
//*@DGCM01-INI
//*---------------------------------------------------------------------
//* SORT
//* OBJETIVO: EXTRAE INFORMACION DE ESPECIALISTAS BAJIO
//*---------------------------------------------------------------------
//PLL20P10 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAESP,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..BAJIO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=611,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL20T14),DISP=SHR
//*
//*---------------------------------------------------------------------
//* SORT
//* OBJETIVO: EXTRAE INFORMACION DE ESPECIALISTAS SURESTE
//*---------------------------------------------------------------------
//PLL20P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAESP,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..SURESTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=611,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL20T13),DISP=SHR
//*
//*@DGCM01-FIN
