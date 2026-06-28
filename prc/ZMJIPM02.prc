//ZMJIPM02 PROC
//**********************************************************************00002000
//*                                                                    *00003000
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V).                *00004000
//*                                                                    *00004200
//* PROCESO        :  CBJINM02                                         *00004300
//*                   SAT 2005.                                        *00004400
//*                                                                    *00004500
//* OBJETIVO       :  GENERAR LA INFORMACION REQUERIDA POR LA S.A.T.   *00004600
//*                                                                    *00004800
//* OBSERVACION    :  ESTE PROCESO CORRE MENSUALMENTE.                 *00009300
//*                                                                    *00009400
//* CORRE                                                              *00004900
//* ANTES DE       :  N/A                                              *00005000
//*                                                                    *00006000
//* DESPUES DE     :  CBJICD05  -  ZMJIPD05                            *00007000
//*                                                                    *00008000
//* REALIZO        :  AZERTIA(F.V.C.)                                  *00009000
//* FECHA          :  JUNIO 2005.                                      *00009100
//*                                                                    *00009200
//* MODIFICO       :  AZERTIA(J.P.C.)                                  *00009000
//* FECHA          :  MARZO 2009.                                      *00009100
//*                                                                    *00009200
//* MODIFICO       :  ACCENTURE(IDAXJRM) -                             *
//* FECHA          :  23-OCT-2009        - @IDAXJRM                    *
//* OBSERVACION    :  SE ADICIONAN PASO  PJI02P0S INTERFAZ DIVIDENDOS  *
//*                                                                    *00009400
//*--------------------------------------------------------------------*00010011
//*            L O G    D E   M O D I F I C A C I O N E S              *00010012
//*--------------------------------------------------------------------*00010013
//*     MARCA      AUTOR   FECHA   DESCRIPCION                         *00010014
//*  -----------  ------- -------- ----------------------------------- *00010015
//*    @DGCM01    XM26272 20111222 MODIFICACION DE LONGITUD DE ARCHIVO *00010016
//*                                DE SALIDA DE PASO PJI02P0B          *00010017
//*                       20120103 MODIFICACION DE LONGITUD DE ARCHIVO *00010016
//*                                DE SALIDA DE PASO PJI02P0B          *00010017
//*
//* MODIFICO       :  JOSE OSCAR SEGURA PEREZ                          *
//* FECHA          :  02/06/2015                                       *
//* OBSERVACION    :  SE AGREGA PASOS PARA INTEGRAR MOVIMIENTOS DE     *
//*                   INTERESES E ISR POR SALDO ACREEDOR AL ARCHIVO    *
//*                   DE MOVIMIENTOS DE CASA DE BOLSA.                 *
//*    @DGCM02    XMZ8533 20171010 SE AGREGAN 3 PASOS MAS, LOS CUALES  *00010016
//*                                SOBRESCRIBEN REGISTROS DEL ARCHIVO  *00010017
//*                                DE SALIDA DEL PGM J004.             *
//* MODIFICO       :  ERICK MOISES SANCHEZ                             *
//* FECHA          :  12/07/2022                                       *
//* OBSERVACION    :  SE AGREGA EN ARCHIVO FINAL DEL SAT FECHA DE      *
//*                   ADQUISIOCION DE LOS DEPOSITOS 524 MDD.           *
//**********************************************************************00009500
//*                                                                    *
//* MODIFICO       :  MCM (XMY3698)                                    *
//* FECHA          :  13/11/2017                                       *
//* OBSERVACION    :  SE AGREGAN PASOS PARA LA GENERACION DE LOS       *
//*                   MOVIMIENTOS DE DIVIDENDOS EN ESPECIE Y LA        *
//*                   INTEGRACION DE LOS MISMOS A LA INTERFAZ DE       *
//*                   MOVIMIENTOS DEL SAT.                             *
//*                   PASOS AGREGADOS : PJI02P0T, PJI02P0U, PJI02P0V   *
//*                                     PJI02P0W, PJI02P0X             *
//*                                                                    *
//**********************************************************************00009500
//*                           -- ZM4MJ003 --                           *
//* OBJETIVO    :  SALDOS RESULTADO DE OPERACIONES EN DIRECTO (525,625)*
//* ACTUALIZA   :  CASA DE BOLSA.                                      *
//*                                                                    *
//**********************************************************************
//PJI02P09 EXEC PGM=IKJEFT01
//*
//SALDOS   DD DSN=MXC&AMB..ZM.WKF.ECBP.ODIRECTO.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P03),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P08),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MJ003 --                           *
//* OBJETIVO    :  SALDOS RESULTADO DE OPERACIONES EN DIRECTO (525,625)*
//* ACTUALIZA   :  BANCA PATRIMONIAL.                                  *
//*                                                                    *
//**********************************************************************
//PJI02P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SALDOS   DD DSN=MXC&AMB..ZM.WKF.EMUV.ODIRECTO.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P04),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P08),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MJ002 --                           *
//* OBJETIVO    :  SALDOS REPORTOS CASA DE BOLSA PARA EL S.A.T.        *
//* ACTUALIZA   :                                                      *
//*                                                                    *
//**********************************************************************
//PJI02P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SALDOS   DD DSN=MXC&AMB..ZM.WKF.ECBP.REPORTOS.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P03),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P06),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MJ002 --                           *
//* OBJETIVO    :  SALDOS REPORTOS CASA DE BOLSA PARA EL S.A.T.        *
//* ACTUALIZA   :                                                      *
//*                                                                    *
//**********************************************************************
//PJI02P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SALDOS   DD DSN=MXC&AMB..ZM.WKF.EMUV.REPORTOS.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P04),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P06),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MJ001 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION CASA DE BOLSA S.A.T.         *
//* ACTUALIZA   :                                                      *
//*                                                                    *
//**********************************************************************
//PJI02P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SALDOS   DD DSN=MXC&AMB..ZM.WKF.ECBP.SALDOS.PREV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0)
//*
//TENENCIA DD DSN=MXC&AMB..ZM.FIX.ECBP.TENENCIA.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P03),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P05),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- .M4MJ001 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION M.U.V. PARA S.A.T.           *
//* ACTUALIZA   :                                                      *
//**********************************************************************
//PJI02P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SALDOS   DD DSN=MXC&AMB..ZM.WKF.EMUV.SALDOS.PREV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0)
//*
//TENENCIA DD DSN=MXC&AMB..ZM.FIX.EMUV.TENENCIA.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P04),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P05),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* SORT DEL ARCHIVO DE SALDOS
//**********************************************************************
//PJI02P03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//*SORTWK01 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK02 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK03 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK04 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK05 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXC&AMB..ZM.WKF.ECBP.SALDOS.PREV,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.WKF.ECBP.ODIRECTO.SAT,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.WKF.ECBP.REPORTOS.SAT,DISP=SHR
//*
//SORTOUT  DD  DSN=MXC&AMB..ZM.FIX.ECBP.SALDOS.SAT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(10,05),RLSE)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(PJI02P02),DISP=SHR
//*
//**********************************************************************
//* SORT DEL ARCHIVO DE SALDOS
//**********************************************************************
//PJI02P02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//*SORTWK01 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK02 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK03 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK04 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK05 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXC&AMB..ZM.WKF.EMUV.SALDOS.PREV,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.WKF.EMUV.ODIRECTO.SAT,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.WKF.EMUV.REPORTOS.SAT,DISP=SHR
//*
//SORTOUT  DD  DSN=MXC&AMB..ZM.FIX.EMUV.SALDOS.SAT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(10,05),RLSE)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(PJI02P02),DISP=SHR
//*
//**********************************************************************00009500
//*                           -- ZM4MJ004 --                           *
//* OBJETIVO    :  GENERACION DE MOVIMIENTOS PARA S.A.T.               *
//**********************************************************************
//PJI02P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ004A1  DD DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS1.SAT.A,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=622,RECFM=FB,BLKSIZE=0)
//ZMJ004B1  DD DSN=MXC&AMB..ZM.FIX.EBCM.MOVTOS.SAT.A,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=622,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P01),DISP=SHR
//*
//*@DGCM02-I
//**********************************************************************
//* EXTRAE LOS REGISTROS DONDE IOPERA = 1600 E IUSUARIO = 'ZM6HH978'
//**********************************************************************
//PJI02P1A EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS1.SAT.A,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.FIX.EBCM.MOVTOS.SAT.A,DISP=SHR
//*
//SALIDA1  DD  DSN=MXC&AMB..ZM.FIX.MOVTOS1.SAT.COPIA1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=622,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(100,50),RLSE)
//*
//SALIDA2  DD  DSN=MXC&AMB..ZM.FIX.MOVTOS1.SAT.COPIA2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=622,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(PJI02P1A),DISP=SHR
//*
//**********************************************************************00009500
//*                           -- ZM4MJC04 --                           *
//* OBJETIVO    :  REALIZA EL COMPLEMENTO DE LOS DATOS DE LA CUENTA,   *
//*                CON DATOS DE LA ZMDTDIV.                            *
//**********************************************************************
//PJI02P1B EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXC&AMB..ZM.FIX.MOVTOS1.SAT.COPIA2,DISP=SHR
//*
//S1DQSAL1 DD DSN=MXC&AMB..ZM.FIX.MOVTOS1.SAT.COPIA3,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=622,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P1B),DISP=SHR
//**********************************************************************
//* CONCATENA LOS REGISTROS CON COMPLEMENTO DE ZMDTDIV + SALIDA DE J004
//**********************************************************************
//PJI02P1C EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXC&AMB..ZM.FIX.MOVTOS1.SAT.COPIA1,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.FIX.MOVTOS1.SAT.COPIA3,DISP=SHR
//*
//SALIDA1  DD  DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS1.SAT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=622,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(100,50),RLSE)
//*
//SALIDA2  DD  DSN=MXC&AMB..ZM.FIX.EBCM.MOVTOS.SAT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=622,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(PJI02P1C),DISP=SHR
//**********************************************************************00009500
//*                           -- ZM4MJSA4 --                           *
//* OBJETIVO    :  GENERACION DE MOVIMIENTOS PARA S.A.T.               *
//**********************************************************************
//PJI02P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ014A1  DD DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS2.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=622,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC00T01),DISP=SHR
//*
//**********************************************************************
//* SORT DEL ARCHIVO DE MVTOS CASA DE BOLSA
//**********************************************************************
//PJI02A00 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS1.SAT,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS2.SAT,DISP=SHR
//*
//SORTOUT  DD  DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS.SAT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE),
//             DCB=(DSORG=PS,LRECL=622,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMI02A00),DISP=SHR
//*
//**********************************************************************00009500
//*                           -- ZM4MJ005 --                           *
//* OBJETIVO    :  GENERACION DE MOVIMIENTOS DE PAGARE                 *
//* ACTUALIZA   :                                                      *
//**********************************************************************
//PJI02P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ005B1  DD DSN=MXC&AMB..ZM.FIX.ECBP.PAGARE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0A),DISP=SHR
//**********************************************************************00009500
//*                           -- ZM4MJ006 --                           *
//* OBJETIVO    :  GENERACION DE MOVIMIENTOS PARA S.A.T.               *
//* ACTUALIZA   :                                                      *
//**********************************************************************
//PJI02P0B EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ006A1  DD DSN=MXC&AMB..ZM.FIX.ECBP.VENTAS.SOC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0)
//*
//ZMJ006B1  DD DSN=MXC&AMB..ZM.FIX.EBCM.VENTAS.SOC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//*@DGCM01-INI
//*           DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0)
//            DCB=(DSORG=PS,LRECL=491,RECFM=FB,BLKSIZE=0)
//*@DGCM01-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0B),DISP=SHR
//**********************************************************************00009500
//*                           -- ZM4MJ007 --                           *
//* OBJETIVO    :  GENERACION DE MOVIMIENTOS DEL ED.CTA CASA DE BOLSA  *
//* ACTUALIZA   :                                                      *
//**********************************************************************
//PJI02P0C EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ007A1  DD DSN=MXC&AMB..ZM.FIX.ECBP.EDMOVED,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0)
//*
//ZMJ007B1  DD DSN=MXC&AMB..ZM.FIX.EBCM.EDMOVED,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0C),DISP=SHR
//**********************************************************************00009500
//*                           -- ZM4MJ009 --                           *
//* OBJETIVO    :  GENERACION DE MOVIMIENTOS DEL ED.CTA BANCA PATRIMO  *
//* ACTUALIZA   :                                                      *
//**********************************************************************
//PJI02P0D EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ009A1  DD DSN=MXC&AMB..ZM.FIX.ECBP.ZMDT933,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0D),DISP=SHR
//**********************************************************************00009500
//*                           -- ZM4MJ010 --                           *
//* OBJETIVO    :  GENERACION DE MOVIMIENTOS DEL ED.CTA CASA DE BOLSA  *
//* ACTUALIZA   :                                                      *
//**********************************************************************
//PJI02P0E EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ010A1  DD DSN=MXC&AMB..ZM.FIX.ECBP.EDMCTD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0)
//*
//ZMJ010B1  DD DSN=MXC&AMB..ZM.FIX.EBCM.EDMCTD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0E),DISP=SHR
//**********************************************************************00009500
//*                           -- ZM4MJ012 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION CASA DE BOLSA S.A.T.         *
//* ACTUALIZA   :  JPC SE GENERA EL ARCHIVO DE TENENCIA ECBP UNICAMENTE*
//*                                                                    *
//**********************************************************************
//PJI02P0F EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//TENENCIA DD DSN=MXC&AMB..ZM.FIX.ECBP.TENENCIA.SATV2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P03),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P0F),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MJ012 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION CASA DE BOLSA S.A.T.         *
//* ACTUALIZA   :  JPC SE GENERA EL ARCHIVO DE TENENCIA EMUV UNICAMENTE*
//**********************************************************************
//PJI02P0G EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//TENENCIA DD DSN=MXC&AMB..ZM.FIX.EMUV.TENENCIA.SATV2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P04),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P0F),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MGF10 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION CASA DE BOLSA S.A.T.         *
//* ACTUALIZA   :  JPC SE GENERA EL ARCHIVO DE NOTAS ESTRUCTURADAS     *
//**********************************************************************
//PJI02P0H EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGA10A1 DD DSN=MXC&AMB..ZM.FIX.NOTAS.ESTRUCT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=310,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P0H),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MGF40 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION CASA DE BOLSA S.A.T.         *
//* ACTUALIZA   :  JPC SE GENERA EL ARCHIVO DE INTERFAZ CUPONADOS      *
//**********************************************************************
//PJI02P0I EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGA40A1 DD DSN=MXC&AMB..ZM.FIX.INTERFAZ.CUPONADO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P0I),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MJ106 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION CASA DE BOLSA S.A.T.         *
//* ACTUALIZA   :  JPC SE GENERA EL ARCHIVO DE CATALOGO DE EMISORAS    *
//**********************************************************************
//PJI02P0J EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJM1041 DD DSN=MXC&AMB..ZM.FIX.CATALOGO.EMISORAS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=101,RECFM=FB,BLKSIZE=0)
//*XM02826.2  DCB=(DSORG=PS,LRECL=106,RECFM=FB,BLKSIZE=0)
//*XM02826.1  DCB=(DSORG=PS,LRECL=77,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P0J),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MJ013 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION CASA DE BOLSA S.A.T.         *
//* ACTUALIZA   :  JPC SE GENERA ARCHIVO DE SALDOS ECBP UNICAMENTE     *
//*                                                                    *
//**********************************************************************
//PJI02P0K EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SALDOSV2 DD DSN=MXC&AMB..ZM.WKF.ECBP.SALDOS.PREVV2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P03),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P0K),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MJ013 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION M.U.V. PARA S.A.T.           *
//* ACTUALIZA   :  JPC SE GENERA ARCHIVO DE SALDOS EMUV UNICAMENTE     *
//**********************************************************************
//PJI02P0L EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SALDOSV2 DD DSN=MXC&AMB..ZM.WKF.EMUV.SALDOS.PREVV2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P04),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P0K),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* SORT DEL ARCHIVO DE SALDOS
//**********************************************************************
//PJI02P0M EXEC PGM=ICEMAN,COND=(4,LT)
//*
//*SORTWK01 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK02 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK03 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK04 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK05 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXC&AMB..ZM.WKF.ECBP.SALDOS.PREVV2,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.WKF.ECBP.ODIRECTO.SAT,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.WKF.ECBP.REPORTOS.SAT,DISP=SHR
//*
//SORTOUT  DD  DSN=MXC&AMB..ZM.FIX.ECBP.SALDOS.SATV2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(10,05),RLSE)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(PJI02P02),DISP=SHR
//*
//**********************************************************************
//* SORT DEL ARCHIVO DE SALDOS
//**********************************************************************
//PJI02P0N EXEC PGM=ICEMAN,COND=(4,LT)
//*
//*SORTWK01 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK02 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK03 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK04 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK05 DD  UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MXC&AMB..ZM.WKF.EMUV.SALDOS.PREVV2,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.WKF.EMUV.ODIRECTO.SAT,DISP=SHR
//         DD  DSN=MXC&AMB..ZM.WKF.EMUV.REPORTOS.SAT,DISP=SHR
//*
//SORTOUT  DD  DSN=MXC&AMB..ZM.FIX.EMUV.SALDOS.SATV2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             DCB=(DSORG=PS,LRECL=167,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(10,05),RLSE)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(PJI02P02),DISP=SHR
//*
//**********************************************************************00009500
//*                           -- ZM4MJ014 --                           *
//* OBJETIVO    :  GENERACION DE MOVIMIENTOS DEL ED.CTA CASA DE BOLSA  *
//* ACTUALIZA   :  JPC 07-ABRIL-09                                     *
//**********************************************************************
//PJI02P0O EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ014A1  DD DSN=MXC&AMB..ZM.FIX.ECBP.EDMOVEDV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0)
//*
//ZMJ014B1  DD DSN=MXC&AMB..ZM.FIX.EBCM.EDMOVEDV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=468,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0O),DISP=SHR
//*
//**********************************************************************00009500
//*                           -- ZM4MJ107 --                           *
//*         TRASPASOS MERCADO DE DINERO Y MERCADO DE CAPITALES         *
//* OBJETIVO    :  GENERA INTERFAZ DE TRASPASOS MERCADO DE CAPITALES   *
//**********************************************************************
//PJI02P0P EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJM1042 DD DSN=MXC&AMB..ZM.FIX.MDO.CAPITAL.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=138,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P09),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MJ108 --                           *
//*         TRASPASOS MERCADO DE DINERO Y MERCADO DE CAPITALES         *
//* OBJETIVO    :  GENERA INTERFAZ DE TRASPASOS MERCADO DE DINERO      *
//**********************************************************************
//PJI02P0R EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJM1043 DD DSN=MXC&AMB..ZM.FIX.MDO.DINERO.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=176,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P10),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*                                                                     00009500
//*@IDAXJRM-I
//**********************************************************************
//*                           -- ZM4MJ109 --                           *
//*                INTERFAZ DERECHO - DIVIDENDOS SAT                   *
//**********************************************************************
//PJI02P0S EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJM1044 DD DSN=MXC&AMB..ZM.FIX.DERECHO.DIVIDEND.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=118,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P11),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*@IDAXJRM-F
//*
//*ANS PYP INI
//**********************************************************************
//*                           -- ZM4MU023 --                           *
//*  GENERA ARCHIVO  SECUENCIAL CON LOS DIFERENTES TIPOS DE I.S.R.     *
//*  RETENIDOS POR CUENTA MENSUAL Y LOS DIVIDENDOS DE EFECTIVO DEL MES *
//**********************************************************************
//PJI02P0Y EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU023A1 DD DSN=MXCP.ZM.FIX.ECBP.ISRXCTA.SAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=292,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMU023A2 DD DSN=MXCP.ZM.FIX.EBCM.ISRXCTA.SAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=292,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUV08T01),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4MU024 --                           *
//*  GENERA ARCHIVO  SECUENCIAL CON LOS PRECIOS DE VECTOR ULT. DIA MES *
//*  CORRESPONDENTE A MERCADO DE CAPITALES Y MERCADO DE DINERO         *
//**********************************************************************
//PJI02P0Z EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU024A1 DD DSN=MXCP.ZM.FIX.ECBP.VECPRE.SAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=160,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMU024A2 DD DSN=MXCP.ZM.TMP.ECBP.POSFIN.MDD.SAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=223,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMU024A3 DD DSN=MXCP.ZM.TMP.EBCM.POSFIN.MDD.SAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=223,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMU024A4 DD DSN=MXCP.ZM.FIX.ECBP.DIVIEFE.SAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=516,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMU024A5 DD DSN=MXCP.ZM.FIX.EBCM.DIVIEFE.SAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=516,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMU024A6 DD DSN=MXCP.ZM.FIX.EBCM.VARPREC.PW6,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=119,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMU024A7 DD DSN=MXCP.ZM.FIX.EBCM.VARPREC.PW6EX,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=249,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTE00T03),DISP=SHR
//*
//**********************************************************************
//* SORT DEL ARCHIVO DE POSICION FIN DE MES MERCADO DE DINERO (CBP)
//**********************************************************************
//PJI02P1Z EXEC PGM=ICEMAN,COND=(4,LT)
//*
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK02 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK03 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK04 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK05 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECBP.POSFIN.MDD.SAT,
//            DISP=(MOD,DELETE,DELETE)
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.POSFIN.MDD.SAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=223,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE00T00),DISP=SHR
//*
//**********************************************************************
//* SORT DEL ARCHIVO DE POSICION FIN DE MES MERCADO DE DINERO (BCM)
//**********************************************************************
//PJI02P2Z EXEC PGM=ICEMAN,COND=(4,LT)
//*
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK02 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK03 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK04 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*SORTWK05 DD UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.EBCM.POSFIN.MDD.SAT,
//            DISP=(MOD,DELETE,DELETE)
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.POSFIN.MDD.SAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=223,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZTE00T00),DISP=SHR
//*ANS PYP FIN
//*
//*MCMI
//**********************************************************************00009500
//* EJECUCION DE PROGRAMA ZM4MJ015                                      00009500
//* DIVIDENDOS EN ESPECIE - GENERACION DE MOVIMIENTOS PARA EL SAT       00009500
//**********************************************************************00009500
//PJI02P0T EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMM015S1  DD DSN=MXC&AMB..ZM.FIX.EDES.MOVTOS.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=622,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0T),DISP=SHR
//*
//**********************************************************************
//* SEPARA LOS MOVIMIENTOS DE CASA DE BOLSA
//**********************************************************************
//PJI02P0U EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0U),DISP=SHR
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.EDES.MOVTOS.SAT,
//            DISP=(SHR)
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECBP.MOVDES.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=622,RECFM=FB,BLKSIZE=0)
//*
//**********************************************************************
//* SEPARA LOS MOVIMIENTOS DE BANCO
//**********************************************************************
//PJI02P0V EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0V),DISP=SHR
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.EDES.MOVTOS.SAT,
//            DISP=(SHR)
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.EBCM.MOVDES.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=622,RECFM=FB,BLKSIZE=0)
//*
//**********************************************************************
//* INTEGRACION DE ARCHIVO DIVIDENDOS EN ESPECIE PARA MOVIMIENTOS SAT
//* CASA DE BOLSA
//**********************************************************************
//PJI02P0W EXEC PGM=ICEMAN,COND=(4,LT)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0W),DISP=SHR
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECBP.MOVDES.SAT,
//            DISP=(SHR)
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS.SAT,
//            DISP=(MOD)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//**********************************************************************
//* INTEGRACION DE ARCHIVO DIVIDENDOS EN ESPECIE PARA MOVIMIENTOS SAT
//* BANCO
//**********************************************************************
//PJI02P0X EXEC PGM=ICEMAN,COND=(4,LT)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0W),DISP=SHR
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.EBCM.MOVDES.SAT,
//            DISP=(SHR)
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.EBCM.MOVTOS.SAT,
//            DISP=(MOD)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//*MCMF
//*EMSR-INI
//**********************************************************************
//* PASO: PJI02PA1                                                     *
//* COPIA AUXILIAR PARA INTEGRACION DE FECHA DE ADQUISICION CB         *
//**********************************************************************
//PJI02PA1 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0W),DISP=SHR
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS.SAT,
//            DISP=(SHR)
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS.SAT.AUX,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=622,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//**********************************************************************
//* PASO: PJI02PA2                                                     *
//* COPIA AUXILIAR PARA INTEGRACION DE FECHA DE ADQUISICION BANCO      *
//**********************************************************************
//PJI02PA2 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P0W),DISP=SHR
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.EBCM.MOVTOS.SAT,
//            DISP=(SHR)
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.EBCM.MOVTOS.SAT.AUX,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=622,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//**********************************************************************
//* OBJETIVO    : BORRADO DE ARCHIVO MOVTOS BC Y CB EVITAR QUE CANCELE *
//*               CUANDO ESTEN EN USO POR CRECIMIENTO DE LONGUITUD.    *
//* PASO: PJI02PA3                                                     *
//**********************************************************************
//PJI02PA3 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P1D),DISP=SHR
//*
//**********************************************************************00009500
//*                           -- ZM4DJ010 --                           *
//* OBJETIVO    :  RECUPERA FECHA DE ADQUISICION DE LA TABLA ZMDT710   *
//*                OPERACIONES 524 DE MDD                              *
//**********************************************************************
//PJI02PA4 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1FLENT1 DD DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS.SAT.AUX,DISP=SHR
//E2FLENT2 DD DSN=MXC&AMB..ZM.FIX.EBCM.MOVTOS.SAT.AUX,DISP=SHR
//*
//S1FLSAL1  DD DSN=MXC&AMB..ZM.FIX.ECBP.MOVTOS.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=633,RECFM=FB,BLKSIZE=0)
//*
//S2FLSAL2  DD DSN=MXC&AMB..ZM.FIX.EBCM.MOVTOS.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,LRECL=633,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P1E),DISP=SHR
//*
//**********************************************************************00009500
//*                           -- ZM4DJ032 --                           *
//* OBJETIVO    :  DEPURACION DE LA TABLA ZMDTLOG OPERACIONES '524'    *
//*                ZMLOG_CLAVE  = 'MDA'                                *
//**********************************************************************
//PJI02PA5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI02P1F),DISP=SHR
//*
//*EMSR-FIN
//**********************************************************************
//*                 F I N  Z M J I P M 0 2                             *
//**********************************************************************
