//ZMHCPD21 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MERCADO DE CAPITALES.                            *
//*                                                                    *
//* PROCESO        :  CBHCND21.                                        *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE TALONES PARA EL PISO DE REMATES    *
//*                   MERCADO DE CAPITALES.                            *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO.                                         *
//*                                                                    *
//* A PARTIR DE    :  07:00 HRS.                                       *
//* HASTA          :  15:30 HSR.                                       *
//*                                                                    *
//* REALIZO        :  ERNESTO MANUEL CUAUTLE MARTINEZ.                 *
//*                                                                    *
//* FECHA          :  28 DE DICIEMBRE DE 2005.                         *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA DIARIO Y EN FORMA  *
//*                   CICLICA A TRAVES DE CONTROL-M POR PERIDOS DE     *
//*                   1  MINUTO.                                       *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC21P11     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DH001   *
//**********************************************************************
//* USUARIO :  SOFTWARE FACTORY MEXICO  ACCENTURE  (XM09016)          *
//*  PASO:        CAMBIO:                                              *
//*  PHC21P10     MODIFICACION DE LONGITUD DE ARCHIVOS DE 120 A 133    *
//*  PHC21P09     MODIFICACION DE LONGITUD DE ARCHIVOS DE 120 A 133    *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC21P11 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PF601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD21,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(04,02),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                        -- ZM4EH459 --                              *
//* OBJETIVO  :   CREA ARCHIVO DE SALIDA CON ORDENES NO PROCESADAS     *
//* ACTUALIZA :   ORDENES.                                             *
//**********************************************************************
//PHC21P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//ZMH459P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD21,DISP=SHR
//*
//ZMH459A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..Z459,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//         UNIT=3390,
//         SPACE=(CYL,(04,02),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC21T10),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4EGT96 --                              *
//* OBJETIVO  :   CREA ARCHIVO DE SALIDA CON ORDENES NO PROCESADAS     *
//* ACTUALIZA :   ORDENES.                                             *
//**********************************************************************
//PHC21P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//ZMHT96P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD21,DISP=SHR
//*
//ZMHT96A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZT96,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//         UNIT=3390,
//         SPACE=(CYL,(04,02),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC21T09),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4EH449 --                              *
//* OBJETIVO  :   GENERACION DE LOS TALONES DE ORDENES PARA SU         *
//*               OPERACION DEL PISO.                                  *
//**********************************************************************
//PHC21P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//ZM4449P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD21,DISP=SHR
//*
//ZM4449A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..Z459,
//         DISP=SHR
//*
//ZM4449R1 DD DSN=&&TALON,DISP=(,PASS,DELETE),UNIT=3390,
//         SPACE=(CYL,(04,02),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC21T08),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4EGT99 --                              *
//* OBJETIVO  :   GENERACION DE LOS TALONES DE ORDENES PARA SU         *
//*               OPERACION DEL PISO.                                  *
//**********************************************************************
//PHC21P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//ZM4T99P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD21,DISP=SHR
//*
//ZM4T99A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZT96,
//         DISP=SHR
//ZM4T99R1 DD DSN=&&TALON1,DISP=(,PASS,DELETE),UNIT=3390,
//         SPACE=(CYL,(04,02),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC21T07),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DH595 --                              *
//* OBJETIVO  :   GENERACION DE LOS TALONES DE CANCELACION DE ORDENES  *
//*               PARA SU OPERACION EN EL PISO.                        *
//**********************************************************************
//PHC21P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//ZM4595P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD21,DISP=SHR
//*
//ZM4595R1 DD DSN=&&TALCAN,DISP=(,PASS,DELETE),UNIT=3390,
//         SPACE=(CYL,(04,02),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC21T06),DISP=SHR
//*
//**********************************************************************
//*                        -- ZM4DGT94 --                              *
//* OBJETIVO  :   GENERACION DE LOS TALONES DE CANCELACION DE ORDENES  *
//*               PARA SU OPERACION EN EL PISO.                        *
//**********************************************************************
//PHC21P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//ZM4T94P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD21,DISP=SHR
//*
//ZM4T94R1 DD DSN=&&TALCAN1,DISP=(,PASS,DELETE),UNIT=3390,
//         SPACE=(CYL,(04,02),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC21T05),DISP=SHR
//*
//**********************************************************************
//*                        -- ICEGENER --                              *
//* OBJETIVO  :   IMPRESION DE TALONES EN LA IMPRESORA DA04.           *
//**********************************************************************
//PHC21P04 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD   DUMMY
//SYSPRINT DD   DUMMY
//SYSUT2   DD   SYSOUT=(S,,TALC),DEST=DA04
//SYSUT1   DD   DSN=&&TALCAN,DISP=(OLD,PASS)
//*
//**********************************************************************
//*                        -- ICEGENER --                              *
//* OBJETIVO  :   GENERACION DE TALONES.                               *
//**********************************************************************
//PHC21P03 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD   DUMMY
//SYSPRINT DD   DUMMY
//SYSUT2   DD   SYSOUT=(O,,TALC)
//SYSUT1   DD   DSN=&&TALCAN,DISP=(OLD,DELETE)
//*
//**********************************************************************
//*                        -- ICEGENER --                              *
//* OBJETIVO  :   IMPRESION DE TALONES EN LA IMPRESORA DA04.           *
//**********************************************************************
//PHC21P02 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD   DUMMY
//SYSPRINT DD   DUMMY
//SYSUT2   DD   SYSOUT=(S,,TACR),DEST=DA04
//SYSUT1   DD   DSN=&&TALCAN1,DISP=(OLD,PASS)
//*
//**********************************************************************
//*                        -- ICEGENER --                              *
//* OBJETIVO  :   GENERACION DE TALONES.                               *
//**********************************************************************
//PHC21P01 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD   DUMMY
//SYSPRINT DD   DUMMY
//SYSUT2   DD   SYSOUT=(O,,TACR)
//SYSUT1   DD   DSN=&&TALCAN1,DISP=(OLD,DELETE)
//*
