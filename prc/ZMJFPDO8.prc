//ZMJFPDO8 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << T E S O R E R I A  >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJFPDO8                                            *
//*                                                                    *
//*   OBJETIVO  :     REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *00100000
//*   5TA. PARTE   :  ACTUALIZACION TESORERIA PREVIA A REPORTES        *00121000
//*                                                                    *00110000
//*   TABLAS       :  INSERTA Y ACTUALIZA CARTERA                      *
//*                                                                    *
//*                                                                    *00122200
//*   CORRE ANTES DE   :CBJFCD10, CBJFND11, CBJFCD12                   *00122300
//*                                                                    *00122400
//*   CORRE DESPUES DE :CBJFCD07                                       *00122500
//*                                                                    *
//*                                                                    *
//*   PERIODICIDAD    :  FIN DE DIA                                    *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JUNIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |11-JUN-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//*      |          |       |        |                                 *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJF08P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','   ','   ','   ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPDO8,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************00230000
//* PROGRAMA: ZM4DHA28                                                  00240000
//* OBJETIVO: DIARIO DE OPERACIONES POR EMISORA :                       00250000
//*           CAPITALES, SOCIEDADES DE INVERSION Y MERCADO DE DINERO    00260000
//* PASO REINICIABLE POR RESTART                       ***VALORES       00280000
//**********************************************************************00290000
//*PJF08P05 EXEC PGM=IKJEFT01,COND=(4,LT)                               00310000
//*PI601765 DD DUMMY
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   00320000
//*SYSPRINT DD SYSOUT=*                                                 00330000
//*SYSOUT   DD SYSOUT=*                                                 00340000
//*SYSDBOUT DD SYSOUT=*                                                 00350000
//*SYSABOUT DD DUMMY                                                    00360000
//*SYSUDUMP DD DUMMY                                                    00370000
//*ZMHA28P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPDO8,DISP=SHR
//*ZMHA28A1 DD DSN=MXCP.ZM.GDGD.OTR.E&EMP..DIARIO(0),DISP=SHR           00380000
//*ZMHA28R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMHA28RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                         00400000
//*SORTWK02 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                         00410000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF08T01),DISP=SHR                  00420000
//*                                                                     00134000
//********************************************************************* 00040000
//* PROGRAMA: ZM4EHA28                                                  00240000
//* OBJETIVO: DIARIO DE OPERACIONES POR EMISORA :                       00250000
//*           CAPITALES, SOCIEDADES DE INVERSION Y MERCADO DE DINERO    00260000
//* ACUMULATIVO DEL ARCHIVO ZMHA28P1
//********************************************************************* 00060000
//*PJF08P04 EXEC PGM=IKJEFT01,COND=(4,LT)                               00070000
//*PI601765 DD DUMMY
//*ZMHA28P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPDO8,DISP=SHR
//*ZMHA28A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..ZMHA28P1(0),DISP=SHR         00151028
//*ZMHA28RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SORTWK01 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                         00200021
//*SORTWK02 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)                         00210021
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   00230000
//*SYSPRINT DD SYSOUT=*                                                 00240000
//*SYSOUT   DD SYSOUT=*                                                 00250000
//*SYSDBOUT DD SYSOUT=*                                                 00270000
//*SYSABOUT DD DUMMY                                                    00280000
//*SYSUDUMP DD DUMMY                                                    00290000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF08T02),DISP=SHR                  00300000
//*                                                                     00134000
//**********************************************************************
//* PROGRAMA: IDCAMS                                                    00240000
//* OBJETIVO: BORRA Y CREA ARCHIVO VSAM CARCLI.ONLINE2
//**********************************************************************
//PJF08P03 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJF08T03),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: IDCAMS                                                    00240000
//* OBJETIVO: COPIA UN ARCHIVO SECUENCIAL EN UN VSAM
//**********************************************************************
//PJF08P02 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..ZMHA28P1(0),DISP=SHR
//*               ARCHIVO VSAM
//OUTPUT   DD DSN=SIVA.VAL.FIX.E&EMP..RES.CARCLI.ONLINE,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJF08T04),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DJ803
//* OBJETIVO: ACTUALIZA EFECTIVO COMPROMETIDO DE TESORERIA
//*           (ACTUALIZA E INSERTA CARTERA)
//* PASO REINICIABLE POR RESTART                         *** TESORERIA *
//**********************************************************************
//PJF08P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ803A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPDO8,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF08T05),DISP=SHR
//*
