//ZMJPCZ13 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* LANZADOR       :  CBJCPZ13                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA REPORTE DE CONCILIACION ENTRE SIVA-DIFO,  *
//*                   SIVA-MUV CON Y SIN DIFERENCIAS                   *
//* REALIZO        :  FSW-DGCM (XM26224)                               *
//*                                                                    *
//* FECHA          :  4 SEPTIEMBRE 2013                                *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA         DESCRIPCION                   *
//* ----------- --------- -------  ------------------------------------*
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* PASO       : PCZ13P13                                              *
//* PROGRAMA   : IKJEFT01 / ZM4EJ180                                   *
//* OBJETIVO   : GENERA ARCHIVOS PARA LA CONCILIACION SIVA - DIFO Y    *
//*              SIVA - MUV                                            *
//**********************************************************************
//PCZ13P13 EXEC PGM=IKJEFT01
//*
//******** ARCHIVO QUE PROPORCIONA DIFO RESUMEN POSICION SOC. INV. *****
//ZME180A2 DD DSN=MBVP.TP.FIX.TP4CRPO1.RESUMEN.D&FECHA,
//            DISP=SHR
//ZME180A3 DD DSN=MXCP.ZM.TMP.SI1.RES.POS.ORI.DIFO.CONCIL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZME180A4 DD DSN=MXCP.ZM.TMP.SI1.RES.CTA.CON.DIFO.CONCIL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZME180A5 DD DSN=MXCP.ZM.TMP.SI1.RES.CTA.CON.MUV.CONCIL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZME180A6 DD DSN=MXCP.ZM.TMP.SI1.RES.POS.ORI.MUV.CONCIL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCZ13T01),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P12                                              *
//* PROGRAMA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO POSICION DIFO POR EMISORA, SERIE,   *
//*              CUPON                                                 *
//**********************************************************************
//PCZ13P12 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.SI1.RES.POS.ORI.DIFO.CONCIL,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SI1.RES.POS.ORI.DIFO.CONCIL.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCZ13T04),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P11                                              *
//* PROGRAMA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO POSICION DIFO POR EMISORA, SERIE,   *
//*              CUPON                                                 *
//**********************************************************************
//PCZ13P11 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.SI1.RES.CTA.CON.DIFO.CONCIL,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SI1.RES.CTA.CON.DIFO.CONCIL.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCZ13T04),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P10                                              *
//* PROGRAMA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO POSICION DIFO POR EMISORA, SERIE,   *
//*              CUPON                                                 *
//**********************************************************************
//PCZ13P10 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.SI1.RES.POS.ORI.MUV.CONCIL,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SI1.RES.POS.ORI.MUV.CONCIL.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCZ13T04),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P09                                              *
//* PROGRAMA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO POSICION DIFO POR EMISORA, SERIE,   *
//*              CUPON                                                 *
//**********************************************************************
//PCZ13P09 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.SI1.RES.CTA.CON.MUV.CONCIL,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SI1.RES.CTA.CON.MUV.CONCIL.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCZ13T04),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P08                                              *
//* PROGRAMA   : IKJEFT01 / ZM4EJ181                                   *
//* OBJETIVO   : GENERA LISTADOS DE CONCILIACION SIVA - DIFO           *
//**********************************************************************
//PCZ13P08 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMJ181E1 DD DSN=MXCP.ZM.FIX.SI1.RES.POS.ORI.DIFO.CONCIL.SRT,
//            DISP=SHR
//ZMJ181E2 DD DSN=MXCP.ZM.FIX.SI1.RES.CTA.CON.DIFO.CONCIL.SRT,
//            DISP=SHR
//ZMJ181S1 DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.DIFO.SIN.DIF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMJ181S2 DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.DIFO.CON.DIF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMJ181S3 DD DSN=MXCP.ZM.FIX.SI1.EXE.CONCIL.SIVA.DIFO.SIN.DIF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=235,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMJ181S4 DD DSN=MXCP.ZM.FIX.SI1.EXE.CONCIL.SIVA.DIFO.CON.DIF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=235,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCZ13T02),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P07                                              *
//* PROGRAMA   : IKJEFT01 / ZM4EJ181                                   *
//* OBJETIVO   : GENERA LISTADOS DE CONCILIACION SIVA - MUV            *
//**********************************************************************
//PCZ13P07 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMJ181E1 DD DSN=MXCP.ZM.FIX.SI1.RES.POS.ORI.MUV.CONCIL.SRT,
//            DISP=SHR
//ZMJ181E2 DD DSN=MXCP.ZM.FIX.SI1.RES.CTA.CON.MUV.CONCIL.SRT,
//            DISP=SHR
//ZMJ181S1 DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.MUV.SIN.DIF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMJ181S2 DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.MUV.CON.DIF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMJ181S3 DD DSN=MXCP.ZM.FIX.SI1.EXE.CONCIL.SIVA.MUV.SIN.DIF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=235,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMJ181S4 DD DSN=MXCP.ZM.FIX.SI1.EXE.CONCIL.SIVA.MUV.CON.DIF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=235,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCZ13T03),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P06                                              *
//* PROGRAMA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA MERGE DE LA CONCILIACION SIVA-DIFO PARA CTRL-D*
//**********************************************************************
//PCZ13P06 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.DIFO.SIN.DIF,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.DIFO.CON.DIF,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.DIFO.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCZ13T05),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P05                                              *
//* PROGRAMA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA MERGE DE LA CONCILIACION SIVA-MUV PARA CTRL-D *
//**********************************************************************
//PCZ13P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.MUV.SIN.DIF,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.MUV.CON.DIF,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.MUV.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCZ13T05),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P04                                              *
//* PROGRAMA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA MERGE DE LA CONCILIACION SIVA-DIFO PARA EXCEL *
//**********************************************************************
//PCZ13P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.SI1.EXE.CONCIL.SIVA.DIFO.SIN.DIF,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SI1.EXE.CONCIL.SIVA.DIFO.CON.DIF,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SI1.EXE.CONCIL.SIVA.DIFO.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=235,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCZ13T05),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P03                                              *
//* PROGRAMA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA MERGE DE LA CONCILIACION SIVA-MUV PARA EXCEL  *
//**********************************************************************
//PCZ13P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.SI1.EXE.CONCIL.SIVA.MUV.SIN.DIF,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SI1.EXE.CONCIL.SIVA.MUV.CON.DIF,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SI1.EXE.CONCIL.SIVA.MUV.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=235,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCZ13T05),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCZ13P02                                              *
//* PROGRAMA   : ICEGENER                                              *
//* OBJETIVO   : MANDA A CTRL-D REPORTE DE CONCILIACION SIVA-DIFO      *
//**********************************************************************
//PCZ13P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.DIFO.D&FECHA,
//            DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO       : PCZ13P01                                              *
//* PROGRAMA   : ICEGENER                                              *
//* OBJETIVO   : MANDA A CTRL-D REPORTE DE CONCILIACION SIVA-MUV       *
//**********************************************************************
//PCZ13P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.SI1.REP.CONCIL.SIVA.MUV.D&FECHA,
//            DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                 TERMINA PROCESO ZMJPCZ13                           *
//**********************************************************************
