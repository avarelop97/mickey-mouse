//ZMJLPZ52 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA MOVIMIENTOS   BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCESO   :  ZMJLPZ52                                            *
//*                                                                    *
//*   OBJETIVO  :  TRANSFERENCIA ARCHIVOS MEDC DE CASA DE BOLSA        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//MZME18P3 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZMJLPZ52,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO       : MZME18P2                                              *
//* UTILERIA   : TANTIA22                                              *
//* OBJETIVO   : ESTE PASO REALIZA LA TRANSMISION DE ARCHIVO HOST A    *
//*              SERVIDOR DEL ARCHIVO DE PIPES DE CASA DE BOLSA        *
//*--------------------------------------------------------------------*
//*
//MZME18P2 EXEC PROC=TANTIA22,COND=(4,LT)
//LFILE    DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEDC.PIPES,
//            DISP=SHR
//*
//SYSIN    DD *
DESTINO=BATCHECMP
TIPO=SEND
OPTS='ASCII,LF,NOTRUNC'
RUTA=/CFD/Aplicativos/Host/CB/
RFILE=MXCBSI_VA_IM_%%ODATE.TXT
/*
//*--------------------------------------------------------------------*
//* PASO       : MZME18P1                                              *
//* UTILERIA   : TANTIA22                                              *
//* OBJETIVO   : ESTE PASO REALIZA LA TRANSMISION DE ARCHIVO HOST A    *
//*              SERVIDOR DE ARCHIVO DE CIFRAS CONTROL DE CASA DE BOLSA*
//*--------------------------------------------------------------------*
//*
//MZME18P1 EXEC PROC=TANTIA22,COND=(4,LT)
//LFILE    DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.PMEDC.CCTL,
//            DISP=SHR
//*
//SYSIN    DD *
DESTINO=BATCHECMP
TIPO=SEND
OPTS='ASCII,LF,NOTRUNC'
RUTA=/CFD/Aplicativos/Host/CB/
RFILE=CI_MXCBSI_VA_IM_%%ODATE.TXT
/*
//*--------------------------------------------------------------------*
//* PASO     : MZMEP9P1                                                *
//* PROGRAMA : DMBATCH                                                 *
//* OBJETIVO : ESTE PASO REALIZA LA TRANSMISION DE ARCHIVO HOST A      *
//*            SERVIDOR DEL ARCHIVO DE CIFRAS CONTROL DE CASA DE BOLSA *
//*--------------------------------------------------------------------*
//MZMEP9P1 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//NDMCMDS  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN     DD *
  SIGNON USERID=(NDMUSER,NDMUSER)
   SUBMIT PROC=CBWB03GE                                  -
          &DSN1='MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEN'       -
          &DSN2='\\CBNOCFS03\C_CB003\ZM\PATRIM\ECBP%%YY.%%MM.TXT'
   SUBMIT PROC=CBWB02GE                                  -
          &DSN1='MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.DIGTA'     -
          &DSN2='\\CBNOCFS03\C_CB003\ZM\PATRIM\ECBD%%YY.%%MM.TXT'
  SIGNOFF
//*
//*--------------------------------------------------------------------*
