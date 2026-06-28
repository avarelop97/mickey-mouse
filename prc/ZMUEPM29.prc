//ZMUEPM29 PROC EMP=CBP,SUC=,INT1='0000001-9999999',INT2=' '
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM29                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA ARCHIVO PARA DIGITALIZACION DE ESTADOS DE    *
//*                CUENTA DE CASA DE BOLSA. (SEGMENTOS, PIPES, CIFCTL) *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM39                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  VO.BO. DEL USUARIO (SIVAXECB)                 *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   FEBRERO 2011                                                     *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//* FS-1.0.0-03  XMBB118 13JUL12  SE RENOMBRAN TODOS LOS PASOS Y SE    *
//*                               AGREGAN LOS ULTIMOS                  *
//*                               PASOS PUE29P03, PUE29P02 Y PUE29P01  *
//*--------------------------------------------------------------------*
//* FS-1.0.0-04  XMA3149 09MAR18  PARA EL PROGRAMA ZM4CBD01 SE AGREGA  *
//*                               ARCHIVO CON CONTRATOS QUE VAN A      *
//*                               GENERAR FACTURA DE EGRESOS           *
//*                               SE AGREGA ULTIMO PASO PARA CONSOLIDAR*
//*                               TODOS LOS ARCHIVOS DE EGRESOS        *
//*--------------------------------------------------------------------*
//* FS-1.0.0-05  XMA3149 21AGO18  EN EL PROGRAMA ZM4CBD03 SE AGREGA    *
//*                               ARCHIVO CON VALOR UNITARIO POR CADA  *
//*                               CONCEPTO QUE REALICE PAGO            *
//*--------------------------------------------------------------------*
//* FS-1.0.0-06  M906542 29JUN22  EN EL PROGRAMA ZM4CBD03 SE AGREGA    *
//*                               ARCHIVO DE SALIDA PARA INFORMAR LOS  *
//*                               RFC'S QUE SE CAMBIAN A GENERICO      *
//**********************************************************************
//*
//**********************************************************************
//*                    -- ZM3DG001  --                                 *
//*  RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO           *
//**********************************************************************
//PUE29P18 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM29,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM4MU007  --                                 *
//*  SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS DE IMPRESION DE ACUERDO  *
//*  A LOS CRITERIOS DE SEPARACION PROPORCIONADOS EN LINEA MEDIANTE LA *
//*  TABLA PRODUSVP.PARAM ('ESP')                                      *
//*                                                                    *
//**********************************************************************
//PUE29P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU007A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM29,DISP=SHR
//ZMU007E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.MEN,DISP=SHR
//*
//ZMU007CC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMCTL,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//ZMU007G0 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G4 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G5 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G6 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G7 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G8 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007G9 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU007GA DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE04T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP00      *
//**********************************************************************
//PUE29P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP00,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T100,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T200,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T300,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP00,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG00),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP01      *
//**********************************************************************
//PUE29P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP01,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T101,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T201,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T301,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG01),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP02      *
//**********************************************************************
//PUE29P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP02,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T102,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T202,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T302,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG02),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP03      *
//**********************************************************************
//PUE29P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP03,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T103,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T203,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T303,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG03),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP04      *
//**********************************************************************
//PUE29P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP04,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T104,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T204,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T304,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG04),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP05      *
//**********************************************************************
//PUE29P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP05,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T105,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T205,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T305,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG05),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP06      *
//**********************************************************************
//PUE29P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP06,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T106,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T206,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T306,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG06),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP07      *
//**********************************************************************
//PUE29P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP07,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T107,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T207,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T307,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP07,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG07),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP08      *
//**********************************************************************
//PUE29P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP08,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T108,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T208,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T308,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP08,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG08),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP09      *
//**********************************************************************
//PUE29P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP09,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T109,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T209,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T309,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP09,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG09),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CBD01  --                                 *
//*  GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION GP10      *
//**********************************************************************
//PUE29P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD01E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECIMPR.GP10,DISP=SHR
//*
//ZMUD01S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T110,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T210,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD01T3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.T310,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-I
//ZMUD01S2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP10,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*FS-1.0.0-04-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG10),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        GENERA ARCHIVO PARA DIGITALIZACION DE ESTADOS DE CUENTA     *
//**********************************************************************
//PUE29P05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//******************************************************************
//******   ESTADOS DE CUENTA EN FORMATO PARA SELLO FISCAL     ******
//******************************************************************
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP00,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP01,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP02,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP03,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP04,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP05,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP06,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP07,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP08,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP09,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ECDIGTA.GP10,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.DIGIT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA LOS ESTADOS DE CUENTA POR NUMERO DE CUENTA PARA   *
//*           SER ENTREGADO A MEDC                                     *
//**********************************************************************
//PUE29P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.DIGIT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.DIGTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMECBD01),DISP=SHR
//*
//*
//*FS-1.0.0-03-INI
//**********************************************************************
//*                    -- ZM4CBD03  --                                 *
//**********************************************************************
//PUE29P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD03E1 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.DIGTA,DISP=SHR
//*
//ZMUD03S1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.MEDC.TPIPE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=480,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMUD03S2 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.PMEDC.CCTL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=45,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//*
//*FS-1.0.0-05-I
//ZMUD03S3 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.SALDOS.TOT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=55,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//*
//*FS-1.0.0-05-F
//*FS-1.0.0-06-I
//ZMUD03S4 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..RFCSGEN.CVEGEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=202,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//*FS-1.0.0-06-F
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBG11),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE PIPES POR CONTRATO, SEGMENTO Y      *
//*           CONSECUTIVO                                              *
//**********************************************************************
//PUE29P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.MEDC.TPIPE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.MEDC.PISOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=480,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMECBD04),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: RECORTA EL ARCHIVO DE PIPES PARA DEJARLO EN EL FORMATO   *
//*           REQUERIDO POR MEDC                                       *
//**********************************************************************
//PUE29P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.MEDC.PISOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.MEDC.PIPES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=458,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMECBD05),DISP=SHR
//*
//*FS-1.0.0-03-FIN
//*FS-1.0.0-04-I
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*   GENERA ARCHIVO CON CONTRATOS QUE GENERA FACTURA DE EGRESOS       *
//**********************************************************************
//PUE29P00 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP00,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP01,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP02,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP03,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP04,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP05,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP06,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP07,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP08,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP09,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EGRESOS.GP10,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EGRESOS.FACTURA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSIN    DD DUMMY
//*
//*FS-1.0.0-04-F
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM29 SIVA MULTIEMPRESA                  *
//**********************************************************************
