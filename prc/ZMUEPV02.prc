//ZMUEPV02 PROC
//*
//**********************************************************************
//*                     * SORT   *                                      00030000
//**********************************************************************
//PUE01P07 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDCUENTA.G0061V00,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDCUENTA.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=540,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T02),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                      00030000
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, EINFO                      00020000
//*            EL ARCHIVO: EDSECIN  GENERANDO SU GDG CORRESPONDIENTE    00060000
//**********************************************************************
//PUE01P06 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDDEPRE.G0061V00,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDDEPRE.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=076,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*                                                                     00990000
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T13),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                      00030000
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, EINFO                      00020000
//*            EL ARCHIVO: EDSECIN  GENERANDO SU GDG CORRESPONDIENTE    00060000
//**********************************************************************
//PUE01P05 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDIMPUE.G0061V00,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDIMPUE.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=085,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*                                                                     00990000
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T15),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                      00030000
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, EINFO                      00020000
//*            EL ARCHIVO: EDSECIN  GENERANDO SU GDG CORRESPONDIENTE    00060000
//**********************************************************************
//PUE01P04 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDMOVED.G0061V00,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDMOVED.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=109,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*                                                                     00990000
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T17),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                      00030000
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, EINFO                      00020000
//*            EL ARCHIVO: EDSECIN  GENERANDO SU GDG CORRESPONDIENTE    00060000
//**********************************************************************
//PUE01P03 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDSECIN.G0061V00,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDSECIN.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=145,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*                                                                     00990000
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T19),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                      00030000
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, EINFO                      00020000
//*            EL ARCHIVO: EDSECIN  GENERANDO SU GDG CORRESPONDIENTE    00060000
//**********************************************************************
//PUE01P02 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDOPERT1.G0061V00,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOPERT1.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=068,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*                                                                     00990000
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T21),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                      00030000
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, EINFO                      00020000
//*            EL ARCHIVO: EDSECIN  GENERANDO SU GDG CORRESPONDIENTE    00060000
//**********************************************************************
//PUE01P01 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDPARAM.G0061V00,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDPARAM.SRT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=083,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*                                                                     00990000
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE01T23),DISP=SHR
//**********************************************************************
