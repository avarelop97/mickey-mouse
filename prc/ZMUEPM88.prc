//ZMUEPM88 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM88                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE ESTADOS DE CUENTA DE LA EMPRESA CBP   *
//*                SE OBTIENE EL DIFERENCIAL                           *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPMXX                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM87                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   FEBRERO 2015                                                     *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*
//* MODIFICO:       PEDRO AXEL VALLE SANCHEZ (PAVS-INI - PAVS-FIN)     *
//* FECHA:          MAYO 2023                                          *
//* ASUNTO:         INCREMENTO FOLIO CONCEPT                           *
//* MARCA:          SDATOOL-41254-PAVS-INI                             *
//*                 SDATOOL-41254-PAVS-FIN                             *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//*                           -- ZM4MU165 --                           *
//* LEE ARCHIVO CON INFORMACION DE EDVALCA Y SEPARA LA INFORMACION EN  *
//* REGISTROS DEL CIERRE DEL MES ANTERIOR Y REGISTROS DEL CIERRE DEL   *
//* MES ACTUAL.                                                        *
//**********************************************************************
//PUE88P95 EXEC PGM=IKJEFT01
//*
//ZM8895E1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.DESC(0),DISP=SHR
//*
//ZM8895S1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=171,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//ZM8895S2 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN2,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE88T95),DISP=SHR
//*
//**********************************************************************
//*                           --- ICEMAN ---                           *
//* UNIFICA LOS REGISTROS QUE SEAN IGUALES POR EMPRESA, CUENTA,        *
//* EMISORA, SERIE, CUPON. SE SUMA LA VALUACION PARA DEJAR UN SOLO     *
//* REGISTRO POR LOS QUE OPERAN EN EL MES, PERO NO LIQUIDAN EN EL MES. *
//* INFORMACION DEL MES ANTERIOR.                                      *
//**********************************************************************
//PUE88P90 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN1SOR,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE88T90),DISP=SHR
//*
//**********************************************************************
//*                           --- ICEMAN ---                           *
//* UNIFICA LOS REGISTROS QUE SEAN IGUALES POR EMPRESA, CUENTA,        *
//* EMISORA, SERIE, CUPON. SE SUMA LA VALUACION PARA DEJAR UN SOLO     *
//* REGISTRO POR LOS QUE OPERAN EN EL MES, PERO NO LIQUIDAN EN EL MES. *
//* INFORMACION DEL MES ACTUAL.                                        *
//**********************************************************************
//PUE88P85 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN2SOR,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE88T85),DISP=SHR
//*
//**********************************************************************
//*                           --- ICEMAN ---                           *
//* UNIFICA LOS REGISTROS QUE SEAN IGUALES POR EMPRESA, CUENTA,        *
//* EMISORA, SERIE, CUPON.                                             *
//**********************************************************************
//PUE88P80 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN1SOR,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN2SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MENSORT,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE88T80),DISP=SHR
//*
//**********************************************************************
//*                           --- ICEMAN ---                           *
//* ORDENA ARCHIVO CON INFORMACION DEL MES ACTUAL. SE ORDENA POR       *
//* EMPRESA, CUENTA, CONCEPT Y FECHA DE PROCESO.                       *
//**********************************************************************
//PUE88P75 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN2SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN2SORT,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE88T75),DISP=SHR
//*
//**********************************************************************
//*                           --- ICEMAN ---                           *
//* ORDENA ARCHIVO CON INFORMACION DEL MATCH.      SE ORDENA POR       *
//* EMPRESA, CUENTA, CONCEPT Y FECHA DE PROCESO.                       *
//**********************************************************************
//PUE88P70 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MENSORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MENSORT2,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE88T70),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4MU166 --                           *
//* LEE ARCHIVO SORTEADO Y OBTIENE LOS REGISTROS QUE NO HICIERON MATCH *
//* CON LA INFORMACION DEL MES ACTUAL.                                 *
//**********************************************************************
//PUE88P65 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM8865E1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MEN2SORT,DISP=SHR
//*
//ZM8865E2 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU165.MENSORT2,DISP=SHR
//*
//ZM8865S1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU166.MENSORT,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE88T65),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4MU167 --                           *
//* LEE ARCHIVO EDVALCA CON LA CUENTA, EMISORA, SERIE SE OBTIENE LA    *
//* SUMA DE LAS COMPRAS DEL MES DE LOS DEPOSITOS Y COMPRAS, ASI COMO EL*
//* PROMEDIO DE LOS PRECIOS.                                           *
//**********************************************************************
//PUE88P60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM8860E1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU166.MENSORT,DISP=SHR
//*
//ZM8860S1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU167.MEN,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE88T60),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4MU168 --                           *
//* LEE ARCHIVO EDVALCA CON LA CUENTA, EMISORA, SERIE Y SE OBTIENEN    *
//* TODAS LAS OPERACIONES DE DEPOSITOS-COMPRAS Y RETIROS-VENTA DEL MES.*
//**********************************************************************
//PUE88P55 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM8855E1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU167.MEN,DISP=SHR
//*
//ZM8855S1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.DEPCOMPS.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=284,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//ZM8855S2 DD DSN=MXCP.ZM.FIX.ECT.ECBP.RETVNTAS.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=284,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//ZM8855S3 DD DSN=MXCP.ZM.FIX.ECT.ECBP.DIFERENC.MEN,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE88T55),DISP=SHR
//*
//**********************************************************************
//*                           --- ICEMAN ---                           *
//* ORDENA ARCHIVO CON INFORMACION DEL MATCH.      SE ORDENA POR       *
//* EMPRESA, CUENTA, CONCEPT Y FECHA DE PROCESO Y SE SUMAN LOS TITULOS,*
//* LOS PRECIOS Y EL NUMERO DE REGISTROS.                              *
//**********************************************************************
//PUE88P50 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.ECBP.DEPCOMPS.MEN,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.DEPCOMPS.MENSORT,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE88T50),DISP=SHR
//*
//**********************************************************************
//*                           --- ICEMAN ---                           *
//* ORDENA ARCHIVO CON INFORMACION DEL MATCH.      SE ORDENA POR       *
//* EMPRESA, CUENTA, CONCEPT Y FECHA DE PROCESO Y SE SUMAN LOS TITULOS,*
//* LOS PRECIOS Y EL NUMERO DE REGISTROS.                              *
//**********************************************************************
//PUE88P45 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.ECBP.RETVNTAS.MEN,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.RETVNTAS.MENSORT,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE88T45),DISP=SHR
//*
//**********************************************************************
//*                           --- ICEMAN ---                           *
//* UNIFICA LOS REGISTROS QUE SEAN IGUALES POR EMPRESA, CUENTA,        *
//* EMISORA, SERIE, CUPON.                                             *
//**********************************************************************
//PUE88P40 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU167.MEN,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ECT.ECBP.RETVNTAS.MENSORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU168.MENSVTS,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE88T40),DISP=SHR
//*
//**********************************************************************
//*                           --- ICEMAN ---                           *
//* UNIFICA LOS REGISTROS QUE SEAN IGUALES POR EMPRESA, CUENTA,        *
//* EMISORA, SERIE, CUPON.                                             *
//**********************************************************************
//PUE88P35 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU167.MEN,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ECT.ECBP.DEPCOMPS.MENSORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU168.MENSCMP,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE88T35),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4MU169 --                           *
//* REALIZA MATCH PARA JUNTAR EN UN REGISTRO LAS COMPRAS Y LAS VENTAS. *
//**********************************************************************
//PUE88P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM8830E1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU167.MEN,DISP=SHR
//*
//ZM8830E2 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU168.MENSVTS,DISP=SHR
//*
//ZM8830S1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU169.MENSVTS,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE88T30),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4MU170 --                           *
//* REALIZA MATCH PARA JUNTAR EN UN REGISTRO LAS COMPRAS Y LAS VENTAS. *
//**********************************************************************
//PUE88P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM8825E1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU169.MENSVTS,DISP=SHR
//*
//ZM8825E2 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU168.MENSCMP,DISP=SHR
//*
//ZM8825S1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU170.MENCOMP,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE88T25),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4MU171 --                           *
//* LEE ARCHIVO DE ENTRADA Y BUSCAR INFORMACION FALTANTE PARA OBTENER  *
//* EL VALOR DE DIFERENCIAL DE CADA OPERACION.                         *
//**********************************************************************
//PUE88P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM8820E1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU170.MENCOMP,DISP=SHR
//*
//ZM8820S1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU171.MEN,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE88T20),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4MU176 --                           *
//* LEE ARCHIVO DE ENTRADA Y CALCULA EL VALOR DEL DIFERENCIAL SOLO PARA*
//* LOS REGISTROS A LOS QUE NO SE LES HA CALCULADO EL DIFERENCIAL.     *
//**********************************************************************
//PUE88P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM8815E1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU171.MEN,DISP=SHR
//*
//ZM8815S1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU176.MEN,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE88T15),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4MU177 --                           *
//* LEE ARCHIVO DE ENTRADA Y LLENA LA TABLA ZMDT831 CON LA INFORMACIONA*
//* DEL DIFERENCIAL.                                                   *
//**********************************************************************
//PUE88P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM8810E1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU176.MEN,DISP=SHR
//*
//ZM8810S1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZM4MU177.MEN,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE88T10),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM88 SIVA MULTIEMPRESA                  *
//**********************************************************************
