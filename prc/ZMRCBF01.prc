//ZMRCBF01 PROC
//*********************************************************************
//*                     C A S A   D E   B O L S A                     *
//*                     =========================                     *
//*                    << MERCADO DE CAPITALES >>                     *
//*                                                                   *
//*   APLICACION       :   MODULO UNICO DE VALORES CASA DE BOLSA      *
//*                                                                   *
//*   JCL              :  CBRECF01                                    *
//*                                                                   *
//*   OBJETIVO         :  RETIMBRAR EDC CASA DE BOLSA                 *
//*                                                                   *
//*   CORRE DESPUES DE :  HORARIO, 21:00 HRS                          *
//*                                                                   *
//*   ELABORADO POR    :  HGM                                         *
//*********************************************************************
//*MJVG-I
//*--------------------------------------------------------------------*
//*   PASO    : PRECF220                                               *
//*   OBJETIVO: REALIZA CONVERSION DE CARACTER #VARIABLE POR ENIE      *
//*                     -- ZM3CFD03 --                                 *
//*--------------------------------------------------------------------*
//PRECF220 EXEC PGM=ZM3CFD03
//*
//ZM3CFDE1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEDC.REPROG,
//            DISP=SHR
//*
//ZM3CFDS1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEDC.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=458,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//*MJVG-F
//**********************************************************************
//* PASO     : PRECF210                                                *
//* OBJETIVO : BORRA LOS ARCHIVOS DESPUES DE SER PROCESADOS DE MANERA  *
//*            CORRECTA.                                               *
//**********************************************************************
//PRECF210 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=X
//*
//SYSIN    DD  DUMMY
//DD1      DD  DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEDC.REPROG,
//             DISP=(OLD,DELETE,DELETE)
//*
//*MJVG-F
//*********************************************************************
//*--------------------------------------------------------------------*
//*   PASO    : PRECF200                                               *
//*   OBJETIVO: ORDENA ARCHIVO DE CONTRATOS A CANCELAR                 *
//*--------------------------------------------------------------------*
//PRECF200 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.ZMRCBF01.RETIMBR.EDC,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.ZMRCBF01.CUENTA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=20,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC4003),DISP=SHR
//*
//*********************************************************************
//*   PASO    : PRECF190                                              *
//*   OBJETIVO: RETIMBRADO PIPES EDC CASA DE BOLSA CON NUEVOS NODOS   *
//*             RELACIONADOS AL UUID CANCELADO.                       *
//*********************************************************************
//PRECF190 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZM4CB501 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEDC.REPRO,DISP=SHR
//*
//ZM4CB502 DD DSN=MXCP.ZM.FIX.ECBP.ZMRCBF01.CUENTA,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.CBP.RETIM.MEDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=458,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE)
//*
//FDSALID3 DD DSN=MXCP.ZM.FIX.CBP.SUSTITU.UUID,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=66,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCCBC02),DISP=SHR
//*
