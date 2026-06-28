//ZMLLPZ30 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBLLPZ30                                            *
//*                                                                    *
//*   OBJETIVO  :  EJECUTA LA ASIGNACION PREVIA DE MERCADO  DE DINERO  *
//*                                                                    *
//*   CORRE ANTES DE  : NINGUNO                                        *
//*                                                                    *
//*   CORRE DESPUES DE: SIVAXE7X                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JUNIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//**********************************************************************
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *
//* FECHA          :  NOVIEMBRE 2008.                                  *
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLN52                                                 *00020000
//* OBJETIVO: EJECUTA LA ASIGNACION PREVIA DE MDD PARA LA DEMANDA      *00030000
//*           ESPECIFICA 1 DIA.                                        *00040000
//*           ACTUALIZA: ASIGNA, DEMASAU, OFERTA  Y CTLPROC.           *00020000
//*--------------------------------------------------------------------*00060000
//PLL30P08 EXEC PGM=IKJEFT01                                             0007000
//*
//ZMLN52A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE30,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                   0023000
//SYSPRINT DD SYSOUT=*                                                   0024000
//SYSOUT   DD SYSOUT=*                                                   0025000
//SYSDBOUT DD SYSOUT=*                                                   0027000
//SYSABOUT DD DUMMY                                                      0028000
//SYSUDUMP DD DUMMY                                                      0029000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL30T08),DISP=SHR                    0030000
//*                                                                     00310000
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLN19                                                 *00020000
//* OBJETIVO: EJECUTA LA ASIGNACION PREVIA DE MDD PARA LA DEMANDA      *00030000
//*           ESPECIFICA PLAZO.                                        *00040000
//*           ACTUALIZA: ASIGNA, DEMASAU, OFERTA  Y CTLPROC.           *00020000
//*--------------------------------------------------------------------*00060000
//PLL30P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                 0007000
//*
//ZMLN19A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE30,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                   0023000
//SYSPRINT DD SYSOUT=*                                                   0024000
//SYSOUT   DD SYSOUT=*                                                   0025000
//SYSDBOUT DD SYSOUT=*                                                   0027000
//SYSABOUT DD DUMMY                                                      0028000
//SYSUDUMP DD DUMMY                                                      0029000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL30T07),DISP=SHR                    0030000
//*                                                                     00310000
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLD73                                                 *00020000
//* OBJETIVO: GENERA REPORTE DE ASIGNACIONES POR CLIENTE Y             *00030000
//*           CONCENTRADO DE ASIGNACIONES POR CLIENTE                  *00040000
//*--------------------------------------------------------------------*00060000
//PLL30P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD73A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE30,DISP=SHR
//*
//ZMLD73R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLD73R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL30T06),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLD74                                                 *00020000
//* OBJETIVO: GENERA REPORTE DE ASIGNACIONES POR EMISORA               *00030000
//*--------------------------------------------------------------------*00060000
//PLL30P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD74A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE30,DISP=SHR
//*
//ZMLD74R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLD74R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL30T05),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLD77                                                 *00020000
//* OBJETIVO: GENERA REPORTE DE DEMANDA NO CUBIERTA  Y DE              *00030000
//*           POSICION DE OFERTA.                                      *00020000
//*--------------------------------------------------------------------*00060000
//PLL30P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD77A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE30,DISP=SHR
//*
//ZMLD77R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLD77R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL30T04),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLE11   (ANTES UN SPUFI BATCH)                        *00020000
//* OBJETIVO: PROGRAMA QUE INICIALIZA EL CTLPROC 'CAR'. CARGA DE       *00030000
//*           INFORMACION PARA ASIGNACION DE MERCADO DE DINERO.        *00020000
//*--------------------------------------------------------------------*00060000
//PLL30P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009000
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE30,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*                                                  00010000
//SYSABOUT DD DUMMY                                                     00020000
//SYSUDUMP DD DUMMY                                                     00030000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL30T03),DISP=SHR                   00040000
//*
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLN20                                                 *00020000
//* OBJETIVO: EJECUTA LA ASIGNACION PREVIA DE MDD PARA DEMANDA         *00030000
//*           ESPECIFICA.                                              *00020000
//*--------------------------------------------------------------------*00060000
//PLL30P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                 0007000
//*
//ZMLN20A2 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE30,DISP=SHR
//*
//ZMLN20A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.PONDERA,                       0023000
//            DISP=(NEW,CATLG,DELETE),                                   0023000
//            SPACE=(CYL,(10,5),RLSE),                                   0023000
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0),               0023000
//            UNIT=3390                                                  0023000
//ZMLN20R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                      0023000
//SYSTSPRT DD SYSOUT=*                                                   0023000
//SYSPRINT DD SYSOUT=*                                                   0024000
//SYSOUT   DD SYSOUT=*                                                   0025000
//SYSDBOUT DD SYSOUT=*                                                   0027000
//SYSABOUT DD DUMMY                                                      0028000
//SYSUDUMP DD DUMMY                                                      0029000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL30T02),DISP=SHR                    0030000
//*
//**********************************************************************00010000
//*                 F I N      Z M L L P Z 3 0                         *00020000
//**********************************************************************00060000
