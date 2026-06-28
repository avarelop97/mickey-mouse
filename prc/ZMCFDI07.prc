//ZMCFDI07 PROC
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0720                                               *
//*   OBJETIVO: GENERA KARDEX DE INTERESES PARA BANCA PATRIMONIAL      *
//*--------------------------------------------------------------------*
//PHDI0720 EXEC PGM=IKJEFT01
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.INTERES,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CIFRAS.INTERES.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0720),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0719                                               *
//*   OBJETIVO: GENERA KARDEX DE INTERESES PARA FIDUCIARIO             *
//*--------------------------------------------------------------------*
//PHDI0719 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EFID.KARDEX.INTERES,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EFID.CIFRAS.INTERES.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0719),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0718                                               *
//*   OBJETIVO: GENERA KARDEX DE INTEREES PARA CUSTORIDA               *
//*--------------------------------------------------------------------*
//PHDI0718 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.INTERES,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECUS.CIFRAS.INTERES.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0718),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0717                                               *
//*   OBJETIVO: GENERA KARDEX DE ACCIONES PARA BANCA PATRIMONIAL       *
//*--------------------------------------------------------------------*
//PHDI0717 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.ACCION,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CIFRAS.ACCION.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0717),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0716                                               *
//*   OBJETIVO: GENERA KARDEX DE ACCIONES PARA FIDUCIARIO              *
//*--------------------------------------------------------------------*
//PHDI0716 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EFID.KARDEX.ACCION,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EFID.CIFRAS.ACCION.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0716),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0715                                               *
//*   OBJETIVO: GENERA KARDEX DE ACCIONES PARA CUSTODIA                *
//*--------------------------------------------------------------------*
//PHDI0715 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.ACCION,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECUS.CIFRAS.ACCION.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0715),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0714                                               *
//*   OBJETIVO: GENERA KARDEX DE FIBRAS PARA BANCA PATRIMONIAL         *
//*--------------------------------------------------------------------*
//PHDI0714 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.FIBRAS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CIFRAS.FIBRAS.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0714),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0713                                               *
//*   OBJETIVO: GENERA KARDEX DE FIBRAS PARA FIDUCIARIO                *
//*--------------------------------------------------------------------*
//PHDI0713 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EFID.KARDEX.FIBRAS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EFID.CIFRAS.FIBRAS.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0713),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0712                                               *
//*   OBJETIVO: GENERA KARDEX DE FIBRAS PARA CUSTODIA                  *
//*--------------------------------------------------------------------*
//PHDI0712 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.FIBRAS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECUS.CIFRAS.FIBRAS.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0712),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0711                                               *
//*   OBJETIVO: GENERA KARDEX DE CKDS PARA BANCA PATRIMONIAL           *
//*--------------------------------------------------------------------*
//PHDI0711 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.CKDS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CIFRAS.CKDS.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0711),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0710                                               *
//*   OBJETIVO: GENERA KARDEX DE CKDS PARA FIDUCIARIO                  *
//*--------------------------------------------------------------------*
//PHDI0710 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EFID.KARDEX.CKDS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EFID.CIFRAS.CKDS.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0710),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0709                                               *
//*   OBJETIVO: GENERA KARDEX DE CKDS PARA CUSTODIA                    *
//*--------------------------------------------------------------------*
//PHDI0709 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.CKDS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECUS.CIFRAS.CKDS.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0709),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0708                                               *
//*   OBJETIVO: GENERA KARDEX DE WARRANTS PARA BANCA PATRIMONIAL       *
//*--------------------------------------------------------------------*
//PHDI0708 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.WARRANT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CIFRAS.WARRANT.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0708),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0707                                               *
//*   OBJETIVO: GENERA KARDEX DE WARRANTS PARA FIDUCIARIO              *
//*--------------------------------------------------------------------*
//PHDI0707 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EFID.KARDEX.WARRANT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EFID.CIFRAS.WARRANT.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0707),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0706                                               *
//*   OBJETIVO: GENERA KARDEX DE WARRANTS PARA CUSTODIA                *
//*--------------------------------------------------------------------*
//PHDI0706 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.WARRANT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECUS.CIFRAS.WARRANT.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0706),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0705                                               *
//*   OBJETIVO: GENERA KARDEX DE DIVIDENDO DE SOCIEDADES DE BANCA      *
//*--------------------------------------------------------------------*
//PHDI0705 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.DIVSOC,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CIFRAS.DIVSOC.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0705),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0704                                               *
//*   OBJETIVO: GENERA KARDEX DE DIVIDENDO DE SOCIEDADES DE FIDUCIARIO *
//*--------------------------------------------------------------------*
//PHDI0704 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EFID.KARDEX.DIVSOC,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EFID.CIFRAS.DIVSOC.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0704),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0703                                               *
//*   OBJETIVO: GENERA KARDEX DE DIVIDENDO DE SOCIEDADES DE CUSTODIA   *
//*--------------------------------------------------------------------*
//PHDI0703 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.DIVSOC,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECUS.CIFRAS.DIVSOC.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0703),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0702                                               *
//*   OBJETIVO: GENERA KARDEX DE DIVIDENDO DE CAPITALES DE BANCA       *
//*--------------------------------------------------------------------*
//PHDI0702 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.KARDEX.DIVCAP,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CIFRAS.DIVCAP.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0702),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0701                                               *
//*   OBJETIVO: GENERA KARDEX DE DIVIDENDO DE CAPITALES DE FIDUCIARIO  *
//*--------------------------------------------------------------------*
//PHDI0701 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EFID.KARDEX.DIVCAP,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EFID.CIFRAS.DIVCAP.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0701),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0700                                               *
//*   OBJETIVO: GENERA KARDEX DE DIVIDENDO DE CAPITALES DE CUSTODIA    *
//*--------------------------------------------------------------------*
//PHDI0700 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECUS.KARDEX.DIVCAP,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECUS.CIFRAS.DIVCAP.CTL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0700),DISP=SHR
//*
