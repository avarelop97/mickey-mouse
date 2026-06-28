//ZMJIPD05 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    <<SOCIEDADES DE INVERSION>>                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  CONFIRMAR REGRESO DE POZOS.                         *
//*                                                                    *
//*   REALIZACION : JUAN MACEDO MONTES DE OCA(COFTTEK)                 *
//*                                                                    *
//*   FECHA:  JUNIO 2004                                               *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* 1    |20040701  |IDCEX73|PJI05P05|SE INSERTA ARCHIVO DE FOLIOS     *
//**********************************************************************
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PJI05P20 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC',' ',' ',)
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
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD05,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                          === ZM4DJ005 ===                          *
//*                                                                    *
//* OBJETIVO : VERIFICAR LA RESPUESTA DE POZOS A LOS MOV ENVIADOS      *
//*                                                                    *
//* ACTUALIZA TABLA : OPERTET.                                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//*
//PJI05P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJI04T06),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DJ771 ===                          *
//*                                                                    *
//* OBJETIVO : REPORTAR CONFIRMACION DE CHEQUES DIA SIGUIENTE          *
//*                                                                    *
//* ACTUALIZA TABLA : SIVA,CARTERA,OPERTES.                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//*
//PJI05P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VTB798A1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZMJ771P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD05,
//         DISP=SHR
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJI02T05),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4MGG37 --                              *
//* OBJETIVO : TRANSFERIR MOVIMIENTOS DE CARGOS VARIOS A SIVA Y SIVA-  *
//*            TES Y ELIMINARLOS DE SIVATE Y OPERTET                   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//*
//PJI05P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMGG37P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD05,
//         DISP=SHR
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJI02T04),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DJ784 ===                          *
//*                                                                    *
//* OBJETIVO : REPORTAR CONFIRMACION DE MOVIMIENTOS POTENCIALES        *
//*                                                                    *
//* ACTUALIZA TABLA : SIVA,CARTERA,OPERTES.                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//*
//PJI05P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//VTB798A1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZMJ784P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD05,
//         DISP=SHR
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJI02T03),DISP=SHR
//*
//**********************************************************************
//*                         -- ZM4DGG17 --                             *
//*                                                                    *
//* OBJETIVO : INSERTAR REGISTROS DUMMY'S EN LA TABLA CTLPROC PARA     *
//*            QUE LOS USUARIOS DE TESORERIA Y SOCIEDADES DE INVERSION *
//*            PUEDEN SIVAR                                            *
//*                                                                    *
//*            EQUIVALE A INILUES INCLUSIVE                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//*
//PJI05P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMGG17P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD05,
//         DISP=SHR
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJI02T02),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DGG14 --                              *
//* OBJETIVO : MARCA EL FIN    DE INIDIA DE TESORERIA                  *
//*            (TERMINA CONTINGECIA)   CTLPROC IT1                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                       *** TESORERIA   *
//**********************************************************************
//*
//PJI05P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*GCM
//ZMGG14A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD05,
//         DISP=SHR
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJI02T07),DISP=SHR
//*
//**********************************************************************
//* PEND            FIN DE PROCEDIMIENTO ZMGIPD05                      *
//**********************************************************************
