//ZMLFPD46 PROC
//*
//**********************************************************************
//*    CASA DE BOLSA PROBURSA  -  BILBAO VIZCAYA                       *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        : CBLFND46.                                         *
//*
//* OBJETIVO: GENERA ARCHIVOS CON POSICIONES EN FIRMA Y VENCIMIENTO.   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       : CBGFND47
//*                                                                    *
//* CORRE
//* DESPUES DE     : CBLFND45
//*                                                                    *
//* REALIZO        :  ASATECK S.A. DE C.V. (JLGO).                     *
//*                                                                    *
//* FECHA          :  OCTUBRE 2002.                                    *
//**********************************************************************
//*
//**********************************************************************
//*           ARCHIVO DE PARAMETROS                                    *
//**********************************************************************
//PLF46P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD46,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//**********************************************************************
//* PROGRAMA: ZM4DLD92                                            *
//* OBJETIVO: GENERACION DE ARCHIVO DE PRESTVAL-CONCILIACIONES    *
//*           EVENTOS CORP  TITULOS & CASH (BATCH)
//*****************************************************************
//PLF46P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD92A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLD92,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=350,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF46T05),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: SORT DE ARCHIVO DE CONCILIACIONES BATCH                  *
//**********************************************************************
//PLF46P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLD92,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLD92.ECT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=350,BLKSIZE=0),
//            UNIT=3390
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF46T04),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: SORT DE ARCHIVO DE CONCILIACIONES BATCH             *
//*****************************************************************
//PLF46P03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLD92,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDD.E&EMP..ZM4DLD92.ECC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=350,BLKSIZE=0),
//            UNIT=3390
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF46T03),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DLN81 ===                          *
//*    OBJETIVO :   ARCHIVO CON POSICIONES EN FIRME CON FECHA DE       *
//*                 VENCIMIENTO.                                       *
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//PLF46P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//ZMLN81P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD46,
//         DISP=SHR
//*
//ZMLN81A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..MOV.VENCIM.CB,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//             UNIT=3390,
//             SPACE=(CYL,(6,3),RLSE)
//*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF46T01),DISP=SHR
//**********************************************************************
//*                          === ZM4DLN80 ===                          *
//*    OBJETIVO :   ARCHIVO CON POSICIONES EN FIRME.
//*
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//PLF46P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//ZMLN80P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLFPD46,
//         DISP=SHR
//*
//ZMLN80A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..MOV.FIRME.CB,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(DSORG=PS,RECFM=FBA,LRECL=123,BLKSIZE=0),
//             UNIT=3390,
//             SPACE=(CYL,(6,3),RLSE)
//*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF46T02),DISP=SHR
//**********************************************************************
//*                 FIN DEL PROCESO ZMLFND46                           *
//**********************************************************************
