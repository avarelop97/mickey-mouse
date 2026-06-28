//ZMJFPD07 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                  << C A R G O S  V A R I O S >>                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES ( M.U.V )               *
//*                                                                    *
//*   PROCEDIM. :  ZMJFPD07                                            *
//*                                                                    *
//*   OBJETIVO  :  GENEREA MOVTOS INDICATIVOS PARA CONTABILIDAD.       *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*   CORRE ANTES DE  :  CBJFCD08                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  CBUFND14                                      *
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
//*GETRO-| 24/04/09 |IDCEX24|PJF07P03|SE ANEXA PASO DE REPORTE DEFINI- *
//*NICS  |          |       |        |TIVO DE CARGOS VARIOS.           *
//**********************************************************************
//*                        RECIBE PARAMETROS
//**********************************************************************
//*
//PJF07P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','   ','   ','   ',)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.TES.E&EMP..ZMJFPD07,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                        -- ZM4EJ807 --                              *
//*  MODULO   : CARGOS VARIOS                                          *
//*  OBJETIVO : GENERA REPORTE DE CARGOS VARIOS APLICADOS A CLIENTES   *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//*
//PJF07P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ807R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF07T03),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DGF26 --                              *
//*  MODULO : CARGOS VARIOS                                            *
//*  GENERA MOVS IND (MOVIND) CON AFECT CC, CG, CC                     *
//*         (INSERTA EN MOVIND)                                        *
//*                                                                    *
//*  CADA QUE SE EJECUTA DEPURA LOS MOVIMIENTOS QUE SE HAYAN GENERADO  *
//*  POR ESTE PROGRAMA EN CORRIDA ANTERIOR DE LA TABLA MOVIND          *
//*  <<<<<   NO GUARDA NINGUN ORDEN CON EL VNBF13D  >>>>>*PROC.ESTADIS.*
//**********************************************************************
//*
//PJF07P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGF26R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGF26A1 DD DSN=MXC&AMB..ZM.TMP.TES.E&EMP..ZMJFPD07,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF07T01),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DGF13 --                              *
//*  MODULO : CARGOS VARIOS                                            *
//*  OBJETIVO :                                                        *
//*  GENERA MOVS. IND(MOVIND) VIRTUALES.                               *
//*         (INSERTA EN MOVIND)                                        *
//*                                                                    *
//*  CADA QUE SE EJECUTA DEPURA LOS MOVIMIENTOS QUE SE HAYAN GENERADO  *
//*  POR ESTE PROGRAMA EN CORRIDA ANTERIOR DE LA TABLA MOVIND          *
//*  <<<<<   NO GUARDA NINGUN ORDEN CON EL VNBF26D  >>>>>              *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                  ***PROC.ESTADISTICO *
//**********************************************************************
//*
//PJF07P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGF13R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGF13A1 DD DSN=MXC&AMB..ZM.TMP.TES.E&EMP..ZMJFPD07,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF07T02),DISP=SHR
//*
