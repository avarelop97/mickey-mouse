//ZMLLPE20 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE20                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  GENERA ARCHIVO CON CARTERAS DE OPERATIVOS           *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJL20P20 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE20,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*******************************************************************
//* PROGRAMA MONITO DE CAPAS DE MERCADOP DE DINERO                  *
//*******************************************************************
//PJL20P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLX12R1 DD SYSOUT=*
//ZMLX12R2 DD SYSOUT=*
//ZMLX12R3 DD SYSOUT=*
//ZMLX12R4 DD SYSOUT=*
//ZMLX12R5 DD SYSOUT=*
//ZMLX12R6 DD SYSOUT=*
//ZMLX12R7 DD SYSOUT=*
//ZMLX12R8 DD SYSOUT=*
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL20T15),DISP=SHR
//*
//**********************************************************************
//*                                                                     08221000
//*    CORRE PROGRAMA ZM4DLE11 INSERTA EVENTO 'ACI' CON I.              08230000
//*                                                                     08240000
//**********************************************************************
//PJL20P06 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE20,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL20T06),DISP=SHR
//*                                                                     00032303
//**********************************************************************
//* PROGRAMA: ZM4DLN92                                                 *
//* FUNCION:  GENERA ARCHIVO CON CARTERAS DE OPERATIVOS                *
//*                                                                    *
//* NO ACTUALIZA TABLAS.                                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PJL20P05 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//*
//ZMLN92A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE20,DISP=SHR
//*
//ZMLN92A2 DD DSN=SIVA.MDD.FIX.E&EMP..CONCI.OPE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=117,BLKSIZE=0,RECFM=FB)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL20T05),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DLN93                                                 *
//* FUNCION:  GENERA ARCHIVO CON CARTERAS DE LOS CLIENTES              *
//*                                                                    *
//* NO ACTUALIZA TABLAS.                                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PJL20P04 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//*
//ZMLN93A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE20,DISP=SHR
//*
//ZMLN93A2 DD DSN=SIVA.MDD.FIX.E&EMP..CONCI.CTE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=117,BLKSIZE=0,RECFM=FB)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL20T04),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DLN90                                                 *
//* FUNCION:  GENERA ARCHIVO CON MOVIMIENTOS PARA AUDITORIA            *
//*           DE CONTRATOS OPERATIVOS.                                 *
//*                                                                    *
//* NO ACTUALIZA TABLAS.                                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PJL20P03 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//*
//ZMLN90A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE20,DISP=SHR
//*
//ZMLN90A2 DD DSN=SIVA.MDD.FIX.E&EMP..MOV.OPERA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=170,BLKSIZE=0,RECFM=FB)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL20T03),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DLN91                                                 *
//* FUNCION:  GENERA ARCHIVO CON MOVIMIENTOS PARA AUDITORIA            *
//*           DE CONTRATOS DE CLIENTES.                                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PJL20P02 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//ZMLN91A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE20,DISP=SHR
//*
//ZMLN91A2 DD DSN=SIVA.MDD.FIX.E&EMP..AUD.CLIENTE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=170,BLKSIZE=0,RECFM=FB)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL20T02),DISP=SHR
//*
//**********************************************************************
//*                                                                     08221000
//*    CORRE PROGRAMA ZM4DLE11 INSERTA EVENTO 'ACI' CON F.              08230000
//*                                                                     08240000
//**********************************************************************
//PJL20P01 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE20,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL20T01),DISP=SHR
//*
//**********************************************************************
//*            F I N    Z M L L P E 2 0                                 08221000
//**********************************************************************
