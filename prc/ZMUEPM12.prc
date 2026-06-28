//ZMUEPM12 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                >>>>  ESTADOS DE CUENTA BANCO  <<<<                 *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM12                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA ARCHIVOS PARA LOS ESTADOS DE CUENTA          *
//*                DE CUSTODIA INTERNACIONAL (SUC. 'CTD')              *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBUENM01                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUE12P09 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM12,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4MU281  --
//*  GENERA ARCHIVOS CUST. NECESARIOS PARA LA GENERACION DE LOS ESTADOS
//*  DE CUENTA DE CUSTODIA INTERNACIONAL  (EDCUENTA)
//**********************************************************************
//PUE12P08 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU281A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM12,DISP=SHR
//*
//ZMU281A2 DD DSN=MXCP.ZM.FIX.ECT.ECTD.EDCUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=838,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE12T08),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU282  --
//*  GENERA ARCHIVOS CUST. NECESARIOS PARA LA GENERACION DE LOS ESTADOS
//*  DE CUENTA DE CUSTODIA INTERNACIONAL  (EDVALCA)
//**********************************************************************
//PUE12P07 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU282A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM12,DISP=SHR
//*
//ZMU282A3 DD DSN=MXCP.ZM.FIX.ECT.ECTD.EDVALCA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=228,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE12T09),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU283  --
//*  GENERA ARCHIVOS CUST. NECESARIOS PARA LA GENERACION DE LOS ESTADOS
//*  DE CUENTA DE CUSTODIA INTERNACIONAL (EDMOVED)
//**********************************************************************
//PUE12P06 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU283A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM12,DISP=SHR
//*
//ZMU283A4 DD DSN=MXCP.ZM.FIX.ECT.ECTD.EDMOVED,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=280,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE12T10),DISP=SHR
//*
//*-SAJI-INICIO
//*
//**********************************************************************
//*                    -- DESCARGA  --                                 *
//* DESCARGA DE LA TABLA CUENTA RECUPERANDO ICUENTA CON ISUCCASA = CTD *
//**********************************************************************
//*
//PUE12P05 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUE12P06,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CUENTA.PUE1.DESC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=4,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12T11),DISP=SHR
//*
//**********************************************************************
//*  ORDENA ARCHIVO CON INFORMACION FISCAL POR CUENTA                  *
//**********************************************************************
//*
//PUE12P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.CBUENM44.DETALLE.EDIMPUE.SORT,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.FIX.CBUENM12.DETALLE.EDIMPUE.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=87,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE12T12),DISP=SHR
//*
//**********************************************************************
//*  MATCH ENTRE CUENTAS DE TABLA CUENTA Y CUENTA DE INTERFAZ DE RESU- *
//*  MEN FIZCAL PARA OBTENER SOLO REGISTROS DE CUSTODIA CTD            *
//**********************************************************************
//*
//PUE12P03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN1  DD DSN=MXCP.ZM.FIX.CUENTA.PUE1.DESC,
//            DISP=SHR
//*
//SORTIN2  DD DSN=MXCP.ZM.FIX.CBUENM12.DETALLE.EDIMPUE.SORT,
//            DISP=SHR
//*
//FBSOLO   DD DSN=MXCP.ZM.FIX.CBUENM12.DETALLE.EDIMPUE.CTD,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1000,500),RLSE),UNIT=3390,
//            DCB=(LRECL=87,BLKSIZE=0,RECFM=FB,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12T13),DISP=SHR
//*
//**********************************************************************
//*  ORDENA ARCHIVO CON INFORMACION FISCAL DE CUSTODIA POR CUENTA      *
//**********************************************************************
//*
//PUE12P02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.CBUENM12.DETALLE.EDIMPUE.CTD,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.CBUENM12.DETALLE.EDIMPUE.CTDSORT,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=87,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE12T14),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM3MU284  --
//*  DESGLOCEDE RESUMEN FISCAL PARA LA GENERACION DE ESTADOS DE CUENTA *
//*  PARA CUSTODIA                                                     *
//**********************************************************************
//PUE12P01 EXEC PGM=ZM3MU284,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBUENM12.DETALLE.EDIMPUE.CTDSORT,
//            DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.ECT.ECTD.DESMOVED.ACUM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=245,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*  ORDENA ARCHIVO CON INFORMACION FISCAL POR CUENTA                  *
//**********************************************************************
//*
//PUE12P00 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.ECT.ECTD.DESMOVED.ACUM,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.ECT.ECTD.DESMOVED,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=245,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUE12T16),DISP=SHR
//*
//*-SAJI-FINAL
//
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM12                                    *
//**********************************************************************
