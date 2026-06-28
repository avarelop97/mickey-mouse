//ZMJLPZ02 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                      >>>>  TESORERIA   <<<<                        *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  CBJLPZ02                                            *
//*   PROCEDIM. :  ZMJLPZ02                                            *
//*                PRODUCCION TESORERIA EMISION DE RECIBOS DE CRED.    *
//*                                                                    *
//*   OBJETIVO  :  EMISION DE RECIBOS DE CREDITO                       *
//*                (OPCION 567)                                        *
//*                                                                    *
//*   CORRE ANTES DE  : NINGUNO                                        *
//*                                                                    *
//*   CORRE DESPUES DE: SIVAXERB                                       *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO.                 *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//* MODIFICO       :  ANGELICA GARCIA (AZERTIA)                        *
//* FECHA          :  OCTUBRE/ 2004                                    *
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
//*                         -- ZM4DJ018 --                             *
//* PASO:  2      GENERACION DE REPORTE DE CREDITOS POR NUMERO DE FOLIO*
//*                                                                    *
//**********************************************************************
//PJL02P04 EXEC PGM=IKJEFT01
//ZMDJ18A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE02,DISP=SHR
//*
//ZMDJ18A2 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.JLPE02.ATEMP,
//            DISP=(NEW,PASS),
//            DCB=(RECFM=FB,LRECL=350,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//ZMDJ18A3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMDJ18A4 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.CRDFOL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL02T05),DISP=SHR
//*
//**********************************************************************
//*                         --   SORT   --                             *
//* OBJETIVO:     SORT DEL ARCHIVO ANTERIOR                            *
//*                                                                    *
//* PASO:  3
//**********************************************************************
//PJL02P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.CRDFOL,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.CRDSORT,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0),
//         UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL02T04),DISP=SHR
//*
//**********************************************************************
//*                         -- ZM4DJ019 --                             *
//* PASO:  4      GENERACION DE REPORTE DE CREDITOS POR INSTITUCION    *
//*                                                                    *
//**********************************************************************
//PJL02P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMDJ19A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE02,DISP=SHR
//*
//ZMDJ19A2 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.CRDSORT,
//            DISP=(OLD,PASS)
//*
//ZMDJ19R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL02T03),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *
//*  PASO:  5     CONFIRMACION GLOBAL DE CREDITOS.                     *00030000
//*                                                         ZM4EJ748   *
//**********************************************************************00060000
//PJL02P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ748A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE02,DISP=SHR
//*
//ZMJ748R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMJ748A2 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.JLPE02.ATEM1,
//            DISP=(NEW,PASS),
//            DCB=(LRECL=124,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL02T02),DISP=SHR
//*
//**********************************************************************00010000
//*                F I N    Z M J L P Z 0 2                            *
//**********************************************************************00060000
