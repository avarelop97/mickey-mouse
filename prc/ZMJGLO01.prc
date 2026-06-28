//ZMJGLO01 PROC
//*--------------------------------------------------------------------*
//* PROCESO.: ZMJGLO01
//* OBJETIVO: ENVIA ALERTA A LOS CLIENTES QUE SUS OPERACIONES DE FONDOS
//*           CAPTURADAS POR GLOMO QUE SON DE OTRA LIQUIDEZ
//* REALIZO: RHB
//* FECHA  : JUNIO 2022
//*====================================================================*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DE OPERACIONES                                  *00022700
//*--------------------------------------------------------------------*00022800
//ZMJGLO10 EXEC PGM=ADUUMAIN,                                           00022900
//          PARM='MXP1,ZMTGLO03,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.EBCM.OPEGLMO.DESC,
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00024000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=094,BLKSIZE=0)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMTGLO03),DISP=SHR
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01/ZM4GLO01                                        *00022600
//* OBJETIVO: ARCHIVO CON LAS ALERTAS QUE SE ENVIARAN A LOS CLIENTES   *00022700
//*           CON OPERACIONES DE FONDOS                                *00022700
//*--------------------------------------------------------------------*
//ZMJGLO05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMALRTE1 DD DSN=MXCP.ZM.FIX.EBCM.OPEGLMO.DESC,DISP=SHR
//*
//ZMALRTS1 DD DSN=MXCP.ZM.FIX.EBCM.OPEGLMO.NORM,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2863,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMTGLO01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMJGLO00.                                             *
//* UTILERIA   : IOACND.                                               *
//* OBJETIVO   : AGREGAR CONDICION PARA PU                             *
//*--------------------------------------------------------------------*
//ZMJGLO00 EXEC PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND BCJGLO01_OK WDATE'
//*
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
//*                     FIN DEL JCL ZMJGLO01                           *
//*--------------------------------------------------------------------*
