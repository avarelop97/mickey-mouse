//ZMLLPD22 PROC
//**********************************************************************
//* PROCESO        : ZMLLPD22                                          *
//* DESCRIPCION    : PREPARACION DE REGISTROS PARA AMORTIZACION        *
//*                  ANTICPADA                                         *
//* REALIZO        : CAPGEMINI                                         *
//* FECHA          : MARZO 2012                                        *
//**********************************************************************
//* PASO     : PLL22P50                                                *
//* OBJETIVO : RECIBE LOS PARAMETROS Y LOS CARGA EN ARCHIVO PARA       *
//*            SIGUIENTES PASOS                                        *
//* PROGRAMA : ZM3DG001                                                *
//**********************************************************************
//PLL22P50 EXEC PGM=ZM3DG001,PARM=('&EMP','  ','  ','  ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLLPD22,
//          DISP=(NEW,CATLG,DELETE),
//          SPACE=(CYL,(2,1),RLSE),
//          DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//          UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//**********************************************************************
//* PASO     : PLL22P40                                                *
//* OBJETIVO : PREPARA REGISTROS PARA VENTA ANTICIPADA DE NOTA ESTRUC. *
//* PROGRAMA : ZM4OLL39                                                *
//**********************************************************************
//PLL22P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL22T40),DISP=SHR
