//ZMJLPE12 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE CAPITALES>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJLPE12 (OPC. 586)                                 *
//*                                                                    *
//*   OBJETIVO  :                                                      *
//*                                                                    *
//*   EMITE UN REPORTE INFORMATIVO QUE CONTIENE TODOS LOS MOVI         *
//*   MIENTOS QUE HAYAN AFECTADO LAS CUENTAS  BANCARIAS  DE LA         *
//*   CASA Y HAYAN ENTRADO POR SI AFECTA A BANCOS O POR CHEQUE         *
//*   DEVUELTO.                                                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |29-JUL-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJL12P06 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE12,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: IDCAMS
//* OBJETIVO: CREA ARCHIVO DE IMPRESION MOVIMIENTOS A CTAS BANCARIAS
//*---------------------------------------------------------------------
//PJL12P05 EXEC PGM=IDCAMS,COND=(4,LT)
//PI601765 DD DUMMY
//SYSPRINT DD SYSOUT=*
//ARCH     DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ARCHIMPT,
//            DISP=(NEW,PASS),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EJ746
//* OBJETIVO: REPORTE DE MOVIMIENTOS A CUENTAS BANCARIAS X SUCURSAL
//*---------------------------------------------------------------------
//PJL12P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMLM26P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE12,DISP=SHR
//ZMB798A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ARCHIMPT,
//            DISP=(OLD,PASS)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL12T01),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ICEGENER
//* OBJETIVO: MANDA A SPOOL REP. MOVIM. A CTAS BANCARIAS  X SUCURSAL
//*---------------------------------------------------------------------
//PJL12P03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSUT1   DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ARCHIMPT,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//*---------------------------------------------------------------------
//* PROGRAMA: MAILOPER
//* OBJETIVO: AVISO EN CASO DE ERROR A LA CONSOLA
//*---------------------------------------------------------------------
//PJL12P02 EXEC PGM=MAILOPER,COND=(4,GE,PJL12P04),
//         PARM=('/ATENCION OPERADOR.AVISAR A SOPROD QUE',
//             ' PROCESO ZMJLPE12 TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
//*---------------------------------------------------------------------
//* PROGRAMA: CTMCND
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D
//*---------------------------------------------------------------------
//PJL12P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXABO_IN_SEP_OK WDATE',
//         COND=(4,LT)
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
//*
