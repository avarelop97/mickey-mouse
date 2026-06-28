//ZMJLPEZ1 PROC
//*********************************************************************
//*                     C A S A   D E   B O L S A                     *
//*                     =========================                     *
//*                    << MERCADO DE CAPITALES >>                     *
//*                                                                   *
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  *
//*                                                                   *
//*   JCL              :  SIVAXAPM                                    *
//*                                                                   *
//*   CADENA           :  OPCION ZA1 -> JCL SIVAXAPM -> PRC ZMJLPEA1  *
//*                                                                   *
//*   OBJETIVO         :  RECOLECCION DE INFORMACION DE ACCIONES      *
//*                       PROPIAS DE DIFERENTES MODULOS               *
//*                                                                   *
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION ZA1 P/USUARIO     *
//*                                                                   *
//*   CORRE ANTES   DE :  NINGUNO                                     *
//*                                                                   *
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      *
//*                                                                   *
//*   ELABORADO POR    :  JOSE LUIS GUTIERREZ ORTEGA                  *
//*                                                                   *
//*   FECHA            :  NOVIEMBRE/ 2006                             *
//*********************************************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJLZ1P14 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('BCM','000','BCM000',' ')
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.EBCM.ZMJLPEZ1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//* OBJETIVO : GENERAR EL EVENTO ZA1 EN CTLPROC.
//* TABLA QUE ACTUALIZA : CTLPROC.
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//PJLZ1P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLE11A1 DD  DSN=MXCP.ZM.FIX.TES.EBCM.ZMJLPEZ1,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJLA1T0A),DISP=SHR
//*
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DATOS NECESARIOS PARA GENERAR EL ARCHIVO        *00022700
//*--------------------------------------------------------------------*00022800
//PJLZ1P00 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00022900
//          PARM='MXP1,ZMPA0195,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJLA1T01),DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMJLPEZ1.UNLOAD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00023900
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00024000
//            SPACE=(CYL,(1000,500),RLSE)
//*                                                                     00024200
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//*
//**********************************************************************
//*  PASO: 01     CARGA DE LA TABLA ZMDT703, INFORMACION DE ACCIONES   *
//*               PROPIAS(MISMO DIA) SOCIEDADES DE INVERSION           *
//*  PJD03P22                          SIVA MUV             ZM4DJA01   *
//**********************************************************************
//PJLZ1P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJA01A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA1,
//            DISP=SHR
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.ZMJLPEZ1.UNLOAD,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA1T02),DISP=SHR
//*
//**********************************************************************
//*  PASO:  D     CARGA DE LA TABLA ZMDT702, INFORMACION DE OPERACIONES*
//*               VALOR HOY         (SOCIEDADES DE INVERSION)          *
//*                                    SIVA MUV             ZM4DJA22   *
//**********************************************************************
//PJLZ1P0D EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJA22A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA1,
//            DISP=SHR
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.ZMJLPEZ1.UNLOAD,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA1T0D),DISP=SHR
//*
//**********************************************************************
//*  PASO:  E     CARGA DE LA TABLA ZMDT702, INFORMACION DE OPERACIONES*
//*               VALOR NORMAL      (SOCIEDADES DE INVERSION)          *
//*                                    SIVA MUV             ZM4DJA23   *
//**********************************************************************
//PJLZ1P0E EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJA23A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA1,
//            DISP=SHR
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.ZMJLPEZ1.UNLOAD,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA1T0E),DISP=SHR
//*
//**********************************************************************
//*  PASO:  F     CARGA DE LA TABLA ZMDT702, INFORMACION DE OPERACIONES*
//*               PREAVISOS 24HRS.  (SOCIEDADES DE INVERSION)          *
//*                                    SIVA MUV             ZM4DJA24   *
//**********************************************************************
//PJLZ1P0F EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJA24A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA1,
//            DISP=SHR
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.ZMJLPEZ1.UNLOAD,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA1T0F),DISP=SHR
//*
//**********************************************************************
//*  PASO:  G     CARGA DE LA TABLA ZMDT702, INFORMACION DE OPERACIONES*
//*               PREAVISOS 30 DIAS (SOCIEDADES DE INVERSION)          *
//*                                    SIVA MUV             ZM4DJA25   *
//**********************************************************************
//PJLZ1P0G EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJA25A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA1,
//            DISP=SHR
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.ZMJLPEZ1.UNLOAD,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA1T0G),DISP=SHR
//*
//**********************************************************************
//*  PASO:  H     CARGA DE LA TABLA ZMDT702, INFORMACION DE OPERACIONES*
//*               PREAVISOS 7 DIAS  (SOCIEDADES DE INVERSION)          *
//*                                    SIVA MUV             ZM4DJA26   *
//**********************************************************************
//PJLZ1P0H EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJA26A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA1,
//            DISP=SHR
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.ZMJLPEZ1.UNLOAD,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA1T0H),DISP=SHR
//*
//**********************************************************************
//*  PASO:  I     GENERA ARCHIVO TOMANDO INFORMACION DE LA TABLA       *
//*               ZMDT702           (SOCIEDADES DE INVERSION)          *
//*                                    SIVA MUV             ZM4DJB10   *
//**********************************************************************
//PJLZ1P0I EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJB10A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.ARCH702.INTRADIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=204,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA1T0I),DISP=SHR
//*
//**********************************************************************
//*  PASO:  J     GENERA ARCHIVO TOMANDO INFORMACION DE LA TABLA       *
//*               ZMDT703           (SOCIEDADES DE INVERSION)          *
//*                                    SIVA MUV             ZM4DJB19   *
//**********************************************************************
//PJLZ1P0J EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJB19A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.ARCH703.INTRADIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=159,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(5,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA1T0J),DISP=SHR
//*
//**********************************************************************
//*  PASO: L            REALIZA LA EXTRACCION DE LAS OPERACIONES DE    *
//*                    SOCIEDADES DE INVERSION                         *
//*                                    SIVA MUV             ZM4DJA02   *
//**********************************************************************
//PJLZ1P0L EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJA02E1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA1,DISP=SHR
//*
//ZMJA02A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.OPE703,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(5,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA1T0L),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERAR EL EVENTO ZA1 EN CTLPROC.
//* TABLA QUE ACTUALIZA : CTLPROC.
//* PASO REINICIBLE POR RESTART.
//**********************************************************************
//PJLZ1P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLE11A1 DD  DSN=MXCP.ZM.FIX.TES.EBCM.ZMJLPEZ1,DISP=SHR
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZJLA1T0B),DISP=SHR
//*
//****************************************************************
//*  PASO:  K      SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJLZ1P0K EXEC  PGM=CTMCND,PARM='ADD COND CBJLNEAG_IN_OK WDATE',
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
//****************************************************************
//*   PASO: M      SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJLZ1P0M EXEC  PGM=CTMCND,PARM='ADD COND CBJLNEB2_IN_OK WDATE',
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
//****************************************************************
//*  PASO: N       SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJLZ1P0N EXEC  PGM=CTMCND,PARM='ADD COND CBJLNEA3_IN_OK WDATE',
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
