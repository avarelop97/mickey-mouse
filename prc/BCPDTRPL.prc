//BCPDTRPL PROC
//**                                                                   *
//*--------------------------------------------------------------------*
//* AUTOR : HECTOR CAMACHO GONZALEZ (ACCENTURE)                        *
//*--------------------------------------------------------------------*
//*
//BCRPT110 EXEC PGM=IKJEFT01
//*
//BC20FME1 DD DSN=MXC&AMB..ZM.FIX.BC.PLDMUVD.F&FECHA,DISP=SHR
//*
//BC20FMS1 DD DSN=MXC&AMB..ZM.FIX.BC.PLDZMDIA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=524,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(BCCDTRPL),DISP=SHR
//*
