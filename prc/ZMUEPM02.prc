//ZMUEPM02 PROC EMP=CBP,SUC=,INT1='0000001-9999999',INT2=' '
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM02                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE ESTADOS DE CUENTA DE LA EMPRESA       *
//*                PROPORCIONADA                                       *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM03                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM01                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   JULIO 2003                                                       *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUE02P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                           -- ZM3MU260 --                           *
//*             GENERA ESTADOS DE CUENTA DE CASA DE BOLSA              *
//**********************************************************************
//PUE02P02 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU260A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM02,DISP=SHR
//*
//ZMU260EC DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//ZMU260R1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOTEMP,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU260R2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MAXHJA,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=30,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE)
//ZMU260R3 DD DSN=MXCP.ZM.FIX.ECT.E&EMP..CIFCTL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//*
//ZMU260C1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDCUENTA.SRT(0),DISP=SHR
//ZMU260V1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.SRT(0),DISP=SHR
//ZMU260D1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDDEPRE.SRT(0),DISP=SHR
//ZMU260I1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDIMPUE.SRT(0),DISP=SHR
//ZMU260M1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDMOVED.SRT(0),DISP=SHR
//ZMU260S1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDSECIN.SRT(0),DISP=SHR
//ZMU260O1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOPERT1.SRT(0),DISP=SHR
//ZMU260P1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDPARAM.SRT(0),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE02T00),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*       RESPALDA EDOS.CTA. 'MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.MEN'      *
//*              EN EL GDGD  'MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA(+1)'     *
//**********************************************************************
//PUE08P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.E&EMP..EDOSCTA.MEN,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(400,200),RLSE),
//            LRECL=258,RECFM=FBA,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM02 SIVA MULTIEMPRESA                  *
//**********************************************************************
