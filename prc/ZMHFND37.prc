//ZMHFND37 PROC
//**********************************************************************
//**********************************************************************
//* APLICACION  : MUV                                                  *
//* PROCESO     : ZMHFND37                                             *
//* OBJETIVO    : GENERA REPORTE INFORMACION DE CREDITOS CON CARTA A/D *
//*PERIODICIDAD : DIARIO.
//* REALIZO     : HITSS                                                *
//* FECHA       : AGOSTO 2017                                          *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  CDRXXX  DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *
//* FS-1.0.0-01  XM020MQ 24ABR18 SE AGREGAN PASOS PARA REPORTE         *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//* PASO        : PHF37P02                                             *
//* PROGRAMA    : ZM3DG001.                                            *
//* OBJETIVO    : DEFINITIVO.                                          *
//* REINICIO DESDE ESTE PASO.                                          *
//**********************************************************************
//PHF37P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.VAL.E&EMP..S&SUC..ZMHFND37,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//**********************************************************************
//* PASO        : PHF37PA2                                             *
//* PROGRAMA    : IKJEFT01                                             *
//* OBJETIVO    : ELIMINA DUPLICADOS EN CARTAS ACTIVAS                 *
//* REINICIO DESDE ESTE PASO.                                          *
//*
//**********************************************************************
//PHF37PA2 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZOJU02E2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..CREDMUV,
//            DISP=SHR
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF37TA2),DISP=SHR
//**********************************************************************
//* PASO        : PHF37PB2                                             *
//* PROGRAMA    : IKJEFT01                                             *
//* OBJETIVO    : RESPALDA REGISTROS ZMDT303 DEL DIA                   *
//* REINICIO DESDE ESTE PASO.                                          *
//*
//**********************************************************************
//PHF37PB2 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMOJU4S1 DD DSN=MXC&AMB..ZM.FIX.EBCM.S000.ZZMDT303.DESCARGA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=227,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF37TB2),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHF37P01                                             *
//* PROGRAMA    : IKJEFT01                                             *
//* OBJETIVO    : GENERA REPORTE DE CAMBIOS EN CARTAS DE AUTORIZACION  *
//* REINICIO DESDE ESTE PASO.                                          *
//*
//**********************************************************************
//PHF37P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMREUG02 DD DSN=MBV&AMB..AJ.FIX.F&FECHA..UGJEINT2.INT2PAGO,
//            DISP=SHR
//*
//ZOJU02A1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFND37.BITACORA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*
//ZOJU02S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFND37.REPUGMUV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=236,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF37T01),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHF37PA1                                             *
//* PROGRAMA    : IKJEFT01                                             *
//* OBJETIVO    : INSERTA ARCHIVO EN LA TABLA ZMDT303                  *
//* REINICIO DESDE ESTE PASO.                                          *
//*
//**********************************************************************
//PHF37PA1 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRAD01 DD DSN=MXC&AMB..ZM.FIX.EBCM.S000.ZZMDT303.DESCARGA,
//            DISP=SHR
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF37TA1),DISP=SHR
//*
//*FS-1.0.0-01-I
//**********************************************************************
//* PASO        : PHF37P0A                                             *
//* PROGRAMA    : IKJEFT01/ZM4OJU03                                    *
//* OBJETIVO    : GENERA REPORTE DE RECIBO PAGADOS Y NO PAGADOS        *
//**********************************************************************
//PHF37P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SALIDA01 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD37.RECIPAG1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=332,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//*
//SALIDA02 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD37.RECINCID,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=094,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHF37P0A),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHF37P0B                                             *
//* PROGRAMA    : ICEMAN                                               *
//* OBJETIVO    : ORDENA ARCHIVO DE RECIBOS POR CONTRATO               *
//**********************************************************************
//PHF37P0B EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD37.RECIPAG1,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD37.REPENTR1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=332,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PHF37P0B),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHF37P0C                                             *
//* PROGRAMA    : ICEMAN                                               *
//* OBJETIVO    : CAMBIA DIGITO VERIFICADOR POR 00                     *
//**********************************************************************
//PHF37P0C EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MBV&AMB..AJ.FIX.F&FECHA..UGJEINT2.INT2PAGO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD37.REPENTO2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PHF37P0C),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHF37P0C                                             *
//* PROGRAMA    : ICEMAN                                               *
//* OBJETIVO    : ORDENA ARCHIVO DE SUB PRODUCTO POR CONTRATO          *
//**********************************************************************
//PHF37P0D EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD37.REPENTO2,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD37.REPENTR2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PHF37P0B),DISP=SHR
//*
//**********************************************************************
//* PASO        : PHF37P0D                                             *
//* PROGRAMA    : ZM3OJU03.                                            *
//* OBJETIVO    : MATCH ENTRE ARCHIVO DE REPORTE DE RECIBO Y SUB       *
//*               PRODUCTO, GENERANDO REPORTE                          *
//**********************************************************************
//PHF37P0E EXEC PGM=ZM3OJU03,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMPOJUE1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD37.REPENTR1,
//            DISP=SHR
//*
//ZMPOJUE2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD37.REPENTR2,
//            DISP=SHR
//*
//ZMPOJUS1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHFPD37.REPSUBPR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=332,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE)
//*
//*FS-1.0.0-01-F
