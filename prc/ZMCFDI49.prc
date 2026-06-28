//ZMCFDI49 PROC
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0720                                               *
//*   OBJETIVO: GENERA KARDEX DE INTERESES PARA BANCA PATRIMONIAL      *
//*--------------------------------------------------------------------*
//PHDI0720 EXEC PGM=IKJEFT01
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.INTERES,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBPP.CIFRAS.INTERES.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0721),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0717                                               *
//*   OBJETIVO: GENERA KARDEX DE ACCIONES PARA BANCA PATRIMONIAL       *
//*--------------------------------------------------------------------*
//PHDI0717 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.ACCION,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBPP.CIFRAS.ACCION.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0722),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0714                                               *
//*   OBJETIVO: GENERA KARDEX DE FIBRAS PARA BANCA PATRIMONIAL         *
//*--------------------------------------------------------------------*
//PHDI0714 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.FIBRAS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBPP.CIFRAS.FIBRAS.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0723),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0711                                               *
//*   OBJETIVO: GENERA KARDEX DE CKDS PARA BANCA PATRIMONIAL           *
//*--------------------------------------------------------------------*
//PHDI0711 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.CKDS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBPP.CIFRAS.CKDS.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0724),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0708                                               *
//*   OBJETIVO: GENERA KARDEX DE WARRANTS PARA BANCA PATRIMONIAL       *
//*--------------------------------------------------------------------*
//PHDI0708 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.WARRANT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBPP.CIFRAS.WARRANT.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0725),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0705                                               *
//*   OBJETIVO: GENERA KARDEX DE DIVIDENDO DE SOCIEDADES DE BANCA      *
//*--------------------------------------------------------------------*
//PHDI0705 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.DIVSOC,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBPP.CIFRAS.DIVSOC.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0726),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0702                                               *
//*   OBJETIVO: GENERA KARDEX DE DIVIDENDO DE CAPITALES DE BANCA       *
//*--------------------------------------------------------------------*
//PHDI0702 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBPP.KARDEX.DIVCAP,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBPP.CIFRAS.DIVCAP.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0727),DISP=SHR
//*
//*
//*------------------------------------------------------------------*
//*                  FIN DE PROCESO                                  *
//*------------------------------------------------------------------*
