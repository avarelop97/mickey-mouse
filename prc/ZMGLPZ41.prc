//ZMGLPZ41 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO ANT.   :  SUBMITIDOR  (SIVAXPLD) PRC ZMGLPP41              *
//* PROCESO        :  SUBMITIDOR  (CBGLPZ41) PRC ZMGLPZ41              *
//*                   GENERAR ARCHIVO DE TRANS DE PLD                  *
//*                                                                    *
//* OBJETIVO       :  CUENTAS DE PLD                                   *
//*                                                                    *
//* PERIODICIDAD   :  A ELECCION DE USUARIO EN OPCION MUV 653 (PF4)    *
//*                                                                    *
//* REALIZO        :  MARLENE ZAMARRIPA ALVAREZ                        *
//* FECHA          :  OCTUBRE 2009                                     *
//*                                                                    *
//* MODIFICO       :                                                   *
//* FECHA          :                                                   *
//*                                                                    *
//**********************************************************************
//*                          -- ZM4DGV42 --                            *
//*                                                                    *
//*  OBJETIVO:    GENERAR ARCHIVO CON LAS CUENTAS DE PLD DE ACUERDO A  *
//*               LA CLASIFICACIÓN DE LAS CUENTAS.                     *
//*-------------------------------------------------------------------**
//PGL42P01 EXEC PGM=IKJEFT01
//ZMGV42P1 DD DSN=MXCP.ZM.FIX.ARCH.PLD.PARAM,DISP=SHR
//ZMGV42A1 DD DSN=MXCP.ZM.FIX.ARCH.INUSUAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=885,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGT04T04),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO: 1      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE PLAZOS EN    *
//*               HOST: DSN=MXCP.ZM.FIX.ARCH.INUSUAL A EL              *
//*               SERV: SBBV04\PUBLIC\LAVADO_DINERO                    *
//*-------------------------------------------------------------------**
//*PGL42P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*SYSDUMP   DD SYSOUT=*
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZGT04T05),DISP=SHR
//**
//*-------------------------------------------------------------------**
//*  PASO: 1      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE PLAZOS EN    *
//*               HOST: DSN=MXCP.ZM.FIX.ARCH.INUSUAL A EL              *
//*               SERV: NASBBVAMXP\PUBLIC\LAVADO_DINERO                *
//*-------------------------------------------------------------------**
//PGL42P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT  DD SYSOUT=*
//SYSDUMP  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//NDMCMDS  DD SYSOUT=*
//SYSIN    DD *
  SIGNON CASE(YES) ESF=NO
  SUBMIT PROC=MSAHDDX1                                             -
  &HOST=SYSP.PROP.HOST1                                            -
  &DIST=CDWVPCDTXREPOMX0                                           -
  &DSNI='MXCP.ZM.FIX.ARCH.INUSUAL'                                 -
  &DSNO='\\NASBBVAMXP\PUBLIC\LAVADO_DINERO\OPERACIONES.TXT'        -
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
  SIGNOFF
//*
//*--------------------------------------------------------------------*
//*                 F I N   ZMGLPZ41                                   *
//*--------------------------------------------------------------------*
