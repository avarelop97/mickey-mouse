//ZMJFPD30 PROC
//**********************************************************************00191002
//*                     C A S A   D E   B O L S A                      *00192002
//*                     =========================                      *00193002
//*                     <<<   V A L O R E S   >>>                      *00194002
//*                                                                    *00195002
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00196002
//*                                                                    *00197002
//*   PROCEDIM. :  ZMJFPD30.                                           *00198002
//*                                                                    *00199002
//*   OBJETIVO  :  COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       *00199102
//*                (DIRECTO/REPORTO) BATCH                             *00199202
//*                                                                    *00199302
//*   CORRE ANTES DE  :                                                *00199402
//*                                                                    *00199502
//*   CORRE DESPUES DE:                                                *00199602
//*                                                                    *00199702
//*   PERIODICIDAD    :  DIARIO                                        *00199802
//*                                                                    *00199902
//*   ELABORADO POR   :  INDRA                                         *00200002
//*                                                                    *00201002
//*   FECHA           :  AGOSTO 2012.                                  *00202002
//*                                                                    *00203002
//*   MODIFICA FECHA  :                                                *00204002
//*                                                                    *00205002
//**********************************************************************00206002
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM4DJB21                                                * 00208002
//* FUNCION:      COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       * 00199102
//*               (DIRECTO/REPORTO) BATCH   *** ASSET ***             * 00199202
//*-------------------------------------------------------------------* 00209102
//ZMPD3010 EXEC PGM=IKJEFT01
//ZMHFISAL DD DSN=MXC&AMB..ZM.FIX.EBCM.COMPMDDB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=131,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF30T10),DISP=SHR
//**********************************************************************
//* PASO     : ZMPD3005                                                *
//* OBJETIVO : ENVIO A CONTROL-D. COMPROBANTES DE INVERSION TODOS LOS  *
//*            DEL DIA                                                 *
//* PROGRAMA : ICEGENER                                                *
//**********************************************************************
//ZMPD3005 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.EBCM.COMPMDDB,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*                                                                     00340006
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM4DJB39                                                * 00208002
//* FUNCION:      COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       * 00199102
//*               (DIRECTO/REPORTO) BATCH   *** PRECIOS ***           * 00199202
//*-------------------------------------------------------------------* 00209102
//ZMPD3004 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHF2SAL DD DSN=MXC&AMB..ZM.FIX.EBCM.COMPMDDB.PRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=131,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF30T04),DISP=SHR
//**********************************************************************
//* PASO     : ZMPD3003                                                *
//* OBJETIVO : ENVIO A CONTROL-D. COMPROBANTES DE INVERSION TODOS LOS  *
//*            DEL DIA                                                 *
//* PROGRAMA : ICEGENER                                                *
//**********************************************************************
//ZMPD3003 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.EBCM.COMPMDDB.PRE,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*                                                                     00340006
//*------------------------------- FIN -------------------------------* 00209102
