//ZMJLPE21 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJLPE21.                                           *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DEL ARCHIVO CON INFORMACION DEL KARDEX   *
//*                PARA VALIDACION DE INFORMACION PARA EL SAT.         *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR: AZERTIA (FVC)                                     *
//*                                                                    *
//*   FECHA:  SEPTIEMBRE 2004.                                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//**********************************************************************
//*      |2004-09-22|IDCEX10|PJL21P03|CUANDO SE MIGREN LOS ARCHIVOS A  *
//*                                  |PROD REESTABLECER ARCHIVO KARDEX *
//*                                                                    *
//*KARDEX1 DD  DSN=SIVA.SIN.FIX.SATESC.DIRECTO,DISP=SHR                *00060000
//*        DD  DSN=SIVA.SIN.FIX.SATESC.OBLIGA,DISP=SHR                 *00060000
//*        DD  DSN=SIVA.SIN.FIX.SATESC.DEUDA,DISP=SHR                  *00060000
//*        DD  DSN=SIVA.SIN.FIX.SATESC.VARIABLE,DISP=SHR               *00060000
//*        DD  DSN=SIVA.SIN.FIX.SATESC.REPORTO,DISP=SHR                *00060000
//*        DD  DSN=SIVA.SIN.FIX.SATESC.ISRMODIF,DISP=SHR               *00060000
//*                                                                    *00070000
//**********************************************************************
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR         *
//* NO ACTUALIZA TABLAS.                                               *
//**********************************************************************
//PJL21P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD  DUMMY
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..OPCCNA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(2,1),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//**********************************************************************
//* PROGRAMA: ZM4DJ132                                                 *
//* FUNCION:  GEN. ARCHIVO DEL KARDEX PARA EL SAT.                     *
//**********************************************************************
//PJL21P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD  DUMMY                                                    00060000
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..OPCCNA,DISP=SHR        00060000
//KARDEX1  DD  DUMMY                                                    00060000
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSDBOUT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//KARDEX2  DD  DSN=SIVA.SIN.FIX.ECBP.SAT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=481,BLKSIZE=0)
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZSE21T03),DISP=SHR
//**********************************************************************
//*        AVISO EN CASO DE ERROR A LA CONSOLA                         *00640000
//**********************************************************************
// IF PJL21P03.RC GE 4 THEN                                             00660000
//PJL21P02 EXEC PGM=MAILOPER,                                           00660000
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00670000
//             ' PROCESO GEN SAT TERMINO MAL.CONTESTAR SI ',            00680000
//             'PARA TERMINAR')                                         00690000
// ENDIF                                                                00690000
//**********************************************************************
//* PROGRAMA: DMBATCH PARA TRANSFERIR ARCHIVOS                         *00710000
//**********************************************************************
//PJL21P01 EXEC PGM=DMBATCH,COND=(4,LT)                                 00740000
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZSE21T01),DISP=SHR
