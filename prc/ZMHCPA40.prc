//ZMHCPA40 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM REPORTES REGULATORIOS ORDENES Y ASIGNACIONES.    *
//* PROCESO      : ZMHCPA40                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : GENERAR EL REPORTE REGULATORIO                      *
//*                E-0304 ASIGNACIONES.                                *
//* REALIZO      : XM09840.                                            *
//* FECHA        : 28 DE ENERO DE 2020.                                *
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
//* PASO    : PHC40P01                                                 *
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS.
//* PROGRAMA: ZM3DG001
//**********************************************************************
//PHC40P01 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMHCPA40,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//* PASO     : PHC40P02                                                *
//* OBJETIVO : GENERA ARCHIVO DE OPERACIONES POR FECHA DE LIQUIDACION. *
//* PROGRAMA : ZM4DHT85                                                *
//**********************************************************************
//PHC40P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62029 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMCO02A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMHCPA40,DISP=SHR
//ZMDCO30B DD DSN=MXCP.ZM.FIX.REPOPER.REGUL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=375,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC40T10),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC40P03                                                *
//* OBJETIVO : GENERA ARCHIVOS DE OPERACIONES POR FEC. LIQ. CON DATOS  *
//*            DEL CLIENTE.                                            *
//* PROGRAMA : ZM4DHT86                                                *
//**********************************************************************
//PHC40P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO62028 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZENTRADA DD DSN=MXCP.ZM.FIX.REPOPER.REGUL.F&FECHA,DISP=SHR
//REPORDEN DD DSN=MXCP.ZM.FIX.REGOPE.EBCM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1620,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC40T11),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC40P05                                                *
//* OBJETIVO : ORDENA ARCHIVO DE OPERACIONES ASIGNACIONES              *
//* UTILERIA : ICEMAN                                                  *
//**********************************************************************
//PHC40P05 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601766 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REGOPE.EBCM.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REGOPE.EBCM.F&FECHA..SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC40T13),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC40P06                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON EL CATALOGO DE      *
//*            LOCALIDADES.
//* PROGRAMA : ZM3DHT87                                                *
//**********************************************************************
//PHC40P06 EXEC PGM=ZM3DHT87,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.GDGD.LOCALD.CATAL(0),
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.REGOPE.EBCM.F&FECHA..SORT,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.EBCM.F&FECHA,
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
//* PASO     : PHC40P09                                                *
//* OBJETIVO : ORDENA ARCHIVO DE OPERACIONES POR NUMERO DE CUENTA.     *
//* UTILERIA : ICEMAN                                                  *
//**********************************************************************
//PHC40P09 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601767 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.RASIG.EBCM.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RASIG.EBCM.F&FECHA..SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC40T16),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC40P10                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE TITULARES CON ARCHIVO DE OPERACIONES*
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC40P10 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.TITPER.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.EBCM.F&FECHA..SORT,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.TITLR1.F&FECHA,
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
//* PASO     : PHC40P11                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON ARCHIVO DE          *
//*            COTITULARES 1.                                          *
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC40P11 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.COT1.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.TITLR1.F&FECHA,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.CCOT1.F&FECHA,
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
//* PASO     : PHC40P12                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON ARCHIVO DE          *
//*            COTITULARES 2.                                          *
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC40P12 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.COT2.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.CCOT1.F&FECHA,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.CCOT2.F&FECHA,
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
//* PASO     : PHC40P13                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON ARCHIVO DE          *
//*            COTITULARES 3.                                          *
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC40P13 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.COT3.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.CCOT2.F&FECHA,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.CCOT3.F&FECHA,
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
//* PASO     : PHC40P14                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON ARCHIVO DE          *
//*            COTITULARES 4.                                          *
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC40P14 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.COT4.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.CCOT3.F&FECHA,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.CCOT4.F&FECHA,
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
//* PASO     : PHC40P15                                                *
//* OBJETIVO : MATCH DE ARCHIVO DE OPERACIONES CON ARCHIVO DE          *
//*            COTITULARES 5.                                          *
//* PROGRAMA : ZM3DHT88                                                *
//**********************************************************************
//PHC40P15 EXEC PGM=ZM3DHT88,COND=(4,LT)
//*
//ZMRRA1E1 DD DSN=MXCP.ZM.FIX.COT5.F&FECHA,
//            DISP=SHR
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.CCOT4.F&FECHA,
//            DISP=SHR
//*
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.RASIG.MATCH.F&FECHA,
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
//* PASO     : PHC40P16                                                *
//* OBJETIVO : FORMATO DE ARCHIVO FINAL OPERACIONES POR FECHA LIQ.     *
//* PROGRAMA : ZM3DHT89                                                *
//**********************************************************************
//PHC40P16 EXEC PGM=ZM3DHT89,COND=(4,LT)
//*
//ZMRRA1E2 DD DSN=MXCP.ZM.FIX.RASIG.MATCH.F&FECHA,
//            DISP=SHR
//ZMRRA1S1 DD DSN=MXCP.ZM.FIX.EBCM.RASIG.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=1667,BLKSIZE=0,DSORG=PS)
//ZMRRA1S2 DD DSN=MXCP.ZM.FIX.EBCM.RINCD.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=120,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*@DF-I
//*--------------------------------------------------------------------*
//* PASO       : PHC40P17.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA LIBERAR A ALTAMIRA               *
//*--------------------------------------------------------------------*
//PHC40P17 EXEC PGM=IOACND,PARM='ADD COND BCHCND40_OK &FEC',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*@DF-F
