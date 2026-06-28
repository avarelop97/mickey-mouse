//ZMLLPZ29 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBLLPZ29                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZAR LA ASIGNACION PREVIA DE MDD.               *
//*                                                                    *
//*   CORRE ANTES DE  : CBLLPZ30                                       *
//*   CORRE DESPUES DE: SIVAXD7X                                       *
//*   CORRE DESPUES DE: CBLLPZ28                                       *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO.                 *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JULIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *
//* FECHA          :  NOVIEMBRE 2008.                                  *
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLN12                                                 *00020000
//* OBJETIVO: EJECUTA LA ASIGNACION PREVIA DE MDD PARA DEMANDA         *00030000
//*           ESPECIFICA.                                              *00040000
//*--------------------------------------------------------------------*00060000
//PLL29P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                 0007000
//*
//ZMLN12A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE29,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                   0023000
//SYSPRINT DD SYSOUT=*                                                   0024000
//SYSOUT   DD SYSOUT=*                                                   0025000
//SYSDBOUT DD SYSOUT=*                                                   0027000
//SYSABOUT DD DUMMY                                                      0028000
//SYSUDUMP DD DUMMY                                                      0029000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL29T09),DISP=SHR                    0030000
//*                                                                     00310000
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLN22                                                 *00020000
//* OBJETIVO: EJECUTA LA ASIGNACION PREVIA DE MDD CANGUBE              *00030000
//*--------------------------------------------------------------------*00060000
//PLL29P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                 0007000
//*
//ZMLN22A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE29,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                   0023000
//SYSPRINT DD SYSOUT=*                                                   0024000
//SYSOUT   DD SYSOUT=*                                                   0025000
//SYSDBOUT DD SYSOUT=*                                                   0027000
//SYSABOUT DD DUMMY                                                      0028000
//SYSUDUMP DD DUMMY                                                      0029000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL29T08),DISP=SHR                    0030000
//*                                                                     00310000
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLN21                                                 *00020000
//* OBJETIVO: EJECUTA LA ASIGNACION PREVIA DE MDD CANMORA Y CANFISI    *00030000
//*--------------------------------------------------------------------*00060000
//PLL29P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                 0007000
//*
//ZMLN21A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE29,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                   0023000
//SYSPRINT DD SYSOUT=*                                                   0024000
//SYSOUT   DD SYSOUT=*                                                   0025000
//SYSDBOUT DD SYSOUT=*                                                   0027000
//SYSABOUT DD DUMMY                                                      0028000
//SYSUDUMP DD DUMMY                                                      0029000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL29T07),DISP=SHR                    0030000
//*                                                                     00310000
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLD73                                                 *00020000
//* OBJETIVO: GENERA REPORTE DE ASIGNACIONES POR CLIENTE,              *00030000
//*           CONCENTRADO DE ASIGNACIONES POR CLIENTE                  *00040000
//*--------------------------------------------------------------------*00060000
//PLL29P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD73A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE29,DISP=SHR
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL29T06),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLD74                                                 *00020000
//* OBJETIVO: REPORTE DE ASIGNACIONES POR EMISORA.                     *00030000
//*--------------------------------------------------------------------*00060000
//PLL29P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD74A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE29,DISP=SHR
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL29T05),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLD77                                                 *00020000
//* OBJETIVO: REPORTE DE DEMANDA NO CUBIERTA. POSICION NO CUBIERTA.    *00030000
//*--------------------------------------------------------------------*00060000
//PLL29P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD77A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE29,DISP=SHR
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL29T04),DISP=SHR
//*
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLE11   (ANTES UN SPUFI BATCH)                        *00020000
//* OBJETIVO: PROGRAMA QUE INICIALIZA EL CTLPROC 'CAR' CARGA DE        *00030000
//*           INFORMACION PARA ASIGNACION DE MDD. (DELETE)             *00020000
//*--------------------------------------------------------------------*00060000
//PLL29P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE29,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL29T03),DISP=SHR                   00040000
//*
//*--------------------------------------------------------------------*00010000
//* PROGRAMA: ZM4DLN20                                                 *00020000
//* OBJETIVO: EJECUTA LA ASIGNACION PREVIA DE MDD PARA DEMANDA         *00030000
//*           ESPECIFICA.                                              *00020000
//*--------------------------------------------------------------------*00060000
//PLL29P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                 0007000
//*
//ZMLN20A2 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE29,DISP=SHR
//*
//ZMLN20A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.PONDERA,                       0023000
//            DISP=(NEW,CATLG,DELETE),                                   0023000
//            SPACE=(CYL,(10,5),RLSE),                                   0023000
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0),               0023000
//            UNIT=3390                                                  0023000
//*
//ZMLN20R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*                                                   0023000
//SYSPRINT DD SYSOUT=*                                                   0024000
//SYSOUT   DD SYSOUT=*                                                   0025000
//SYSDBOUT DD SYSOUT=*                                                   0027000
//SYSABOUT DD DUMMY                                                      0028000
//SYSUDUMP DD DUMMY                                                      0029000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL29T02),DISP=SHR                    0030000
//*                                                                     00310000
//*--------------------------------------------------------------------*
//*                    F I N   Z M L L P P 2 9                         *00020000
//*--------------------------------------------------------------------*
