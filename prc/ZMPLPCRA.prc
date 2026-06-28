//ZMPLPCRA PROC
//*--------------------------------------------------------------------*
//*               FIBRAS - LOG
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO    : ZMPC1170
//* PROGRAMA: IKJEFT01
//*---------------------------------------------------------------------
//ZMPCCR01 EXEC PGM=IKJEFT01
//*
//*S1DES109 DD DSN=MXCP.ZM.FIX.REC.ZMUEPR99.DESCA109.LOG,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(200,100),RLSE),
//*            DCB=(RECFM=FB,LRECL=369,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMPCCR01),DISP=SHR
