//ZMUFPM16  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCESO   :  ZMUFPM16                                            *
//*                FIN DE DIA MENSUAL DEL SIVA                         *
//*                                                                    *
//*   OBJETIVO  :  EMITIR REPORTE DE CONTRATOS VIGENTES DEL MES.       *
//*                - INTERFASES BATCH (TSO)                            *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMJFDD15                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   FECHA:  ENERO  2003                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*H.P.C.|04/AGO/03 |IDCEX52|TODOS   |APLICAR STANDARES DE PU.         *
//*--------------------------------------------------------------------*
//*A.S.P.|14/JUN/04 |IDCGAR |TODOS   |INTEGRACION A LA EMPRESA         *
//**********************************************************************
//*---------------------------------------------------------------------
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//*                                              ***RECIBE PARAMETROS  *
//*---------------------------------------------------------------------
//PUF16P07 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','   ','   ',)
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUFPM16,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*********************************************************************
//*                        PROGRAMA ZM4MHB27
//*  OBJETIVO:  GENERA EL REPORTE MENSUAL DE COMISIONES
//*                EMISORAS  MERCADO  DE  CAPITALES
//*********************************************************************
//PUF16P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHB27R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHB27A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUFPM16,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF16T06),DISP=SHR
//*
//*---------------------------------------------------------------------
//*                         = ZM4MUK55 =
//*             REPORTE DE SERVICIOS ACTIVADOS POR CONTRATO
//*                                                  *** CONTRATOS     *
//*---------------------------------------------------------------------
//PUF16P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//PI601765 DD DUMMY                                                     00228002
//*
//ZMUK55P1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUFPM16,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*
//ZMUK55R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMUK55A1 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUF16T05),DISP=SHR
//*
//*---------------------------------------------------------------------
//*                         = ZM4MUK59 =
//*     REPORTE QUE PRESENTE LOS CONTRATOS EXENTOS DE CARGOS VARIOS
//*                           K. S. S.
//*                                                  *** CONTRATOS     *
//*---------------------------------------------------------------------
//PUF16P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//PI601765 DD DUMMY                                                     00228002
//*
//ZMUK59P1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUFPM16,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*
//ZMUK59R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMUK59A1 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUF16T04),DISP=SHR
//*
//*---------------------------------------------------------------------
//*                         = ZM4MUK28 =
//*            RESUMEN DE CONTRATOS DESBLOQUEADOS POR 24 HRS.
//*                         R.M.R.M.
//*                                                  *** SOCINVER      *
//*---------------------------------------------------------------------
//PUF16P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//PI601765 DD DUMMY                                                     00228002
//*
//ZMUK28P1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUFPM16,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*
//ZMUK28R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUF16T03),DISP=SHR
//*
//*---------------------------------------------------------------------
//*                         = ZM4MUK09 =
//*            REPORTE DE CONTRATOS VIGENTES EN EL MES
//*                         K. S. S.
//*                                                  *** CHIP          *
//*---------------------------------------------------------------------
//PUF16P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//PI601765 DD DUMMY                                                     00228002
//*
//ZMUK09P1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUFPM16,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*
//ZMUK09R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUF16T02),DISP=SHR
//*
//*---------------------------------------------------------------------00221002
//*                         = ZM4MG001 =                                00221002
//*     REPORTE DE CLIENTES VIGENTES DE LA CASA DE BOLSA                00222002
//*                                                  *** SOCIEDADES    *
//*---------------------------------------------------------------------00223002
//PUF16P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//PI601765 DD DUMMY                                                     00228002
//*
//ZMG001P1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUFPM16,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*
//ZMG001R1 DD  DSN=MXCP.ZM.FIX.SIN.CLIENTE.MES,
//             DISP=(NEW,CATLG,CATLG),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE),
//             DCB=(RECFM=FB,LRECL=410,BLKSIZE=0,DSORG=PS)
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUF16T01),DISP=SHR
//*
//**********************************************************************
//*                    ----- ZM4DHV31 --                               *
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO DE CONTRATOS DE LA          *
//*            CASA DE BOLSA Y LA BANCA PATRIMONIAL, PARA EL           *
//*            REPORTE REGULATORIO IN-TI.                              *
//**********************************************************************
//PUF16P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//ZM4DHEP4 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUFPM16,DISP=SHR
//*
//ZM4DHEA4 DD DSN=MXCP.ZM.FIX.INTICTE.SSIVAMUV.MEN,
//        DISP=(NEW,CATLG,DELETE),
//        DCB=(RECFM=FB,LRECL=16,BLKSIZE=0,DSORG=PS),
//        UNIT=3390,
//        SPACE=(CYL,(5,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF16T00),DISP=SHR
//*
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMUFPM16                       *
//**********************************************************************
