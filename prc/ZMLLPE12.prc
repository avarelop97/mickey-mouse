//ZMLLPE12 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE12-SIVAXPOS                                   *00003000
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
//*AZCS*SIVA*PENDIENTE*HPC**********************************************
//*
//**********************************************************************00003200
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO   00003300
//**********************************************************************00003400
//PJL12P07 EXEC PGM=ZM3DG001,REGION=0M,                                 00004100
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004200
//*                                                                     00006300
//PI601765 DD DUMMY
//*                                                                     00006300
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00004800
//SYSPRINT DD SYSOUT=*                                                  00004900
//SYSOUT   DD SYSOUT=*                                                  00005000
//SYSDBOUT DD SYSOUT=*                                                  00005100
//SYSABOUT DD DUMMY                                                     00005200
//SYSUDUMP DD DUMMY                                                     00005300
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE12,               00005700
//            DISP=(NEW,CATLG,DELETE),                                  00005800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00006000
//            UNIT=3390,                                                00006100
//            SPACE=(CYL,(2,1),RLSE)                                    00006200
//*                                                                     00006300
//**********************************************************************
//*                                                                     08221000
//*    CORRE PROGRAMA ZM4DLE11 INSERTA EVENTO 'ACI' CON I.              08230000
//*                                                                     08240000
//**********************************************************************
//PJL12P06 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE12,DISP=SHR       00005700
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL12T06),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DLN92                                                 *
//* FUNCION:  GENERA ARCHIVO CON CARTERAS DE OPERATIVOS                *
//*                                                                    *
//* NO ACTUALIZA TABLAS.                                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PJL12P05 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//PI601765 DD DUMMY
//*                                                                    *
//ZMLN92A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE12,DISP=SHR       00005700
//*                                                                    *
//*GFPP.CB.FIX.CONCI.OPE                         P.U
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL12T05),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DLN93                                                 *
//* FUNCION:  GENERA ARCHIVO CON CARTERAS DE LOS CLIENTES              *
//*                                                                    *
//* NO ACTUALIZA TABLAS.                                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PJL12P04 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//PI601765 DD DUMMY
//*
//ZMLN93A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE12,DISP=SHR       00005700
//*                                                                     00005700
//*GFPP.CB.FIX.CONCI.CTE                        PU
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL12T04),DISP=SHR
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
//PJL12P03 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//PI601765 DD DUMMY
//*
//ZMLN90A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE12,DISP=SHR       00005700
//*                                                                     00005700
//*GFPP.CB.FIX.MOV.OPERA                          PU
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL12T03),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DLN91                                                 *
//* FUNCION:  GENERA ARCHIVO CON MOVIMIENTOS PARA AUDITORIA            *
//*           DE CONTRATOS DE CLIENTES.                                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PJL12P02 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//PI601765 DD DUMMY
//*
//ZMLN91A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE12,DISP=SHR       00005700
//*                                                                     00005700
//*GFPP.CB.FIX.AUD.CLIENTE                              PU
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL12T02),DISP=SHR
//*
//**********************************************************************
//*                                                                     08221000
//*    CORRE PROGRAMA ZM4DLE11 INSERTA EVENTO 'ACI' CON F.              08230000
//*                                                                     08240000
//**********************************************************************
//PJL12P01 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE12,DISP=SHR       00005700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL12T01),DISP=SHR
