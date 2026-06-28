//ZMJIPD21 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBJIND21  -  ZMJIPD21                            *
//*                   SOCIEDADES DE INVERSION                          *
//*                                                                    *
//* OBJETIVO       :  GENERA EL ARCHIVO A CON LA INFORMACION PARA EL   *
//*                   COBRO DE COMISIONES.                             *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBLICD05  -  ZMLIPD05                            *
//*                                                                    *
//* DESPUES DE     :  CBJICD02  -  ZMJIPD02                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                           -- ZM4DJ343 --                           *
//* OBJETIVO    :  GENERA ARCHIVO DE COMISIONES DE SOC.INV             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJI25P02 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//***CONDICION ARRANQUE EN PU   FILE=GFPP.CB.FIX.PIDIDD21.COND
//*** ACV/ACS/HPC  TRANSFER     FILE=MBVP.AJ.FIX.COMISION
//ZMJ343R1 DD DSN=SIVA.SIN.FIX.COMISION,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,LRECL=62,RECFM=FB,BLKSIZE=0),
//           SPACE=(CYL,(10,5),RLSE),
//           UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZJI21T01)
//**********************************************************************
//*                    ********* XCOM *********                        *
//*            TRANSFIERE ARCHIVO DE CASA DE BOLSA A PU                *
//*               LFILE=SIVA.SIN.WKF.PIDIDD21.COND                     *
//*               FILE=GFPP.CB.FIX.PIDIDD21.COND                       *
//*                 LFILE=SIVA.SIN.FIX.COMISION                        *
//*                 FILE=MBVP.AJ.FIX.COMISION                          *
//**********************************************************************
//* CREA ARCHIVO DE INQUIRE                                            *
//**********************************************************************
//IDIDDX1  EXEC PGM=DSICOPY,COND=(4,LT)
//PI601765 DD DUMMY
//SYSUT1   DD DUMMY,
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//SYSUT2   DD DSN=SIVA.OTR.FIX.XCOM.XCOMINQ.IDIDDX1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//**********************************************************************
//* ENVIO DE ARCHIVO CASA DE BOLSA A PU                                *
//**********************************************************************
//IDIDDX2 EXEC PGM=XCOMJOB,COND=(0,LT),
//         PARM=('TYPE=SCHEDULE,ACBNAME=XCOM,DFLTAB=XCOMDFLT')
//*
//STEPLIB  DD DSN=SYS3.XCOM.TGT.CAILIB,DISP=SHR
//PI601765 DD DUMMY
//XCOMINQ  DD DSN=SIVA.OTR.FIX.XCOM.XCOMINQ.IDIDDX1,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSTERM  DD SYSOUT=*
//SYSIN01  DD DSN=SIVA.XCO.FIX.PROCESS(IDIDDX10),DISP=SHR
//**********************************************************************
//* VALIDACION DE LA TRANSMISION                                       *
//**********************************************************************
//IDIDDX3 EXEC PGM=XCOMJOB,COND=(0,NE),
//         PARM=('TYPE=INQUIRE,ACBNAME=XCOM,DFLTAB=XCOMDFLT')
//*
//STEPLIB  DD DSN=SYS3.XCOM.TGT.CAILIB,DISP=SHR
//PI601765 DD DUMMY
//XCOMCNTL DD DSN=SYS3.XCOM.TGT.CINB0CTL,DISP=SHR
//XCOMINQ  DD DSN=SIVA.OTR.FIX.XCOM.XCOMINQ.IDIDDX1,DISP=SHR
//SYSIN01  DD DSN=ZIVA.ZME.CONTROL(INQWAIT),DISP=SHR
//**********************************************************************
//* CREA ARCHIVO DE INQUIRE PARA EJECUCION DE JOB                      *
//**********************************************************************
//IDIDDX4 EXEC PGM=DSICOPY,COND=(0,LT)
//PI601765 DD DUMMY
//SYSUT1   DD DUMMY,
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//SYSUT2   DD DSN=SIVA.OTR.FIX.XCOM.XCOMINQ.IDIDDY1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//**********************************************************************
//* ENVIO DE ARCHIVO CASA DE BOLSA A PU                                *
//**********************************************************************
//IDIDDX5 EXEC PGM=XCOMJOB,COND=(0,LT),
//         PARM=('TYPE=SCHEDULE,ACBNAME=XCOM,DFLTAB=XCOMDFLT')
//*
//STEPLIB  DD DSN=SYS3.XCOM.TGT.CAILIB,DISP=SHR
//PI601765 DD DUMMY
//XCOMINQ  DD DSN=SIVA.OTR.FIX.XCOM.XCOMINQ.IDIDDY1,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSTERM  DD SYSOUT=*
//SYSIN01  DD DSN=SIVA.XCO.FIX.PROCESS(IDIDDS10),DISP=SHR
//**********************************************************************
//* VALIDACION DE LA EJECUCION DEL JOB                                 *
//**********************************************************************
//IDIDDX6 EXEC PGM=XCOMJOB,COND=(0,NE),
//         PARM=('TYPE=INQUIRE,ACBNAME=XCOM,DFLTAB=XCOMDFLT')
//*
//STEPLIB  DD DSN=SYS3.XCOM.TGT.CAILIB,DISP=SHR
//PI601765 DD DUMMY
//XCOMCNTL DD DSN=SYS3.XCOM.TGT.CINB0CTL,DISP=SHR
//XCOMINQ  DD DSN=SIVA.OTR.FIX.XCOM.XCOMINQ.IDIDDY1,DISP=SHR
//SYSIN01  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(INQWAIT)
