//ZMJFPD18 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  PROCESO DE INVERSION DE IREFS DE TESORERIA          *
//*                                                                    *
//*   FECHA:  AGOSTO 2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |23-MAY-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//*--------------------------------------------------------------------*
//*@DGCM1|04-AGO-15 |FS-DGCM|PJF18P01|SE AGREGA LA SALIDA ZMGG16S1.    *
//*********************************************************************
//* PROGRAMA: ZM4DH014
//* OBJETIVO: ACTUALIZA LA TABLA VARLIMO DESDE AOPERUS PARA
//*           EL PERFIL DE 'TSZPRDIR' Y SUCURSAL 'ZPR', PARA
//*           DAR CONTINUIDAD AL CAMBIO DE HORARIOS
//*********************************************************************
//PJF18P08 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF18T10),DISP=SHR
//*
//*********************************************************************
//* PROGRAMA: ZM4VG002
//* OBJETIVO: ACTUALIZA TABLAS QUE CONTENGAN CAMPO EMPRESA
//*           CON CBP SI SON DIFERENTES A LA MISMA.      ** TEMPORAL
//*********************************************************************
//PJF18P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZMG002A1 DD DSN=MXCP.ZM.GDGD.TES.MONITOR.FDD(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            RECFM=FB,LRECL=250,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF18T05),DISP=SHR
//*
//*********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//*********************************************************************
//PJF18P06 EXEC PGM=ZM3DG001,COND=(4,LT),
//             PARM=('&EMP','&SUC','&INT1','&INT2')
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD18,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*********************************************************************
//* PROGRAMA: ZM4DJ745
//* OBJETIVO: CONCENTRADO DE BANCOS (BATCH)
//*********************************************************************
//PJF18P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ745A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD18,DISP=SHR
//*
//ZMJ745R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMJ745R2 DD  DSN=MXCP.ZM.VM03.TES.E&EMP.S.CONBAN.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(10,5),RLSE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=147,RECFM=FB),
//             UNIT=FJVTP
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF18T06),DISP=SHR
//*
//*********************************************************************
//* PROGRAMA: ZM4DJG45
//* OBJETIVO: GENERA ARCHIVO CON DEPOSITOS POR LINEA Y SPEUAS
//*           PARA INTERFAZ CONCILIACION BANCARIA       ** TESORERIA
//*********************************************************************
//PJF18P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZMJG45A1 DD  DSN=MXCP.ZM.VM03.TES.E&EMP..DEPOS.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(8,4),RLSE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=57,RECFM=FB),
//             UNIT=FJVTP
//ZMJG45AP DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD18,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF18T04),DISP=SHR
//*
//*********************************************************************
//* PROGRAMA: ZM4TJ753
//* OBJETIVO: EMISION DE RECIBOS T + 1 AUTOMATICAMENTE
//*                   PARA LAS SUCURSALES              *** TESORERIA
//*********************************************************************
//PJF18P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMG753A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD18,DISP=SHR
//ZMG798A1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF18T03),DISP=SHR
//*
//********************************************************************* 00400000
//* PROGRAMA: ZM4DGG77                                                  00410003
//* FUNCION:  PROGRAMA QUE GENERA IMPRESION DE LOS RECIBOS DE           00420001
//*           CREDITOS PARA CADA SUCURSAL.                              00421001
//*           TESORERIA.                                                00430001
//********************************************************************* 00450000
//PJF18P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00470002
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00500000
//SYSPRINT DD SYSOUT=*                                                  00510000
//SYSOUT   DD SYSOUT=*                                                  00520000
//SYSDBOUT DD SYSOUT=*                                                  00570000
//SYSABOUT DD DUMMY                                                     00580000
//SYSUDUMP DD DUMMY                                                     00590000
//ZMGG77A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD18,DISP=SHR
//ZMGG77R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00530003
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF18T02),DISP=SHR                   00600001
//*
//*********************************************************************
//* PROGRAMA: ZM4DGG16
//* OBJETIVO: RETORNAR EL IREF INVERTIDO A SU STATUS NORMAL
//*
//* PASO REINICIABLE POR RESTART                    *** TESORERIA
//*********************************************************************
//PJF18P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG16A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD18,DISP=SHR
//*@DGCM1-I
//ZMGG16S1 DD  DSN=MXCP.ZM.FIX.E&EMP..IREF.PGMGG16.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=042,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*@DGCM1-F
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF18T01),DISP=SHR
//*
