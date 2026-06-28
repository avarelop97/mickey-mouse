//ZMJIPE07 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  BCJICE07  EVENTUAL.                              *
//*                   INICIO DE DIA DEL SIVA                           *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* EMV  |OCTUBRE 05|IDCEX75|        |ADECUACION A LAS TARJETAS Y SE A-*
//*                                   GREGAN 3 PASOS PARA NUEVOS PGMS. *
//**********************************************************************
//**********************************************************************
//*           ARCHIVO DE PARAMETROS                                    *
//**********************************************************************
//**********************************************************************
//PJF02P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZMJIPE07,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJI07P09 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('CBP','ZPR','CBPZPR',' ')
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.CBP.ZMJIPE07,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*====================================================================*
//*                   -- ZM4DLH70 --                                   *
//* OBJETIVO    : APLICACION DE SIVAS A CARTERA DE CONTINGENCIA        *
//* USA TABLAS  : PCCARTE, SIVA, CATOPER, CONCEPT                      *
//*====================================================================*
//PJI07P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLH70P1 DD DSN=MXCP.ZM.FIX.TES.CBP.ZMJIPE07,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T03),DISP=SHR
//*
//*====================================================================*
//*                   -- ZM4DLH72 --                                   *
//* OBJETIVO : COMPARATIVO DE EFECTIVOS EN PCCARTE Y CARTERA           *
//*      PARA LOS CONCEPTOS 1,8,12 Y 14 CON DIFERENCIA MAXIMA DE 10.   *
//*          >>>>> NO ACTUALIZA NINGUNA TABLA <<<<<<                   *
//*====================================================================*
//PJI07P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLH72P1 DD DSN=MXCP.ZM.FIX.TES.CBP.ZMJIPE07,DISP=SHR
//ZMLH72R1 DD DSN=MXCP.ZM.FIX.REP.CONCIL.CB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FBA,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI07T01),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: TRANSFERENCIA DE ARCHIVO
//*---------------------------------------------------------------------
//PJI07P06 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZGPTB001),DISP=SHR
//*
