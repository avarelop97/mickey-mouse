//ZMSFPE03 PROC                                                         00010006
//*
//**********************************************************************00010006
//*        BORRADO DE ARCHIVOS                                         *00010006
//**********************************************************************00010006
//PSF03T02  EXEC PGM=IDCAMS
//SYSOUT    DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZSFS3T01),DISP=SHR
//*
//**********************************************************************
//*        DEFINICION DE ARCHIVOS GDGS
//**********************************************************************
//PSF03T01  EXEC PGM=IDCAMS,COND=(4,LT)
//SYSOUT    DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZSFS3T02),DISP=SHR
//*
