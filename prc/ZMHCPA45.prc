//ZMHCPA45 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM REPORTES REGULATORIOS ORDENES Y ASIGNACIONES.    *
//* PROCESO      : ZMHCPA45                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : GENERAR EL REPORTE REGULATORIO                      *
//*                E-0304 ASIGNACIONES.                                *
//* REALIZO      : XMY2883.                                            *
//* FECHA        : 23 DE MAYO DE 2022.                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* PASO    : PHC45P05                                                 *
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS.
//* PROGRAMA: ZM3DG001
//**********************************************************************
//PHC45P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMHCPA45,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//* PASO     : PHC45P10                                                *
//* OBJETIVO : GENERA ARCHIVO DE OPERACIONES POR FECHA DE LIQUIDACION. *
//* PROGRAMA : ZM4DHT88                                                *
//**********************************************************************
//PHC45P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62029 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMHCPA45,DISP=SHR
//ZMDCO30B DD DSN=MXCP.ZM.FIX.REPOPER.REGUL1.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=375,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC45T10),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC45P15                                                *
//* OBJETIVO : GENERA ARCHIVO DE OPERACIONES POR FECHA DE LIQUIDACION. *
//* PROGRAMA : ZM4DHT89 (POSISION PROPIA)                              *
//**********************************************************************
//PHC45P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62029 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMHCPA45,DISP=SHR
//ZMDCO30B DD DSN=MXCP.ZM.FIX.REPOPER.REGUL2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=375,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC45T11),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC45P20                                                *
//* OBJETIVO : UNION DE LOS ARCHIVOS DE ASIGNACIONES:                  *
//*                                         BANCA Y POSICION PROPIA.   *
//* PROGRAMA : ICEMAN                                                  *
//**********************************************************************
//PHC45P05 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601766 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REPOPER.REGUL1.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REPOPER.REGUL2.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPOPER.REGULN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC45T12),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC45P25                                                *
//* OBJETIVO : GENERA ARCHIVOS DE OPERACIONES POR FEC. LIQ. CON DATOS  *
//*            DEL CLIENTE.                                            *
//* PROGRAMA : ZM4DHT86                                                *
//**********************************************************************
//PHC45P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62028 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZENTRADA DD DSN=MXCP.ZM.FIX.REPOPER.REGULN.F&FECHA,DISP=SHR
//REPORDEN DD DSN=MXCP.ZM.FIX.REGOPE.EBCMN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1620,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC40T11),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC45P30                                                *
//* OBJETIVO : ORDENA ARCHIVO DE OPERACIONES ASIGNACIONES              *
//* UTILERIA : ICEMAN                                                  *
//**********************************************************************
//PHC45P30 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601766 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REGOPE.EBCMN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REGOPE.EBCMN.F&FECHA..SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC40T13),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC45P35                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON EL CATALOGO DE      *
//*            LOCALIDADES.
//* PROGRAMA : ZM3DHT87                                                *
//**********************************************************************
//PHC45P35 EXEC PGM=ZM3DHT87,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.GDGD.LOCALD.CATAL(0),
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.REGOPE.EBCMN.F&FECHA..SORT,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.EBCMN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=1620,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO     : PHC45P40                                                *
//* OBJETIVO : ORDENA ARCHIVO DE OPERACIONES POR NUMERO DE CUENTA.     *
//* UTILERIA : ICEMAN                                                  *
//**********************************************************************
//PHC45P40 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601767 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.RASIG.EBCMN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RASIG.EBCMN.F&FECHA..SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC40T16),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC45P45                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE TITULARES CON ARCHIVO DE OPERACIONES*
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC45P45 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.TITPER.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.EBCMN.F&FECHA..SORT,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.TITLR1N.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=1620,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO     : PHC45P50                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON ARCHIVO DE          *
//*            COTITULARES 1.                                          *
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC45P50 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.COT1.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.TITLR1N.F&FECHA,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.CCOT1N.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=1620,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO     : PHC45P55                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON ARCHIVO DE          *
//*            COTITULARES 2.                                          *
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC45P55 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.COT2.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.CCOT1N.F&FECHA,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.CCOT2N.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=1620,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO     : PHC45P60                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON ARCHIVO DE          *
//*            COTITULARES 3.                                          *
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC45P60 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.COT3.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.CCOT2N.F&FECHA,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.CCOT3N.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=1620,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO     : PHC45P65                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON ARCHIVO DE          *
//*            COTITULARES 4.                                          *
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC45P65 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.COT4.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.CCOT3N.F&FECHA,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.CCOT4N.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=1620,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO     : PHC45P70                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON ARCHIVO DE          *
//*            COTITULARES 5.                                          *
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC45P70 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.COT5.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.CCOT4N.F&FECHA,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.MATCHN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=1620,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO     : PHC45P75                                                *
//* OBJETIVO : FORMATO DE ARCHIVO FINAL OPERACIONES POR FECHA LIQ.     *
//* PROGRAMA : ZM3DHT89                                                *
//**********************************************************************
//PHC45P75 EXEC PGM=ZM3DHT89,COND=(4,LT)
//*
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.MATCHN.F&FECHA,
//            DISP=SHR
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.EBCM.RASIGN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=1667,BLKSIZE=0,DSORG=PS)
//ZMRRA1S2 DD DSN=MXCP.ZM.FIX.EBCM.RINCDN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=120,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO     : PHC45P80                                                *
//* OBJETIVO : GENERA ARCHIVO DE ASIGNACIONES CASA DE BOLSA            *
//* PROGRAMA : ZM4VER10                                                *
//**********************************************************************
//PHC45P80 EXEC PGM=ZM4VER10,COND=(4,LT)
//*
//ZMASIGE1 DD DSN=MXCP.ZM.FIX.REPSITI.ASIGNACD.F&FECHA,DISP=SHR
//REPASIGN DD DSN=MXCP.ZM.FIX.EBCM.RASIGC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=207,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
