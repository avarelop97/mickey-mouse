//ZMJDPE11 PROC EMP=CBP,SUC=ZPR,INT1=,INT2=,FECHA=000000
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *
//*                                                                    *
//* PROCESO        :  SIVAXRTE   (DISPARADOR)                          *
//*                   ZMJDPE11   PROCEDIMIENTO                         *
//*                                                                    *
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
//*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//*                        RECIBE PARAMETROS
//**********************************************************************
//PJD11P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.ECBP.ZMJDPE11,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//* PROGRAMA: ZM4EJ163
//* OBJETIVO: EMITIR REPORTE DE CONTRATOS CON TENENCIA MAYOR AL
//*           PROPORCIONADO EN CAPITAL SOCIAL DE SOCIEDADES DE INV.
//* PASO REINICIABLE POR RESTART
//**********************************************************************
//PJD11P03 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PJD11P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.ECBP.REP.TENEXCED,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-D                       *
//**********************************************************************
//PJD11P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSCF_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMJDPE11                       *
//**********************************************************************
