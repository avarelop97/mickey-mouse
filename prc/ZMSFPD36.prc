//ZMSFPD36 PROC                                                         00010006
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMSFPD36                                             *
//* OBJETIVO    : GENERA ARCHIVOS ACUMULADOS DE INFORMACION            *
//*               ESTADISTICA PARA EL AREA DE GESTION PATRIMONIAL      *
//* REALIZO     : ALEJANDRO GARCIA MORALES                             *
//* FECHA       : 25/ENERO/2023                                        *
//**********************************************************************
//*             L O G  D E  M O D I F I C A C I O N E S                *
//**********************************************************************00010006
//*    MARCA      AUTHOR   FECHA  DESCRIPCION                          *
//* -----------  -------- ------- ------------------------------------ *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*00950310
//* PROGRAMA  : ZM4DS150                                               *00950410
//* OBEJTIVO  : ACUMULADO DE INGRESOS                                  *00951006
//*--------------------------------------------------------------------*00950310
//PSF10P00 EXEC PGM=IKJEFT01                                            00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMS099A1 DD DSN=MXCP.ZM.FIX.SIE.EBCM.ACINGCAM,DISP=SHR                00953306
//ZMS099A2 DD DSN=MXCP.ZM.FIX.SIE.EBCM.ACREFCAM,                        00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(10,10),RLSE)                        00953708
//ZMS099A3 DD DSN=MXCP.ZM.FIX.SIE.EBCM.ACREFCTL,                        00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=115,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(10,10),RLSE)                        00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T00),DISP=SHR                   00954306
//*                                                                     00954406
//*--------------------------------------------------------------------*00950310
//* PROGRAMA  : ZM4DS150                                               *00950410
//* OBEJTIVO  : PASO ADICIONAL PARA CARGAR LA CONDICION DE SALIDA A    *00951006
//*             ALATAMIRA                                              *
//*--------------------------------------------------------------------*00950310
//*                                                                    *
//ZMPOSF03 EXEC PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND MX2CRX_BCSFCD1000 WDATE'
//*                                                                    *
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//*                                                                    *
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//*                                                                    *
//DACNDIN  DD  DDNAME=SYSIN
//PRTDBG   DD  SYSOUT=*
//DAPRINT  DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSIN    DD  DUMMY
//*                                                                    *
//**********************************************************************00900006
//*                    F I N   Z M S F P D 3 6                         *00900006
//**********************************************************************00900006
