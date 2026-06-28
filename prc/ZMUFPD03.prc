//ZMUFPD03 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA MODULO UNICO DE VALORES (M.U.V.)         *
//*                                                                    *
//* PROCESO        :  ZMUFPD03                                         *
//*                   DESPUES DEL INICIO DE TESORERIA                  *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE INTERFAZ DE CASA DE BOLSA          *
//*                   A POZOS                                          *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NMUFPD01 TRANSMITE ARCHIVO DE POZOS A P.U.       *
//*                                                                    *
//* DESPUES DE     :  CBJICD02 INICIO DE DIA DE TESORERIA              *
//*                                                                    *
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     03/MAY/2004       *
//*                                                                    *
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DEL INICIO DE DIA DE      *
//*                                                        TESORERIA   *
//* NOTA IMPORTANTE:                                                   *
//*          ESTE PROCESO NO SE PUEDE OMITIR POR NINGUN MOTIVO         *
//*                                                                    *
//*          >>>>>>>> ESCALAMIENTO INMEDIATO <<<<<<<<<<<               *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*   @MEX001     M76893  15FEB23 SE AUMENTA LONGITUD DE ARCHIVO DE    *
//*                               POZOS DE 386 A 389.                  *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//*                          === ZM4DU888 ===                          *
//*                                                                    *
//* OBJETIVO : VERIFICA QUE SE HAYA EFECTUADO EL CAMBIO DE SESION      *
//*            BG BATCH                                                *
//*                                                                    *
//* OJO PRODUCCION: SI ESTE PASO CANCELA CON RC = 16, VERIFICAR CUANDO *
//*                 SE HARA EL CAMBIO DE SESION BG BATCH. CUANDO ESTO  *
//*                 SUCEDA RELANZAR DESDE ESTE PASO EL PROCESO.        *
//*                                                                    *
//**********************************************************************
//PUF01P14 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T24),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PUF01P13 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TMP.E&EMP..ZMJFPD03,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//*  PASO: 12 ITIPOPAR = Z09
//*                          PGM   ZM4DMW03
//*       PROGRAMA QUE ACTUALIZA LA TABLA PARAM CON EL TIIE ACTUAL
//*---------------------------------------------------------------------
//PUF01P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMMW03A1 DD DSN=MXCP.ZM.FIX.MIG.TIIE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T19),DISP=SHR
//*
//*---------------------------------------------------------------------
//*  PASO: 11        ACTUALIZA EL INTERES DE LOS CUPONES DE CEDES
//*                          PGM   ZM4DMW02
//*           PROGRAMA QUE ACTUALIZA LA  TABLA  ZMDT610
//*---------------------------------------------------------------------
//PUF01P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T20),DISP=SHR
//*
//*---------------------------------------------------------------------
//*  PASO:  10       PROC VENCE LOS PLAZOS A FECHA NORMAL
//*                          PGM   ZM4DMW01
//*         PROGRAMA QUE ACTUALIZA LAS TABLAS ZMDT610, OPERA Y CARTERA
//*---------------------------------------------------------------------
//PUF01P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T21),DISP=SHR
//*
//**********************************************************************
//*                          === IDCAMS ===                            *
//*                                                                    *
//* OBJETIVO : LIMPIAR EL ARCHIVO DE LA INTEFAZ A POZOS DE SOC INV,    *
//*            MERC DE CAPITALES Y MERC DE DINERO                      *
//*     BORRA: MXCP.ZM.FIX.ECO.INTFAZ.POZOS                            *
//*                                                                    *
//**********************************************************************
//PUF01P09 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T17),DISP=SHR
//*
//**********************************************************************
//*                          === DSICOPY ===                           *
//*                                                                    *
//* OBJETIVO : LIMPIAR EL ARCHIVO DE LA INTEFAZ QUE REGRESA POZOS      *
//*            CON LAS AFECTACIONES DE EFECTIVO Y RECHAZOS             *
//*                                                                    *
//**********************************************************************
//PUF01P08 EXEC PGM=DSICOPY,PARM=01PSREBLOCK,COND=(4,LT)
//SYSUT1   DD DSN=NULLFILE,
//*@MEX001-I
//*           DCB=(LRECL=386,RECFM=FB)
//            DCB=(LRECL=389,RECFM=FB)
//*@MEX001-F
//SYSUT2   DD DSN=MXCP.ZM.FIX.ZM4DU750.POZOBG,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE),
//*@MEX001-I
//*           DCB=(RECFM=FB,BLKSIZE=0,LRECL=386,DSORG=PS)
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=389,DSORG=PS)
//*@MEX001-F
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//*                          === DSICOPY ===                           *
//*                                                                    *
//* OBJETIVO : LIMPIAR EL ARCHIVO DE LA INTEFAZ DE POZOS CON LOS       *
//*            RECHAZOS DEL POZO DE LA (01:00 A.M.) ESTE ARCHIVO       *
//*            SE GENERA EN EL JCL CBUFND05                            *
//*                                                                    *
//**********************************************************************
//PUF01P07 EXEC PGM=DSICOPY,PARM=01PSREBLOCK,COND=(4,LT)
//SYSUT1   DD DSN=NULLFILE,
//*@MEX001-I
//*           DCB=(LRECL=386,RECFM=FB)
//            DCB=(LRECL=389,RECFM=FB)
//*@MEX001-F
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.REP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE),
//*@MEX001-I
//*           DCB=(RECFM=FB,BLKSIZE=0,LRECL=386,DSORG=PS)
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=389,DSORG=PS)
//*@MEX001-F
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//*                          === ZM4DU821 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA POZOS CON EFECTIVOS DE     *
//*            LA MIGRACION IOPERAS 1020 Y 1120 (BPIGO Y BPIGO248)     *
//*                                                                    *
//**********************************************************************
//PUF01P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMU821T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.BPIGO248,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//*@MEX001-I
//*       DCB=(DSORG=PS,RECFM=FB,LRECL=386,BLKSIZE=0),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=389,BLKSIZE=0),
//*@MEX001-F
//        UNIT=3390
//ZMU821T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZMDT633.BPIGO248,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),
//        UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T23),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU822 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA POZOS DE SOCIEDADES DE     *
//*            INVERSION  (VERSION AFECTA SOLO CLIENTE)                *
//*                                                                    *
//**********************************************************************
//PUF01P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMU822T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.SOCINV,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//*@MEX001-I
//*       DCB=(DSORG=PS,RECFM=FB,LRECL=386,BLKSIZE=0),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=389,BLKSIZE=0),
//*@MEX001-F
//        UNIT=3390
//ZMU822T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZMDT633.SOCINV,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),
//        UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T11),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU825 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA POZOS DE MERCADO DE        *
//*            CAPITALES                                               *
//*                                                                    *
//**********************************************************************
//PUF01P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMU825T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.CAP,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//*@MEX001-I
//*       DCB=(DSORG=PS,RECFM=FB,LRECL=386,BLKSIZE=0),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=389,BLKSIZE=0),
//*@MEX001-F
//        UNIT=3390
//ZMU825T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZMDT633.CAP,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),
//        UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T09),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU826 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA POZOS DE MERCADO DE        *
//*            DINERO                                                  *
//*                                                                    *
//**********************************************************************
//PUF01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMU826T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.MDD,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//*@MEX001-I
//*       DCB=(DSORG=PS,RECFM=FB,LRECL=386,BLKSIZE=0),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=389,BLKSIZE=0),
//*@MEX001-F
//        UNIT=3390
//ZMU826T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZMDT633.MDD,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),
//        UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T14),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU827 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA POZOS DE MERCADO DE        *
//*            DINERO DE OPERACIONES BPIGO                             *
//*                                                                    *
//**********************************************************************
//PUF01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMU827T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.BPIGO,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//*@MEX001-I
//*       DCB=(DSORG=PS,RECFM=FB,LRECL=386,BLKSIZE=0),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=389,BLKSIZE=0),
//*@MEX001-F
//        UNIT=3390
//ZMU827T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZMDT633.BPIGO,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),
//        UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T18),DISP=SHR
//*
//**********************************************************************
//*                          === ZM3DU825 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA POZOS DE SOCIEDADES DE     *
//*            INVERSION, MERCADO DE CAPITALES Y MERCADO DE DINERO.    *
//*                                                                    *
//**********************************************************************
//PUF01P01 EXEC PGM=ZM3DU825,COND=(4,LT)
//ZMU825T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.SOCINV,DISP=SHR
//ZMU825T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.CAP,DISP=SHR
//ZMU825T3 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.MDD,DISP=SHR
//ZMU825T4 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.BPIGO,DISP=SHR
//ZMU825T5 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS.BPIGO248,DISP=SHR
//ZMU825T6 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//*@MEX001-I
//*       DCB=(DSORG=PS,RECFM=FB,LRECL=386,BLKSIZE=0),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=389,BLKSIZE=0),
//*@MEX001-F
//        UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          ===   COPIA  ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ ENVIO A POZOS DE BG         *
//*            MXCP.ZM.FIX.ECO.INTFAZ.POZOS                            *
//*  A ===>    MXCP.ZM.GDGD.ECO.EBCM.POZOS                             *
//**********************************************************************
//PUF01P00 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECO.EBCM.POZOS(+1),
//            DISP=(NEW,CATLG,DELETE),
//*@MEX001-I
//*           DCB=(BKUP.MODEL,LRECL=386,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(BKUP.MODEL,LRECL=389,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*@MEX001-F
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
