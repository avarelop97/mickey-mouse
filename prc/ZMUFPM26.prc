//ZMUFPM26 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM RENDIMIENTOS DE INGRESOS SIVA                    *
//* PROCESO      : ZMUFPM22                                            *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : BACK UP DEL MES DE DICIEMBRE DEL A ñO ANTERIOR PARA *
//*                REPORTES GESTI óN.                                  *
//* REALIZO      : HILDEBRANDO(XM010DG).                               *
//* FECHA        : NOVIEMBRE 2009.                                     *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MV120                     *
//*--------------------------------------------------------------------*
//PUF26180 EXEC PGM=ZM3CTC01,PARM=('P,MXP1,ZM4MU120,01')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M26.ZM4MU120,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//**********************************************************************
//* PGM/UTIL: ZM4MU120 / IKJEFT01                                      *
//* OBJETIVO: CARGA DEL MES DE DICIEMBRE DEL ANNIO ANTERIOR EN LA TABLA
//*           ZMDT768.
//**********************************************************************
//ZMP00180 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M26.ZM4MU120,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*                      FIN ZMUFPM26                                  *
//*--------------------------------------------------------------------*
