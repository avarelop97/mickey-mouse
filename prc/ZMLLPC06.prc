//ZMLLPC06 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPC06-SIVAX743                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  ARCHIVO DE CONCILIACION DE MONTOS BUC VS. MUV       *00003000
//*                (PARA LA CONSULTA DE REPORTOS)                      *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PLC06P45 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC06,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*****************************************************************
//* PASO: PLC06P40                                                *
//* PROGRAMA: ZM4DL270                                            *
//* OBJETIVO: GENERA MOVIMIENTOS DE ASIGNACION                    *
//*****************************************************************
//PLC06P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML270A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ASIGN743,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=159,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP06T40),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*****************************************************************
//* PASO: PLC06P35                                                *
//* PROGRAMA: ZM4DL271                                            *
//* OBJETIVO: GENERA ARCHIVO CON INFORMACION DE DEMANDAS          *
//*****************************************************************
//PLC06P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML271A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..DEMAN743,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=159,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP06T35),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*****************************************************************
//* PASO: PLC06P30                                                *
//* PROGRAMA: ZM4DL272                                            *
//* OBJETIVO: GENERA ARCHIVO CON INFORMACION DE CPAS. DIRECTAS    *
//*****************************************************************
//PLC06P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML272A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..CPADI743,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=159,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP06T30),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*****************************************************************
//* PASO: PLC06P25                                                *
//* PROGRAMA: ZM4DL273                                            *
//* OBJETIVO: GENERA ARCHIVO CON INFORMACION DE VENTAS DIRECTAS   *
//*****************************************************************
//PLC06P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML273A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..VTADI743,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=159,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP06T25),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*****************************************************************
//* PASO: PLC06P20                                                *
//* PROGRAMA: ZM4DL274                                            *
//* OBJETIVO: GENERA ARCHIVO CON INFORMACION DE AMORTIZACION      *
//*****************************************************************
//PLC06P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML274A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..AMORT743,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=159,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP06T20),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*****************************************************************
//* PASO: PLC06P15                                                *
//* PROGRAMA: ZM4DL275                                            *
//* OBJETIVO: GENERA ARCHIVO CON VENCIMIENTO DE REPORTO           *
//*****************************************************************
//PLC06P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML275A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..VENTO743,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=159,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP06T15),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*****************************************************************
//* PASO: PLC06P10                                                *
//* PROGRAMA: ZM4DL276                                            *
//* OBJETIVO: GENERA ARCHIVO CON INFORMACION DE CORTE DE CUPON    *
//*****************************************************************
//PLC06P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML276A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..CXCUP743,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=159,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP06T10),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*****************************************************************
//* PASO: PLC06P05                                                *
//* PROGRAMA: ZM4DL277                                            *
//* OBJETIVO: GENERA ARCHIVO CON INFORMACION DE ISR               *
//*****************************************************************
//PLC06P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML277A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..REISR743,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=159,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP06T05),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*****************************************************************
//* PASO: PLC06P02                                                *
//* PROGRAMA: ZM4DL284                                            *
//* OBJETIVO: GENERA ARCHIVO MUV DE SALDOS CUENTAS GLOBALES BUC   *
//*****************************************************************
//PLC06P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML284A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..REPOR743,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=156,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP06T02),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*****************************************************************
//* PASO: PLC06P01                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLC06P01 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND BCLLPC06_IN_SEP_OK WDATE'
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
//**********************************************************************
//*                      F I N   Z M L L P C 0 6                       *
//**********************************************************************
