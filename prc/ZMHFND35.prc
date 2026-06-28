//ZMHFND35 PROC
//**********************************************************************
//**********************************************************************
//* APLICACION  : MUV                                                  *
//* PROCESO     : ZMHFND35                                             *
//* OBJETIVO    : GENERA ARCHIVO DE CARTAS AUTORIZADAS PARA ENVIO A UG *
//*PERIODICIDAD : DIARIO.
//* REALIZO     : HITSS                                                *
//* FECHA       : MAYO 2017                                            *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-03  CDRXXX  DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *
//* -----------  ------- ------- ------------------------------------- *
//* TDC-         XMY4145 300818  SE INCLUYE CARGA DE TDC               *
//**** *****************************************************************
//*
//**********************************************************************
//* PASO        : PHF35P03                                             *
//* PROGRAMA    : ZM3DG001.                                            *
//* OBJETIVO    : DEFINITIVO.                                          *
//* REINICIO DESDE ESTE PASO.                                          *
//**********************************************************************
//PHF35P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.VAL.E&EMP..S&SUC..ZMHFPD35,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*TDC-I
//**********************************************************************
//* PASO        : PHF35P02                                             *
//* PROGRAMA    : ICEMAN                                               *
//* OBJETIVO    : UNE LOS ARCHIVOS DE PRESTAMOS Y TDC                  *
//**********************************************************************
//PHF35P02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MBV&AMB..AJ.FIX.EBCM.UGRECIBO.F&FECHA..INTZPAGO,
//            DISP=SHR
//         DD DSN=MBV&AMB..AJ.FIX.F&FECHA..PATRIMO.MATCHPR4,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..PATRIMO.UGTDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=124,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUG35T02),DISP=SHR
//*TDC-F
//*
//**********************************************************************
//* PASO        : PHF35P01                                             *
//* PROGRAMA    : IKJEFT01                                             *
//* OBJETIVO    : CARGA ARCHIVO DE UG DE RECIBOS EXIGIBLES             *
//* REINICIO DESDE ESTE PASO.                                          *
//*
//**********************************************************************
//PHF35P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*TDC-I
//*ZMREUG01 DD DSN=MBV&AMB..AJ.FIX.EBCM.UGRECIBO.F&FECHA..INTZPAGO,
//ZMREUG01 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..PATRIMO.UGTDC,
//*TDC-F
//            DISP=SHR
//*
//ZOJU01R1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD35.BITACORA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUG35T01),DISP=SHR
//*
