//ZMLLPD15 PROC
//*
//**********************************************************************
//**
//** SISTEMA        :  BANCA PATRIMONIAL
//**
//** PROCESO        :  ZMLLPD15
//**
//** OBJETIVO       : GENERA ARCHIVO DE OPERACIONES PARA MESA DE
//**                  PRECIOS Y LO ENVIA A SERVIDOR BLADE
//**
//** CORRE ANTES DE : NINGUNO
//**
//**
//** DESPUES DE     : BCLLND10
//**
//**
//** OBSERVACIONES  :
//**
//**
//** REALIZO        :  GETRONICS
//*                    AGOSTO  2006.                                   *
//*                                                                    *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO   |DESCRIPCION                     *
//*--------------------------------------------------------------------*
//* PROGE|12-SEP-06 |IDCEX31|PLL15P10 |CRECE LA LONG.DEL ARCHIVO A 281 *
//*--------------------------------------------------------------------*
//* LONG |OCTUBRE-07|IDCEX75|PLL15P10 |CAMBIA LONGITUD DEL ARCHIVO 260 *
//*--------------------------------------------------------------------*
//* LONG |MAYO-2012 |DYDIEF |PLL15P09 |CAMBIA LONGITUD DEL ARCHIVO 611 *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PLL15P15 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..ZMLLPD15,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLD07
//* OBJETIVO: GENERA ARCHIVO DE OPERACIONES DE ASIGNACION DE BANCA
//*           PATRIMONIAL.
//*---------------------------------------------------------------------
//PLL15P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD07A1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAMPR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=260,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*********************************************************
//*CAMBIA LA LONGITUD DEL ARCHIVO DE 239 A 260
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL15T10),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLD04
//* OBJETIVO: GENERA ARCHIVO DE OPERACIONES DE ASIGNACION DE BANCA
//*           PATRIMONIAL AA.
//*---------------------------------------------------------------------
//PLL15P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD04A1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAESP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=611,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL15T09),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLD05
//* OBJETIVO: GENERA ARCHIVO DE OPERACIONES DE ASIGNACION DE BANCA
//*           PATRIMONIAL  BB.
//*---------------------------------------------------------------------
//PLL15P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD05A1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAMBB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=350,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*********************************************************
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL15T08),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO: 05     REALIZA LA TRANSFERENCIA DEL ARCHIVO DE PLAZOS EN
//*              HOST: DSN=MXC&AMB..ZM.FIX.EBCM.OPERAMPR,      A EL
//*              SERV: BLADE CBNOCFS03\C_CB003\ZM\PATRIM\OPERAMPR.TXT
//*---------------------------------------------------------------------
//*PLL15P05 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//*STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSDUMP   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZLL15T05),DISP=SHR
//*---------------------------------------------------------------------
//* PASO: 04     REALIZA LA TRANSFERENCIA DEL ARCHIVO DE ESPECIALISTAS
//*              HOST: DSN=MXC&AMB..ZM.FIX.EBCM.OPERAESP,      A EL
//*              SERV: BLADE CBNOCFS03\C_CB003\ZM\PATRIM\OPERAESP.TXT
//*---------------------------------------------------------------------
//*PLL15P04 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//**
//*STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSDUMP   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZLL15T04),DISP=SHR
//*---------------------------------------------------------------------
//* PASO: 03     REALIZA LA TRANSFERENCIA DEL ARCHIVO DE ESPECIALISTAS
//*              (G U I D O)
//*              HOST: DSN=MXC&AMB..ZM.FIX.E&EMP..OPERAMBB     A EL
//*              SERV: BLADE CBNOCFS03\C_CB003\ZM\PATRIM\OPERAGUI.TXT
//*---------------------------------------------------------------------
//*PLL15P03 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//**
//*STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSDUMP   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZLL15T03),DISP=SHR
//**********************************************************************
//*                      FIN ZMLLPD15                                  *
//**********************************************************************
