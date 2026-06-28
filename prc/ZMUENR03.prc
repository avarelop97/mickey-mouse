//ZMUENR03 PROC
//*
//*--------------------------------------------------------------------*
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUENR03                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE ESTADOS DE CUENTA DE LA EMPRESA CBP   *
//*                SE OBTIENE EL DIFERENCIAL                           *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   AUTOR: FSW INDRA.                                                *
//*                                                                    *
//*   JULIO 2015                                                       *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* MODIFICO:       ENRIQUE FERNANDEZ CHAPOU                           *
//* FECHA:          MAYO 2023                                          *
//* ASUNTO:         INCREMENTO FOLIO CONCEPT                           *
//* MARCA:          SDATOOL-41254-EFCH-INI                             *
//*                 SDATOOL-41254-EFCH-FIN                             *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*                           -- ZM4MU183 --                           *
//* LEE ARCHIVO CON INFORMACION DE EDVALCA Y SEPARA LA INFORMACION EN  *
//* REGISTROS DEL CIERRE DEL MES ANTERIOR Y REGISTROS DEL CIERRE DEL   *
//* MES ACTUAL.                                                        *
//*--------------------------------------------------------------------*
//*
//PUR03P95 EXEC PGM=IKJEFT01
//*
//ZMR395E1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.DESC(0),DISP=SHR
//*
//ZMR395S1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=171,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//ZMR395S2 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=171,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P95),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           --- ICEMAN ---                           *
//* UNIFICA LOS REGISTROS QUE SEAN IGUALES POR EMPRESA, CUENTA,        *
//* EMISORA, SERIE, CUPON. SE SUMA LA VALUACION PARA DEJAR UN SOLO     *
//* REGISTRO POR LOS QUE OPERAN EN EL MES, PERO NO LIQUIDAN EN EL MES. *
//* INFORMACION DEL MES ANTERIOR.                                      *
//*--------------------------------------------------------------------*
//*
//PUR03P90 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN1SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=171,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03P90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           --- ICEMAN ---                           *
//* UNIFICA LOS REGISTROS QUE SEAN IGUALES POR EMPRESA, CUENTA,        *
//* EMISORA, SERIE, CUPON. SE SUMA LA VALUACION PARA DEJAR UN SOLO     *
//* REGISTRO POR LOS QUE OPERAN EN EL MES, PERO NO LIQUIDAN EN EL MES. *
//* INFORMACION DEL MES ACTUAL.                                        *
//*--------------------------------------------------------------------*
//*
//PUR03P85 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN2SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=171,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03P85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           --- ICEMAN ---                           *
//* UNIFICA LOS REGISTROS QUE SEAN IGUALES POR EMPRESA, CUENTA,        *
//* EMISORA, SERIE, CUPON.                                             *
//*--------------------------------------------------------------------*
//*
//PUR03P80 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN1SOR,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN2SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MENSORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=171,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03P80),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           --- ICEMAN ---                           *
//* ORDENA ARCHIVO CON INFORMACION DEL MES ACTUAL. SE ORDENA POR       *
//* EMPRESA, CUENTA, CONCEPT Y FECHA DE PROCESO.                       *
//*--------------------------------------------------------------------*
//*
//PUR03P75 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN2SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN2SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=171,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03P75),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           --- ICEMAN ---                           *
//* ORDENA ARCHIVO CON INFORMACION DEL MATCH.      SE ORDENA POR       *
//* EMPRESA, CUENTA, CONCEPT Y FECHA DE PROCESO.                       *
//*--------------------------------------------------------------------*
//*
//PUR03P70 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MENSORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MENSORT2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=171,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03P70),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           -- ZM4MU184 --                           *
//* LEE ARCHIVO SORTEADO Y OBTIENE LOS REGISTROS QUE NO HICIERON MATCH *
//* CON LA INFORMACION DEL MES ACTUAL.                                 *
//*--------------------------------------------------------------------*
//*
//PUR03P65 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMR365E1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MEN2SORT,DISP=SHR
//*
//ZMR365E2 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU183.MENSORT2,DISP=SHR
//*
//ZMR365S1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU184.MENSORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=183,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P65),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           -- ZM4MU185 --                           *
//* LEE ARCHIVO EDVALCA CON LA CUENTA, EMISORA, SERIE SE OBTIENE LA    *
//* SUMA DE LAS COMPRAS DEL MES DE LOS DEPOSITOS Y COMPRAS, ASI COMO EL*
//* PROMEDIO DE LOS PRECIOS.                                           *
//*--------------------------------------------------------------------*
//*
//PUR03P60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMR360E1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU184.MENSORT,DISP=SHR
//*
//ZMR360S1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU185.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=252,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           -- ZM4MU186 --                           *
//* LEE ARCHIVO EDVALCA CON LA CUENTA, EMISORA, SERIE Y SE OBTIENEN    *
//* TODAS LAS OPERACIONES DE DEPOSITOS-COMPRAS Y RETIROS-VENTA DEL MES.*
//*--------------------------------------------------------------------*
//*
//PUR03P55 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMR355E1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU185.MEN,DISP=SHR
//*
//ZMR355S1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.DEPCOMPS.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=284,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//ZMR355S2 DD DSN=MXCP.ZM.FIX.ECC.ECBP.RETVNTAS.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=284,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//ZMR355S3 DD DSN=MXCP.ZM.FIX.ECC.ECBP.DIFERENC.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=252,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P55),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           --- ICEMAN ---                           *
//* ORDENA ARCHIVO CON INFORMACION DEL MATCH.      SE ORDENA POR       *
//* EMPRESA, CUENTA, CONCEPT Y FECHA DE PROCESO Y SE SUMAN LOS TITULOS,*
//* LOS PRECIOS Y EL NUMERO DE REGISTROS.                              *
//*--------------------------------------------------------------------*
//*
//PUR03P50 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECC.ECBP.DEPCOMPS.MEN,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECC.ECBP.DEPCOMPS.MENSORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=284,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03P50),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           --- ICEMAN ---                           *
//* ORDENA ARCHIVO CON INFORMACION DEL MATCH.      SE ORDENA POR       *
//* EMPRESA, CUENTA, CONCEPT Y FECHA DE PROCESO Y SE SUMAN LOS TITULOS,*
//* LOS PRECIOS Y EL NUMERO DE REGISTROS.                              *
//*--------------------------------------------------------------------*
//*
//PUR03P45 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECC.ECBP.RETVNTAS.MEN,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECC.ECBP.RETVNTAS.MENSORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=284,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03P45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           --- ICEMAN ---                           *
//* UNIFICA LOS REGISTROS QUE SEAN IGUALES POR EMPRESA, CUENTA,        *
//* EMISORA, SERIE, CUPON.                                             *
//*--------------------------------------------------------------------*
//*
//PUR03P40 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU185.MEN,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ECC.ECBP.RETVNTAS.MENSORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU186.MENSVTS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=284,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03P40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           --- ICEMAN ---                           *
//* UNIFICA LOS REGISTROS QUE SEAN IGUALES POR EMPRESA, CUENTA,        *
//* EMISORA, SERIE, CUPON.                                             *
//*--------------------------------------------------------------------*
//*
//PUR03P35 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU185.MEN,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ECC.ECBP.DEPCOMPS.MENSORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU186.MENSCMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=284,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR03P35),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           -- ZM4MU187 --                           *
//* REALIZA MATCH PARA JUNTAR EN UN REGISTRO LAS COMPRAS Y LAS VENTAS. *
//*--------------------------------------------------------------------*
//*
//PUR03P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMR330E1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU185.MEN,DISP=SHR
//*
//ZMR330E2 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU186.MENSVTS,DISP=SHR
//*
//ZMR330S1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU187.MENSVTS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=284,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           -- ZM4MU188 --                           *
//* REALIZA MATCH PARA JUNTAR EN UN REGISTRO LAS COMPRAS Y LAS VENTAS. *
//*--------------------------------------------------------------------*
//*
//PUR03P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMR325E1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU187.MENSVTS,DISP=SHR
//*
//ZMR325E2 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU186.MENSCMP,DISP=SHR
//*
//ZMR325S1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU188.MENCOMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=284,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P25),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           -- ZM4MU189 --                           *
//* LEE ARCHIVO DE ENTRADA Y BUSCAR INFORMACION FALTANTE PARA OBTENER  *
//* EL VALOR DE DIFERENCIAL DE CADA OPERACION.                         *
//*--------------------------------------------------------------------*
//*
//PUR03P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMR320E1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU188.MENCOMP,DISP=SHR
//*
//ZMR320S1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU189.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=316,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           -- ZM4MU190 --                           *
//* LEE ARCHIVO DE ENTRADA Y CALCULA EL VALOR DEL DIFERENCIAL SOLO PARA*
//* LOS REGISTROS A LOS QUE NO SE LES HA CALCULADO EL DIFERENCIAL.     *
//*--------------------------------------------------------------------*
//*
//PUR03P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMR315E1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU189.MEN,DISP=SHR
//*
//ZMR315S1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU190.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=316,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                           -- ZM4MU191 --                           *
//* LEE ARCHIVO DE ENTRADA Y LLENA LA TABLA ZMDT831 CON LA INFORMACIONA*
//* DEL DIFERENCIAL.                                                   *
//*--------------------------------------------------------------------*
//*
//PUR03P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMR310E1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU190.MEN,DISP=SHR
//*
//ZMR310S1 DD DSN=MXCP.ZM.FIX.ECC.ECBP.ZM4MU191.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=316,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*        TERMINA PROCESO ZMUENR03 SIVA MULTIEMPRESA                  *
//*--------------------------------------------------------------------*
