//ZMLLPC08 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPC07-SIVAXLIQ                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  LIQUIDACION DEL CORTE DE CUPON EN LINEA             *00003000
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
//PLC08P20 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC08,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*****************************************************************
//* PASO: PLC08P15                                                *
//* PROGRAMA: ZM4DLN74                                            *
//* OBJETIVO: GENERA LIQUIDACION EN LINEA DEL CORTE DE CUPON      *
//*****************************************************************
//PLC08P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN74A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC08,DISP=SHR
//ZMLN74S1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..MVTSISR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=085,BLKSIZE=0),
//            UNIT=3390
//ZMLN74R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMLN74R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP08T15),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*****************************************************************
//* PASO: PLC08P10                                                *
//* PROGRAMA: ZM4DLE17                                            *
//* OBJETIVO: GENERA REPORTE DE MOVIMIENTOS DE ISR POR CORTE CUPON*
//*****************************************************************
//PLC08P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE17A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC08,DISP=SHR
//ZMLE17S1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLE17,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=181,BLKSIZE=0,RECFM=FB)
//ZMLE17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC03045),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*****************************************************************
//* PASO: PLC08P05                                                *
//* PROGRAMA: ZM4DLN65                                            *
//* OBJETIVO: GENERA REPORTE DE MOVIMIENTOS DE INTERESES POR CXC  *
//*****************************************************************
//PLC08P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLN65R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC03050),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
//* PASO    : PLC08P04                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: CAMBIA EMPRESA BCM A CBP                                 *
//*           ESTO ES PARA EVITAR QUE EN EL CASO DE QUE SE FIRMEN      *
//*           CON USUARIO DE BANCO SE GENEREN 2 REGISTRON EN LA CTLPROC*
//* CONTROL : ZLP08T04                                                 *
//**********************************************************************
//PLC08P04 EXEC PGM=ICEMAN,COND=(4,LT)                                  00000090
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC08,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC0E,           00000140
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,2),RLSE),UNIT=3390,
//            DCB=(LRECL=96,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP08T04),DISP=SHR
//*
//**********************************************************************
//*  PROGRAMA: ZM4DLE11
//*  FUNCION:  ACTUALIZA EL FINAL DEL PROCESO DE LIQUIDACION EN LINEA
//*            DE CORTE DE CUPON.  (ACT EN "F" EL EVENTO LIQ).
//**********************************************************************
//PLC08P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC0E,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLP08T03),DISP=SHR
//*
//*****************************************************************
//* PASO: PLC08P01                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLC08P01 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND CBLLPC08_IN_SEP_OK WDATE'
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
//*                      F I N   Z M L L P C 0 8                       *
//**********************************************************************
