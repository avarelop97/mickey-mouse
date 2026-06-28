//ZMJDPZ11 PROC FECHA=000000
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *
//*                                                                    *
//* PROCESO        :  SIVAXRTE   (DISPARADOR) (ZMJDPP11 PROC)          *
//*                   CBJDPZ11   (JCL)                                 *
//*                   ZMJDPZ11   PROCEDIMIENTO                         *
//* OBJETIVO       :  IMPRESION DE REPORTE DE TENENCIA EXCEDIDA        *
//*                   SOLICITADOS POR EL USUARIO.                      *
//*                                                                    *
//* REALIZO        :  GESFOR  S.A. DE C.V.                             *
//*                                                                    *
//* OBSERVACIONES  :  ESTE PROCESO NO ACTUALIZA NINGUNA TABLA EXCEPTO  *
//*                   A PARAM EN EL ULTIMO PASO                        *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//**********************************************************************
//*AGP   | FEB-2013 |XM010RC|PJD11P00|SE A¦ADE CONDICION PARA DIFO     *
//**********************************************************************
//* PROGRAMA: ZM4EJ163
//* OBJETIVO: EMITIR REPORTE DE CONTRATOS CON TENENCIA MAYOR AL
//*           PROPORCIONADO EN CAPITAL SOCIAL DE SOCIEDADES DE INV.
//* PASO REINICIABLE POR RESTART
//**********************************************************************
//PJD11P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ163P1 DD DSN=MXCP.ZM.TMP.SIN.ECBP.ZMJDPE11,DISP=SHR
//ZMJ163R1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.REP.TENEXCED,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ163A1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.ARC.TENEXCED,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=230,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ163A2 DD DSN=MXCP.ZM.FIX.SDI.TENEXCED.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD11T03),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE TENENCIA EXCEDIDA CASA DE BOLSA Y BANCA PATRIMONIAL *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PJD11P01 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.ECBP.REP.TENEXCED,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSIN    DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//* AGP SE ADICIONA CONDICION PARA CONTROL-M, EN ALTAMIRA PARA DIFO    *
//*     REPORTE TENENCIA EXCEDIDA CASA DE BOLSA Y BANCA PATRIMONIAL    *
//*     CONDICION ADICIONADA: CBJDPZ11_OK_PR                           *
//**********************************************************************
//PJD11P00 EXEC  PGM=IOACND,PARM='ADD COND CBJDPZ11_OK_PR WDATE',
//             COND=(4,LT)
//       INCLUDE MEMBER=IOASET
//       INCLUDE MEMBER=IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMJDPZ11                       *
//**********************************************************************
