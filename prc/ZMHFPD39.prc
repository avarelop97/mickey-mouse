//ZMHFPD39 PROC
//*
//**********************************************************************
//*                          === ZM4CU921 ===                          *
//**********************************************************************
//PHF39P01 EXEC PGM=IKJEFT01
//ZMJ917A1 DD DSN=MXCP.ZM.FIX.INTFAZ.ZM4CU921.CONTABL1,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),UNIT=3390
//ZMJ917A2 DD DSN=MXCP.ZM.FIX.INTFAZ.ZM4CU921.CONTABL2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),UNIT=3390
//ZMJ917A3 DD DSN=MXCP.ZM.FIX.INTFAZ.ZM4CU921.CONTABL3,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF39T04),DISP=SHR
//*
//****************************************************************
//* PROGRAMA: ZM4DU691                                           *
//* OBJETIVO: GENERA  ARCHIVO DE DESCARGA DE LA TABLA ñZMDT930   *
//*                                                              *
//****************************************************************
//*PHF39P02 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*S1DES691 DD DSN=MXCP.ZM.FIX.ZM4DU691.DESCA691,
//*            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//*            SPACE=(CYL,(500,200),RLSE),
//*            DCB=(RECFM=FB,LRECL=1019,BLKSIZE=0,DSORG=PS)
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T48),DISP=SHR
//*
//****************************************************************
//* PROGRAMA: ZM4DU693
//* OBJETIVO: GENERA ARCHIVO  DE DESCARGA DE LA TABLA ñZMDT933
//*
//****************************************************************
//*PHF39P03 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*S1DES693 DD DSN=MXCP.ZM.FIX.ZM4DU693.DESCA693,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(500,200),RLSE),
//*            DCB=(RECFM=FB,LRECL=272,BLKSIZE=0,DSORG=PS)
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T49),DISP=SHR
//*
//****************************************************************
//*                TERMINA ZMHFPD39
//****************************************************************
