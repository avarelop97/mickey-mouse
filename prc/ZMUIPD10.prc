//ZMUIPD10 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA DE BOLSA.                                 *
//* PROCESO      : ZMUIPD10.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : DESCARGA DE TABLAS CCOSTO-SUCURSA EL ICCOSTO (CR)   *
//* REALIZO      : HILDEBRANDO                                         *
//* FECHA        : JULIO 2023                                          *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE TABLAS                                      *
//**********************************************************************
//ZM05PD80 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMUIPD10,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.RRHHMUV.ICCOSTO,
//            SPACE=(CYL,(10,05),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZM05PD85),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3UGVAC                                                 *
//* OBJETIVO: LEE ARCHIVO DE ENTRADA Y GENERA ARCHIVO A 4 POSICIONES   *
//**********************************************************************
//ZM05PD75 EXEC PGM=ZM3UGVAC,COND=(0,NE)
//*
//ZMHU05A1 DD DSN=MXCP.ZM.FIX.RRHHMUV.ICCOSTO,DISP=SHR
//*
//ZMHU05A2 DD DSN=MXCP.ZM.FIX.RRHHMUV.CRMUVRH.MUV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUIPD10                        *
//*--------------------------------------------------------------------*
//*
