//ZMSFPD04 PROC
//**********************************************************************
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//* PROCESO        :  CBSFCD04                                         *
//*                   MODULO DE CONTRATOS                              *
//* OBJETIVO       :  TENENCIA ESTADISTICA                             *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCD06  -  (BACKUP'S)                          *
//* DESPUES DE     :  CBSFCD03  -  ZMSFPD03                            *
//* REALIZO        :  MARTIN SANTOS GONZALEZ                           *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//**********************************************************************
//* PROGRAMA: ZM4DS095
//* OBJETIVO: GENERA ARCHIVO PARA EL CAM
//*---------------------------------------------------------------------
//PSF04P11 EXEC PGM=IKJEFT01
//ZMS095A1 DD DSN=MXCP.ZM.WKF.SIE.ZM4DS095.PASO,
//            DISP=(NEW,PASS,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//ZMS095A2 DD DSN=MXCP.ZM.FIX.SIE.ZM4DS095.PASO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T10),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL CAM PARA PODER COMPACTARLO          *
//**********************************************************************
//PSF04P10 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.SIE.ZM4DS095.PASO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.SIE.ZM4DS095.SORT,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T11),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DS084
//* OBJETIVO: GRABA CARTERA DE FONDOS RENTA VARIABLE
//*---------------------------------------------------------------------
//PSF04P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS084A1 DD DSN=MXCP.ZM.TMP.SIE.ZM4DS095.SORT,DISP=SHR
//ZMS084A2 DD DSN=MXCP.ZM.TMP.SIE.ZM4DS084.PASO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T12),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL CAM PARA PODER COMPACTARLO          *
//**********************************************************************
//PSF04P08 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.SIE.ZM4DS084.PASO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.RIB060D,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T13),DISP=SHR
//*---------------------------------------------------------------------
//*                          == ZM4DS060 ==                            *
//* OBJETIVO :  GENERAR ARCHIVO PARA A.M. POSICION DE TODOS CLIENTES   *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF04P8B EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS060A1 DD DSN=MXCP.ZM.WKF.SIE.RIB060X,
//            DISP=(NEW,PASS,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//ZMS060A2 DD DSN=MXCP.ZM.FIX.SIE.ZM4DS095,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T08),DISP=SHR
//**********************************************************************
//*                          == ZM4DS039 ==                            *
//* OBJETIVO :  GENERA SECUENCIAL CON INGRESOS POR CLIENTE             *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF04P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS039A1 DD DSN=MXCP.ZM.FIX.SIE.BCINGRE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=74,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T07),DISP=SHR
//**********************************************************************
//*                          == ZM4DS038 ==                            *
//* OBJETIVO :  GENERA SECUENCIAL CON OPERACIONES DE MDO DIN X CTE     *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF04P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS038A1 DD DSN=MXCP.ZM.FIX.SIE.BCMERDI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=144,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T06),DISP=SHR
//**********************************************************************
//*                          === ZM4DS037===                           *
//* OBJETIVO :  GENERA SECUENCIAL CON OPERACIONES POR CLIENTE          *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF04P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS037A1 DD DSN=MXCP.ZM.FIX.SIE.BCOPERD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T05),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF93 ==                            *
//* OBJETIVO :  DEPURACION TABLAS DE MODULO CONTRATOS SIIE             *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF04P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T04),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF90 ==                            *
//* OBJETIVO :  REGISTRAR CONTRATOS DADOS DE BAJA                      *
//* ACTUALIZA:  LA TABLA SEBAJAS A PARTIR DE TABLAS CUENTA Y BAJAMES   *
//*             (ANTES SE DEBE EJECUTAR EL ZM4DSF93)                   *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF04P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T03),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF91 ==                            *
//* OBJETIVO :  REGISTRAR ALTAS NORMALES A SEAPERO                     *
//* ACTUALIZA:  TABLAS SEAPERO Y SEAPERT A PARTIR DE LAS TABLAS CUENTA *
//*             SEZIVA Y SETENC                                        *
//*             (ANTES SE DEBEN EJECUTAR EL ZM4DSF93)                  *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF04P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSF91R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T02),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF92 ==                            *
//* OBJETIVO :  CONTROLAR ALTAS OPERADAS                               *
//* ACTUALIZA LAS TABLAS SEAPERO Y SEAPERT A PARTIR DE LAS MISMAS      *
//*             (ANTES SE DEBE EJECUTAR EL PROGRAMA ZM4DSF91)          *
//*             PROGRAMA REINICIABLE                                   *
//**********************************************************************
//PSF04P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSF92R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T01),DISP=SHR
//*--------------FIN DE PROCESO-----------------------------------------
