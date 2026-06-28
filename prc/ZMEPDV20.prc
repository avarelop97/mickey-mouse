//ZMEPDV20  PROC
//*--------------------------------------------------------------------*
//*                          PROCESO ZMEPDV20                          *
//*                          ================                          *
//*                                                                    *
//*REALIZO   : FSW-EVERIS                                              *
//*FECHA     : JULIO 2017                                              *
//*DETALLE   : GENERACION DE REPORTE RAZONABILIDAD SUITABILITY         *
//*--------------------------------------------------------------------*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     :  PHC00002                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA EL SORT DEL ARCHIVO DE ENTRADA POR CONTRATO    *
//*--------------------------------------------------------------------*
//PHC00001 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.F&FECHA..CTOSINST.PDVF2,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..CTOSINST.PDVF2.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=50,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPDV2003),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     :  PHC00001                                               *
//* PROGRAMA :  IKJEFT01 / ZM4PDV20                                    *
//* OBJETIVO :  REALIZA EL REPORTE DE RAZONABILIDAD SUITABILITY        *
//*--------------------------------------------------------------------*
//PHC00002 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..CTOSINST.PDVF2.ORD,
//            DISP=SHR
//*
//SALIDA1  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MUV.DETRAZB,
//            DISP=(NEW,CATLG,DELETE),
//*JUGJ
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=161,BLKSIZE=0),
//*JUGJ
//            UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPDV2001),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     :  PHC00002                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  REALIZA EL SORT POR CLIENTE, EMISORA Y TIPO DE MERCADO *
//*--------------------------------------------------------------------*
//PHC00003 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MUV.DETRAZB,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MUV.DETRAZB.PDVRZB,
//            DISP=(NEW,CATLG,DELETE),
//*JUGJ
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=151,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=160,BLKSIZE=0),
//*JUGJ
//            UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPDV2002),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                 FIN DEL PROCESO ZMEPDV20                           *
//*--------------------------------------------------------------------*
