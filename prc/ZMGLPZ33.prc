//ZMGLPZ33 PROC
//**********************************************************************
//*  SISTEMA    : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *
//*  PROCESO    : ZMGLPZ33                                             *
//*  OBJETIVO   : GENERA ACTUALIZACION DE MONTO DE INVERSION ZMDT630   *
//*  FECHA      : ENERO 2018                                           *
//**********************************************************************
//**********************************************************************
//* PASO    : PGL43P01                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: ACTUALIZACION DE MONTOS EN LA TABLA ZMDT630              *
//**********************************************************************
//PGL33P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//E2CUENTA DD DSN=MXCP.ZM.FIX.PLD7.ACT.MONT,
//            DISP=SHR
//ARCHRESU DD DSN=MXCP.ZM.FIX.REPORTE.RESULT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,1),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=130,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL33T01),DISP=SHR
//*
//*
