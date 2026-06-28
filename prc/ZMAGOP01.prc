//ZMAGOP01 PROC
//**********************************************************************
//*GOP01P13 EXEC PGM=ZM4CIVAX
//**********************************************************************
//GOP01P01 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(AGPOPE01),DISP=SHR
//*
//**********************************************************************
