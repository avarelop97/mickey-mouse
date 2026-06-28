//ZMPFID06 PROC                                                         00010002
//**********************************************************************00020002
//* SISTEMA        :  SIVA.                                            *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMPFID06                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  GENERA ARCHIVO DE CUENTAS PROD 21, 10, 13        *00090002
//*                                                                    *00100002
//* REALIZACION    :  GETRONICS (MBE)                  11/MAY/2016     *00160002
//*                                                                    *00190002
//**********************************************************************
//* PASO    : FID06P01                                                 *
//* PROGRAMA: ZM4CFID6                                                 *
//* OBJETIVO: GENERAR ARCHIVO CUENTA DADAS DE BAJA PROD 21, 10 , 13    *
//**********************************************************************
//FID06P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//S1DQFIDA DD DSN=MXCP.ZM.FIX.MBE.ZM4CFID6,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,LRECL=30,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMFID606),DISP=SHR
//*@DGCM01-I
//**********************************************************************
//* PASO    : FID06P02                                                 *
//* PROGRAMA: ZM4CWT01                                                 *
//* OBJETIVO: GENERAR ARCHIVO CON CUENTAS DADAS DE ALTA O BAJA AL DIA. *
//**********************************************************************
//FID06P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SALIDA01 DD DSN=MXCP.ZM.FIX.BTRADER.ZM4CWT01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,LRECL=11,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMFID605),DISP=SHR
//*@DGCM01-F
//*
