//ZMUEPR15 PROC                                                         00010002
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - YA9BXW - REDISEÑO DE ESTADO DE CUENTA.         *
//* PROCESO     :  ZMUEPR15.                                           *
//* OBJETIVO    :  RESPALDA EN GDG LOS ARCHIVOS QUE SE ENVIAN A        *
//*                INDRA Y MEDC                                        *
//* REALIZO     :  FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA       :  NOVIEMBRE 2013                                      *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- -------------------------------------*
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//**********************************************************************
//* PASO       : PUE14P60.                                             *
//* UTILERIA   : ICEGENER                                              *
//* OBJETIVO   : RESPALDA EN GDG EL ARCHIVO DE BANCA PATRIMONIAL DE SI *
//*              IMPRESION QUE SE ENVIA A INDRA.                       *
//**********************************************************************
//PUE14P60 EXEC PGM=ICEGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INSOR3,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPATR.INDRA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(400,200),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO       : PUE14P50.                                             *
//* UTILERIA   : ICEGENER                                              *
//* OBJETIVO   : RESPALDA EN GDG EL ARCHIVO DE BANCA PRIVADA DE SI     *
//*              IMPRESION QUE SE ENVIA A INDRA.                       *
//**********************************************************************
//PUE14P50 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INSOR3,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPRIV.INDRA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(400,200),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO       : PUE14P40.                                             *
//* UTILERIA   : ICEGENER                                              *
//* OBJETIVO   : RESPALDA EN GDG EL ARCHIVO DE CONTRATOS UHN DE SI     *
//*              IMPRESION QUE SE ENVIA A INDRA.                       *
//**********************************************************************
//PUE14P40 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INSOR3,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPUHN.INDRA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(400,200),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO       : PUE14P30.                                             *
//* UTILERIA   : ICEGENER                                              *
//* OBJETIVO   : RESPALDA EN GDG EL ARCHIVO DE BANCA PATRIMONIAL DE SI *
//*              IMPRESION DE CIFRAS                                   *
//**********************************************************************
//PUE14P30 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMPEM,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPATR.SICIFRA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=50,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(400,200),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO       : PUE14P20.                                             *
//* UTILERIA   : ICEGENER                                              *
//* OBJETIVO   : RESPALDA EN GDG EL ARCHIVO DE BANCA PRIVADA DE SI     *
//*              IMPRESION DE CIFRAS                                   *
//**********************************************************************
//PUE14P20 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMPEM,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPRIV.SICIFRA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=50,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(400,200),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO       : PUE14P10.                                             *
//* UTILERIA   : ICEGENER                                              *
//* OBJETIVO   : RESPALDA EN GDG EL ARCHIVO DE CONTRATOS UHN DE SI     *
//*              IMPRESION DE CIFRAS                                   *
//**********************************************************************
//PUE14P10 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMPEM,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPUHN.SICIFRA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=50,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(400,200),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
