//ZMJLPZ04 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                         <<< TESORERIA >>>                          *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  CBJLPZ04                                            *
//*   PROCEDIM. :  ZMJLPZ04           (OPC. 565)                       *
//*                                                                    *
//*   OBJETIVO  : EMISION DE RECIBOS DE CARGOS                         *
//*                                                                    *
//*   CORRE ANTES DE  : NINGUNO                                        *
//*                                                                    *
//*   CORRE DESPUES DE: SIVAXERC                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (CORRE A SOLICITUD DEL USUARIO)      *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |28-JUL-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//**********************************************************************
//* MODIFICO       :  ANGELICA GARCIA (AZERTIA)                        *
//* FECHA          :  JULIO/2005                                       *
//*                   SE ELIMINA IMPRESION DE FORMATO Y SE GENERAN     *
//*                   REPORTES POR FOLIO E INSTITUCION                 *
//**********************************************************************
//*--------------------------------------------------------------------*
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *
//* FECHA          :  NOVIEMBRE 2008.                                  *
//*-------------------------------------------------------------------**
//**********************************************************************
//*                         -- ZM4DJ016 --                             *
//* OBJETIVO:     GENERACION DE REPORTE DE CARGOS POR NUMERO DE FOLIO  *
//*                                                                    *
//* PASO:  2
//**********************************************************************
//PJL04P04 EXEC PGM=IKJEFT01
//ZMDJ16A1 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.ZMJLPE04,DISP=SHR
//*
//ZMDJ16A2 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.JLPE04.ARCHTEMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=350,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//ZMDJ16A3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMDJ16A4 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.CGOFOL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL04T06),DISP=SHR
//*
//**********************************************************************
//*                         --   SORT   --                             *
//* OBJETIVO:     SORT DEL ARCHIVO ANTERIOR                            *
//*                                                                    *
//* PASO:  3
//**********************************************************************
//PJL04P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.CGOFOL,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.CGOSORT,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//         UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZJL04T05),DISP=SHR
//*
//**********************************************************************
//*                         -- ZM4DJ017 --                             *
//* OBJETIVO:     GENERACION DE REPORTE DE CARGOS POR INSTITUCION      *
//*                                                                    *
//* PASO:  4
//**********************************************************************
//PJL04P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMDJ17A1 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.ZMJLPE04,DISP=SHR
//*
//ZMDJ17A2 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.CGOSORT,DISP=SHR
//*
//ZMDJ17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL04T04),DISP=SHR
//*
//**********************************************************************
//*                         -- ZM4DJ022 --                             *
//* OBJETIVO:     GENERACION DE REPORTE DE CARGOS POR INSTITUCION      *
//*               INCLUYE TEXTO CAPTURADO POR PROMOTOR                 *
//* PASO:  5
//**********************************************************************
//PJL04P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMDJ22A1 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.ZMJLPE04,DISP=SHR
//*
//ZMDJ22A2 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.CGOSORT,DISP=SHR
//*
//ZMDJ22R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL04T03),DISP=SHR
//*
//**********************************************************************
//*                 F I N   Z M J L P Z 0 4                            *
//**********************************************************************
