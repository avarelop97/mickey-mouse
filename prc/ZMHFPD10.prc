//ZMHFPD10 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V)                  *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMHFPD10                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  RESPALDO DIARIO DE LOS MOVIMIENTOS CONTABLES     *00090002
//*                   DE CASA DE BOLSA                                 *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NMUFPD02                                         *00140002
//*                                                                    *00150002
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     17/OCT/2006       *00160002
//*                                                                    *00170002
//* OBSERVACION    :  ESTE JOB CORRE DIARIO DE L-V                     *00180002
//*                                                                    *00190002
//**********************************************************************00240002
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//HFP10P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMHFPD10,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*                          ===  ICEMAN  ===                          *
//*                                                                    *
//* OBJETIVO : ORDENA ARCHIVO CON INTERFAZ CONTABLE DE CASA DE BOLSA   *
//*            MXCP.ZM.WKF.ECO.EBCM.INTFAZ.CONTACEC                    *
//*                                                                    *
//**********************************************************************
//HFP10P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV1,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV2,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV3,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV4,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..INTFAZ.CONTACEC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF10T01),DISP=SHR
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ CONTABLE DE CB              *
//*            MXCP.ZM.WKF.ECO.EBCM.INTFAZ.CONTACEC                    *
//*  A ===>    MXCP.ZM.GDGD.ECO.EBCM.COACECMV                          *
//**********************************************************************
//HFP10P03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..INTFAZ.CONTACEC,DISP=SHR
//SYSUT2   DD DSN=MXC&AMB..ZM.GDGD.ECO.E&EMP..COACECMV(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                          ===  ICEMAN  ===                          *
//*                                                                    *
//* OBJETIVO : ORDENA ARCHIVO CON INTERFAZ MIS DE CASA DE BOLSA        *
//*            MXCP.ZM.WKF.ECO.EBCM.INTFAZ.MISMUV                      *
//*                                                                    *
//**********************************************************************
//HFP10P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.MIS.RESPALDO,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.MISCAP,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.MISMDD,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..INTFAZ.MISMUV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF10T02),DISP=SHR
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ MIS DE CB                   *
//*            MXCP.ZM.WKF.ECO.EBCM.INTFAZ.MISMUV                      *
//*  A ===>    MXCP.ZM.GDGD.ECO.EBCM.MISMUV                            *
//**********************************************************************
//HFP10P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..INTFAZ.MISMUV,DISP=SHR
//SYSUT2   DD DSN=MXC&AMB..ZM.GDGD.ECO.E&EMP..MISMUV(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=1050,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************00780600
//*              FIN DE ZMHFPD10                                   *****00780600
//**********************************************************************00780600
