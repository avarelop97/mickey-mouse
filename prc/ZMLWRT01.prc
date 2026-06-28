//ZMLWRT01 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*               C A S A  D E  B O L S A                              *
//*                                                                    *
//* SISTEMA       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)              *
//*                                                                    *
//* PROCESO       : ZMLWRT01                                           *
//* OBJETIVO      : GENERA EL ARCHIVO DE WARRANTS                      *
//* PERIODICIDAD  : DIARIO                                             *
//* ELABORADO POR : ALEJANDRO GARCIA MORALES                           *
//*                                                                    *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//* AGM-INI-01  MI31262 110326   SE AGREGA PASO ZMCNW009 PARA AGREGAR  *
//* AGM-FIN-01                   EL CASCARON VACIO DEL ARCHIVO         *
//*                                                                    *
//* AGM-INI-02  MI31262 110326   SE AGREGO LA GENERACIÓN DEL ARCHIVO   *
//* AGM-FIN-02                   DE CIFRAS DE CONTROL.                 *
//*                                                                    *
//* AGM-INI-03  MI31262 110326   SE ADICIONA LA CONDICION GLOBAL PARA  *
//* AGM-FIN-03                   DISTRIBUIDO                           *
//*--------------------------------------------------------------------*
//* PASO 1     : ZMCNW009                                              *
//* UTILERIA   : IEFBR14                                               *
//* OBJETIVO   : GENERA EL CASCARON VACIO DEL ARCHIVO DE WARRANTS      *
//*--------------------------------------------------------------------*
//*AGM-INI-01                                                          *
//ZMCNW009 EXEC PGM=IEFBR14
//*                                                                    *
//ZMWARRAN DD DSN=MXCP.ZM.FIX.WARRAN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=323,BLKSIZE=0,DSORG=PS)
//*AGM-FIN-01                                                          *
//*--------------------------------------------------------------------*
//* PASO 2     : ZMCNW010                                              *
//* UTILERIA   : IKJEFT1A/ZM4CNW10                                     *
//* OBJETIVO   : GENERA ARCHIVO DE WARRANTS                            *
//*--------------------------------------------------------------------*
//ZMCNW010 EXEC PGM=IKJEFT1A,COND=(04,LT)
//*                                                                    *
//ZMWARRAN DD DSN=MXCP.ZM.FIX.WARRAN.F&FECHA,
//            DISP=OLD,
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=323,BLKSIZE=0,DSORG=PS)
//*AGM-INI-02                                                          *
//ZMCIFRAS DD DSN=MXCP.ZM.FIX.CIFRAS.WARRAN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=115,BLKSIZE=0,DSORG=PS)
//*AGM-FIN-02                                                          *
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*                                                                    *
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCWRT01),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*PASO 3   : ZMCNW013                                                 *
//*PROGRAMA : IOANCND                                                  *
//*OBJETIVO : ADICIONA LA CONDICION GLOBAL PARA DISTRIBUIDO.           *
//*--------------------------------------------------------------------*
//*AGM-INI-03
//ZMCNW013 EXEC PGM=IOACND,
//         PARM='ADD COND CRXCDT_CBHWRT0100 WDATE'
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*AGM-FIN-03
//*--------------------------------------------------------------------*
//*               F I N  D E L  P R O C L I B                          *
//*--------------------------------------------------------------------*
