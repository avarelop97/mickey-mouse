//ZMPCFI01 PROC                                                         00010003
//**********************************************************************
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : SEMANAL                                                 *
//*                                                                    *
//* OBJETIVO : GENERA EL ARCHIVO DE PRODUCTO 10 DE TODAS AQUELLAS      *
//*            CUENTAS QUE SE MODIFICO EL CR DESTINO Y CR ORIGEN       *
//* REALIZO  : SWF-BBVA ACCENTURE (XM09403)                            *
//*                                                                    *
//* FECHA    : 11 OCTUBRE 2010                                         *00000707
//**********************************************************************
//*          L O G    D E   M O D I F I C A C I O N E S                *
//**********************************************************************
//* AUTOR    FECHA   DESCRIPCION                                       *
//*-------   ------- --------------------------------------------------*
//*XM09403   27-10-10 SE CAMBIA ARCHIVO DE SALIDA EN EL PASO PFI01P01  *
//**********************************************************************
//* PROGRAMA: IKJEFT1A                                                 *
//* PASO    : PFI01P02                                                 *
//* OBJETIVO: GENERA EL ARCHIVO PROD. 10 Y 13  DE TODOS AQUELLAS CUENTAS
//*           A LAS QUE SE LES MODIFICO EL CR DESTINO Y CR OPERANTE DE *
//*           FIDEICOMISO.                                             *
//**********************************************************************
//PFI01P02 EXEC PGM=IKJEFT1A
//*
//ZMFI01A1 DD DSN=MXCP.ZM.FIX.FID.E&EMP..CTAFIC.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*@MEX001-I
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTFI02),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTFI02),DISP=SHR
//*@MEX001-F
//*
//**********************************************************************
//* PROGRAMA    : PFI01P01                                             *
//* PASO        : ICEMAN                                               *
//* DESCRIPCION : SE ORDENA  ARCHIVO DE CONTRATOS DE PRODUCTO 10 Y 13  *
//**********************************************************************
//PFI01P01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FID.E&EMP..CTAFIC.F&FECHA.,
//            DISP=SHR
//*
//*@MEX001-I
//*SORTOUT  DD DSN=MXCP.ZM.FIX.FID.E&EMP..CTAFIC.F&FECHA..SORT,
//SORTOUT  DD DSN=MXCP.ZM.FIX.FID.E&EMP..CTAFIC.CAMBIO.CR,
//*@MEX001-F
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//*@MEX001-I
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCTFI01),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCTFI01),DISP=SHR
//*@MEX001-F
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//**********************************************************************
