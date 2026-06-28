//ZMCFDE01 PROC
//*--------------------------------------------------------------------*
//* PASO       : PHCFDE05                                              *
//* OBJETIVO   : GENERA ARCHIVO DE DATOS FISCALES BCM                  *
//*--------------------------------------------------------------------*
//PHCFDE05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4ECE01 DD DSN=MXCP.ZM.FIX.EBCM.CFDI.ADMMEDC.REPR,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.EBCM.CFDI.DATOS.FISCALES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=187,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFDE05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHCFDE04                                              *
//* OBJETIVO   : SORT ARCHIVO SELLOS                                   *
//*--------------------------------------------------------------------*
//PHCFDE04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.CFDI.DATOS.FISCALES,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.CFDI.DATOS.FISCALES.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=187,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCFDE04),DISP=SHR
//*
//*--------------------------------------------------------------------*
