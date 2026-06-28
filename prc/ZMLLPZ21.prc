//ZMLLPZ21 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  Z I V A    M U L T I E M P R E S A               *
//*                                                                    *
//* PROCESO        :  ZMLLPZ21   (DISPARADOR)                          *
//*                                                                    *
//* OBJETIVO       :  EJECUTA REPORTE EMISORAS SIN PRECIO MDD          *
//*                                                                    *
//* REALIZO        :  J. JAIME FLORES ESTRADA   -  ASATECK  -          *
//*                                                                    *
//* FECHA          :  JUN /2003                                        *
//**********************************************************************
//*                          --  ZM4DSF69  --                          *
//*                                                                    *
//* OBJETIVO :    REPORTE DE EMISORAS SIN PRECIO                       *
//*                >>>>> NO ACTUALIZA TABLAS <<<<<                     *
//*                                                                    *
//**********************************************************************
//PLL21P03 EXEC PGM=IKJEFT01,DYNAMNBR=20
//*
//PI601765  DD DUMMY
//*
//ZMSF69A1 DD DSN=SIVA.MDD.WKF.EMP.SUC.ZMLLPE21,DISP=SHR
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMSF69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMSF69R1 DD DSN=MXCP.ZM.FIX.ZMLLPZ21.REPORTE1,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390
//*
//ZMSF69R1 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL21T01),DISP=SHR
//*
