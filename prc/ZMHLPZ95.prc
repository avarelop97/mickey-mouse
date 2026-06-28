//ZMHLPZ95 PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - AUTOCORRECION GL PRESVAL                       *
//* PROCESO     :  ZMHLPZ95                                            *
//* PERIODICIDAD:  A PETICION (PREVIO A CORTE DE CUPON O DEREHO)       *
//* OBJETIVO    :  REALIZA EL NETEO DE LA POSICION Y EFECIVO DE LOS    *
//*                CONTRATOS DE PP BANCO DE LAS OPERACIONES REGISTRADAS*
//*                DESPUES DEL CIERRE DE MERCADO DE BANCO              *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//**********************************************************************00385100
//* PASO       : PHPZ9511.                                             *00385200
//* UTILERIA   : ADUUMAIN                                              *00385300
//* OBJETIVO   : DESCARGA DE OPERA/OPERAVA COMPRAS/VENTAS DEL DIA      *00385400
//**********************************************************************00385500
//PHPZ9511 EXEC PGM=ADUUMAIN,                                           00385600
//         PARM='MXP1,PHPZ9511,NEW,,MSGLEVEL(1)'                        00385700
//*                                                                     00385800
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00385900
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00386000
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00386100
//*                                                                     00386200
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMHLPZ95.OPERA.DIA,                       00386300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00386400
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00386500
//            SPACE=(CYL,(500,250),RLSE)                                00386600
//*                                                                     00386700
//SYSTSPRT DD SYSOUT=*                                                  00386800
//SYSPRINT DD SYSOUT=*                                                  00386900
//SYSPUNCH DD SYSOUT=*                                                  00387000
//SYSCNTL  DD DUMMY                                                     00387100
//*                                                                     00387200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHFPD711),DISP=SHR                   00387300
//*                                                                     00387500
//**********************************************************************02322306
//* OBJETIVO : REALIZARA EL RETIRO/DEPOSITO DE VALORES Y CARGO/ABONO   *02322406
//*            DE EFECTIVO PARA NETERAR LOS CONTRATOS DE PP BANCO      *02323006
//*            DE LAS COMPRAS/VENTAS REALIZADAS EN EL DIA              *
//*          -- ZM4DHU14 --                                            *02323006
//**********************************************************************02324006
//PHPZ9512 EXEC PGM=IKJEFT01,COND=(04,LT)                               02325006
//*                                                                     02327006
//ENTRADA  DD DSN=MXCP.ZM.FIX.ZMHLPZ95.OPERA.DIA,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ZMHLPZ95.OPERA.DIA.REPO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=131,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPZ9512),DISP=SHR                   02330008
//*                                                                     02330106
// IF  PHPZ9512.RC EQ 00 THEN                                           00395000
//**********************************************************************02322306
//* OBJETIVO : GENERA REPORTE DE NETEO DE LA OPERACION DEL DíA PARA    *02322406
//*            SER ENVIADO POR CONTROL D                               *02323006
//*          -- ZM4DHU16 --                                            *02323006
//**********************************************************************02324006
//PHPZ9513 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//*                                                                     02327006
//REPORTE  DD DSN=MXCP.ZM.FIX.ZMHLPZ95.OPERA.DIA.REPO,DISP=SHR
//*
//ZMD713R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPZ9513),DISP=SHR
//*
//**********************************************************************02322306
//* OBJETIVO : PRENDE CONDICION PARA TRANSMITIR REPORTE DE NETEO A     *02322406
//*            SERVIDOR DE BANCA                                       *02323006
//**********************************************************************02324006
//PHPZ9514 EXEC PGM=CTMCND,PARM='ADD COND CBHLPZ95_OPE_OK WDATE',       00395100
//         COND=(4,LT)                                                  00395200
//*                                                                     00395300
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00395400
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00395500
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00395600
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00395700
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00395800
//PRTDBG   DD SYSOUT=*                                                  00395900
//SYSPRINT DD DUMMY                                                     00396000
//SYSUDUMP DD DUMMY                                                     00396100
//DAPRINT  DD SYSOUT=*                                                  00396200
//DACNDIN  DD DDNAME=SYSIN                                              00396300
// ENDIF                                                                00396400
//*                                                                     00396500
//**********************************************************************00385100
//* PASO       : PHPZ9515.                                             *00385200
//* UTILERIA   : ADUUMAIN                                              *00385300
//* OBJETIVO   : DESCARGA DE OPERA/OPERAVA DE OPERACIONES ESPECIALES DE*00385400
//*              COMPRAS/VENTAS DEL DIA                                *
//**********************************************************************00385500
//PHPZ9515 EXEC PGM=ADUUMAIN,COND=(04,LT),                              00385600
//         PARM='MXP1,PHPZ9515,NEW,,MSGLEVEL(1)'                        00385700
//*                                                                     00385800
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00385900
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00386000
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00386100
//*                                                                     00386200
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMHLPZ95.OPERA.ESP.DIA,                   00386300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00386400
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00386500
//            SPACE=(CYL,(500,250),RLSE)                                00386600
//*                                                                     00386700
//SYSTSPRT DD SYSOUT=*                                                  00386800
//SYSPRINT DD SYSOUT=*                                                  00386900
//SYSPUNCH DD SYSOUT=*                                                  00387000
//SYSCNTL  DD DUMMY                                                     00387100
//*                                                                     00387200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHFPD715),DISP=SHR                   00387300
//*                                                                     00387500
//**********************************************************************02322306
//*          -- ZM4DHU14 --                                            *02323006
//* OBJETIVO : REALIZARA EL RETIRO/DEPOSITO DE VALORES Y CARGO/ABONO   *02322406
//*            DE EFECTIVO PARA NETERAR LOS CONTRATOS DE PP BANCO      *02323006
//*            DE LAS CANCELACIONES DE LAS OPERACIONES DE DIAS         *
//*            ANTERIORES                                              *
//*          -- ZM4DHU14 --                                            *02323006
//**********************************************************************02324006
//PHPZ9516 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//*                                                                     02327006
//ENTRADA  DD DSN=MXCP.ZM.FIX.ZMHLPZ95.OPERA.ESP.DIA,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ZMHLPZ95.OPERA.ESP.DIA.REPO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=131,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPZ9516),DISP=SHR                   02330008
//*                                                                     02330106
// IF  PHPZ9516.RC EQ 00 THEN                                           00395000
//**********************************************************************02322306
//* OBJETIVO : GENERA REPORTE DE NETEO DE LA OPERACION DEL DíA PARA    *02322406
//*            SER ENVIADO POR CONTROL D                               *02323006
//*          -- ZM4DHU16 --                                            *02323006
//**********************************************************************02324006
//PHPZ9517 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//*                                                                     02327006
//REPORTE  DD DSN=MXCP.ZM.FIX.ZMHLPZ95.OPERA.ESP.DIA.REPO,DISP=SHR
//*
//ZMD713R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPZ9517),DISP=SHR
//*                                                                     02330106
//**********************************************************************02322306
//* OBJETIVO : PRENDE CONDICION PARA TRANSMITIR REPORTE DE NETEO A     *02322406
//*            SERVIDOR DE BANCA                                       *02323006
//**********************************************************************02324006
//PHPZ9518 EXEC PGM=CTMCND,PARM='ADD COND CBHLPZ95_ESP_OK WDATE',       00395100
//         COND=(4,LT)                                                  00395200
//*                                                                     00395300
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00395400
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00395500
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00395600
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00395700
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00395800
//PRTDBG   DD SYSOUT=*                                                  00395900
//SYSPRINT DD DUMMY                                                     00396000
//SYSUDUMP DD DUMMY                                                     00396100
//DAPRINT  DD SYSOUT=*                                                  00396200
//DACNDIN  DD DDNAME=SYSIN                                              00396300
// ENDIF                                                                00396400
//*                                                                     00396500
//**********************************************************************02322306
//* OBJETIVO : DEPURA TABLA DE CARTERA                                 *02322406
//*            ELIMINA REGISTROS DE LOS CONTRATOS DE PP BANCO DE LA    *02323006
//*            CARTERA SI LA POSICION Y EL EFECTIVO SON 0              *
//*          -- ZM4DHU17 --                                            *02323006
//**********************************************************************02324006
//PHPZ9519 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//*                                                                     02327006
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHFPD719),DISP=SHR
//*                                                                     02330106
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETIVO:   BORRADO DE ARCHIVO DE PARAMETROS                       *
//*                                                                    *
//**********************************************************************
//PHPZ9520 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPP90,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
