//ZMJFPDS8 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *
//*                                                                    *
//* PROCESO        :  CBJFNDS8   (DISPARADOR)                          *
//*                   ZMJFPDS8   PROCEDIMIENTO                         *
//*                                                                    *
//* OBJETIVO       :  IMPRESION DE REPORTES VARIOS DE SOC. INV.        *
//*                   SOLICITADOS POR EL USUARIO.                      *
//*                                                                    *
//* REALIZO        :  ASATECK S.A. DE C.V.                             *
//*                                                                    *
//* OBSERVACIONES  :  ESTE PROCESO NO ACTUALIZA NINGUNA TABLA EXCEPTO  *
//*                   A PARAM EN EL ULTIMO PASO                        *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |17-JUL-03 |IDCEX30|        | ADECUACIONES A ESTANDARES P.U.  *
//**********************************************************************
//*ACV*SIVA*PENDIENTE*HPC***********************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//*                        RECIBE PARAMETROS
//**********************************************************************
//PJFS8P12 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','   ','   ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EJ162
//* OBJETIVO: EMITIR REPORTE DE CONTRATOS CON TENENCIA MAYOR AL
//*           PROPORCIONADO EN CAPITAL SOCIAL DE SOCIEDADES DE INV.
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJFS8P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMG162P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//*ZMG162R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T01),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DH934
//* OBJETIVO: EMITIR REPORTE DE OPERACIONES DE SOCINVER.
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//PJFS8P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH934P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMH934R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMH934R1 DD DSN=MXCP.ZM.FIX.ZMJFPDS8.REPORTE1,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(5,10),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//*            UNIT=3390
//*
//ZMH934R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T02),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ165
//* OBJETIVO: EMITIR REPORTE DEMOVIMIENTOS POR RANGO
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJFS8P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMJ165P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//*ZMJ165R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T03),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EJ177
//* OBJETIVO: EMITIR REPORTE DE CLIENTES EN SOC. DE INVERSION POR
//*           INSTRUMNETO
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJFS8P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMJ177P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//*ZMJ177R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T04),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4MJ168
//* OBJETIVO: EMITIR REPORTE DE TENENCIA POR RANGOS - S.I.
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJFS8P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMJ168P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//*ZMJ168R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T05),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EJ173
//* OBJETIVO: EMITIR REPORTE DE CLIENTES CON POSICION EN S.I.
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJFS8P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMG173P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//*ZMG173R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T06),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4MJ167
//* OBJETIVO: EMITIR REPORTE DE POSICIONES TRANSPASADAS - S.I.
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJFS8P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMG167P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//*ZMG167R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T07),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4EJ171
//* OBJETIVO: EMITIR REPORTE DE POSICION DE CLIENTES EXTRANJEROS S.I.
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJFS8P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMJ171P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//*ZMJ171R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T08),DISP=SHR
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*---------------------------------------------------------------------01130000
//* PROGRAMA: ZM4MJ171                                                  01140000
//* OBJETIVO: REPORTE PARA SOCIEDADES DE INVERSION                      01150000
//*---------------------------------------------------------------------01170000
//PJFS8P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                01190000
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01230000
//SYSPRINT DD SYSOUT=*                                                  01240000
//SYSOUT   DD SYSOUT=*                                                  01250000
//ZMJ171P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMJ171RC DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    01290000
//*ZMJ171RC DD DSN=MXCP.ZM.FIX.ZMJFPDS8.REPORTE2,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(5,10),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//*            UNIT=3390
//*
//ZMJ171RC DD DUMMY                                                     01290000
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*SOCEXT   DD DSN=GFPP.CB.FIX.SOCEXT,         (NOMBRE EN PU)  (CB-PU)  01300000
//*OCEXT   DD DSN=SIVA.SIN.FIX.E&EMP..SOCEXT,                           01300000
//SOCEXT   DD DSN=MXCP.ZM.FIX.E&EMP..SOCEXT,                            01300000
//            DISP=(NEW,CATLG,DELETE),                                  01300000
//            SPACE=(CYL,(16,8),RLSE),                                  01310000
//            DCB=(RECFM=FB,LRECL=87,BLKSIZE=0,DSORG=PS),               01320000
//            UNIT=3390                                                 01310000
//SYSDBOUT DD SYSOUT=*                                                  01330000
//SYSABOUT DD SYSOUT=*                                                  01340000
//SYSUDUMP DD DUMMY                                                     01350000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T09),DISP=SHR                   01360000
//*                                                                     01370000
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ188
//* OBJETIVO: BORRAR PARAMETROS DE EJECUCION --- S.I.
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//PJFS8P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ188P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T10),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4MS057
//* OBJETIVO: GENERAR REPORTE Y ARCHIVO DE POSICION MENSUAL
//*           DE BBVPRO PARA EL AREA DE RELACIONES ACCIONARIAS
//* PASO REINICIABLE POR RESTART
//* JFE     ->    SE CAMBIA LONGITUD EN ARCHIVO DE 81 A 86 POSICIONES
//* 10/04/06      POR INCORPORACION DE CAMPO ITVBMV.
//*---------------------------------------------------------------------
//PJFS8P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMS057P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPDS8,DISP=SHR
//*ZMS057M  DD DSN=GFPP.CB.FIX.REPBBVP,        (NOMBRE EN PU)  (CB-PU)
//*MS057M  DD DSN=SIVA.SIN.FIX.E&EMP..REPBBVP,
//ZMS057M  DD DSN=MXCP.ZM.FIX.E&EMP..REPBBVP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*FILR57M  DD DSN=GFPP.CB.FIX.ARCBBVP,        (NOMBRE EN PU)  (CB-PU)
//*ILR57M  DD DSN=SIVA.SIN.FIX.E&EMP..ARCBBVP,
//FILR57M  DD DSN=MXCP.ZM.FIX.E&EMP..ARCBBVP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//*           DCB=(DSORG=PS,LRECL=81,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=86,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJFS8T11),DISP=SHR
//*
//**********************************************************************
//*                         -- ZM4DGE61 --                             *
//* OBJETIVO: ACTUALIZACION DIARIA A CUENTA AL CAMPO FULTMOV           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                ***PROC. ESTADISTICO   *
//**********************************************************************
//PJFS8P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMLE61P1 DD DSN=MXCP.ZM.TMP.TES.&EMP..ZMJFPD05,
//         DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T09),DISP=SHR
//*
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMJFPDS8                       *
//**********************************************************************
