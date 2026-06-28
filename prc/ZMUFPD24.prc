//ZMUFPD24 PROC                                                         00010002
//**********************************************************************00020002
//* SISTEMA        :  SIVA.                                            *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD24                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  REALIZA REPORTES DE TESORERIA DESP. DE ENLACE    *00090002
//*                   CONTABLE. PARTE II                               *00100002
//*                   MISIONES DE SEPARACION AL FINAL DEL JOB          *
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  FABRICA DE SOFTWARE DGCM         06/MAY/2016     *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************
//* PASO    : PUF24P03                                                 *
//* PROGRAMA: ZM4DLG45                                                 *
//* OBJETIVO: PASO PARA BANCO.                                         *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUF24P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DL451 DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL451,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL452 DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL452,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL453 DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL453,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL454 DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL454,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL455 DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL455,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL456 DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL456,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL457 DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL457,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T0A),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF24P02                                                 *
//* PROGRAMA: ZM4DLG45                                                 *
//* OBJETIVO: PASO PARA CASA DE BOLSA.                                 *
//**********************************************************************
//PUF24P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DL451 DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL451,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL452 DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL452,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL453 DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL453,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL454 DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL454,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL455 DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL455,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL456 DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL456,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//ZM4DL457 DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL457,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T0B),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF24PA1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA BANCA (ACCIONES)  *
//**********************************************************************
//PUF24PA1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL451,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PB1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA BANCA (EXTRANJERAS**
//**********************************************************************
//PUF24PB1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL452,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PC1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA BANCA (NACIONALES)**
//**********************************************************************
//PUF24PC1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL453,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PD1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA BANCA (SOC. INV.) *
//**********************************************************************
//PUF24PD1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL454,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PE1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA BANCA (FIBRAS)    *
//**********************************************************************
//PUF24PE1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL455,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PF1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA BANCA (CKDS)      *
//**********************************************************************
//PUF24PF1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL456,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PG1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA BANCA (WARRANTS)  *
//**********************************************************************
//PUF24PG1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORBP.ZM4DL457,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PH1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA C.BOLSA(ACCIONES) *
//**********************************************************************
//PUF24PH1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL451,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PI1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA C.BOLSA(EXTRANJERA**
//**********************************************************************
//PUF24PI1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL452,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PJ1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA C.BOLSA(NACIONALES**
//**********************************************************************
//PUF24PJ1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL453,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PK1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA C.BOLSA(SOC.INV.) *
//**********************************************************************
//PUF24PK1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL454,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PL1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA C.BOLSA(FIBRAS)   *
//**********************************************************************
//PUF24PL1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL455,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PM1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA C.BOLSA(CKDS)     *
//**********************************************************************
//PUF24PM1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL456,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF24PN1                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE CONTABLE DE ISR RETENIDO DE LA C.BOLSA(WARRANTS) *
//**********************************************************************
//PUF24PN1 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.REPORCB.ZM4DL457,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//****************** FIN DEL PROCESO ZMUFPD24 **************************
