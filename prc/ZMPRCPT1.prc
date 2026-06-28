//ZMPRCPT1 PROC
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO    : ZMTX0101                                                 *
//* PROGRAMA: ZM4PRT01                                                 *
//* FUNCION : EJECUTA EL PROGRAMA ZM4PRT01 PARA GENERAR UN             *
//*           REPORTE DE LA TABLA                                      *
//**********************************************************************
//ZMCTCPT1 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ096S1 DD  DSN=MXCP.ZM.FIX.REP.INFCTA.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//             DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTCPT1),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
