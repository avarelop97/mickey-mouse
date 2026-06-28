//ZMCFDI08 PROC
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0810                                               *
//*   OBJETIVO: GENERA KARDEX DE INTERESES PARA CASA DE BOLSA          *
//*--------------------------------------------------------------------*
//PHDI0810 EXEC PGM=IKJEFT01
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.INTERES,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CIFRAS.INTERES.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0810),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0809                                               *
//*   OBJETIVO: GENERA KARDEX DE ACCIONES PARA CASA DE BOLSA           *
//*--------------------------------------------------------------------*
//PHDI0809 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.ACCION,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CIFRAS.ACCION.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0809),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0808                                               *
//*   OBJETIVO: GENERA KARDEX DE FIBRAS PARA CASA DE BOLSA             *
//*--------------------------------------------------------------------*
//PHDI0808 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.FIBRAS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CIFRAS.FIBRAS.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0808),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0807                                               *
//*   OBJETIVO: GENERA KARDEX DE CKDS PARA CASA DE BOLSA               *
//*--------------------------------------------------------------------*
//PHDI0807 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.CKDS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CIFRAS.CKDS.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0807),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0806                                               *
//*   OBJETIVO: GENERA KARDEX DE WARRANTS PARA CASA DE BOLSA           *
//*--------------------------------------------------------------------*
//PHDI0806 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.WARRANT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CIFRAS.WARRANT.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0806),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0805                                               *
//*   OBJETIVO: GENERA KARDEX DE DIVIDENDO DE SOCIEDADES DE CASA       *
//*--------------------------------------------------------------------*
//PHDI0805 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.DIVSOC,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CIFRAS.DIVSOC.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0805),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHDI0804                                               *
//*   OBJETIVO: GENERA KARDEX DE DIVIDENDO DE CAPITALES DE CASA        *
//*--------------------------------------------------------------------*
//PHDI0804 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.KARDEX.DIVCAP,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CIFRAS.DIVCAP.CTL,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHDI0804),DISP=SHR
//*
