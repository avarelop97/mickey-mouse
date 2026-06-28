//ZMUFPD22 PROC                                                         00010002
//**********************************************************************00020002
//* SISTEMA        :  SIVA.                                            *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD22                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  REALIZA REPORTES DE TESORERIA DESP. DE ENLACE    *00090002
//*                   CONTABLE.                                        *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTTEK (DASR)                   21/ABR/2010     *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    @DGCM01    XM26266  06MAY16    SE COMENTARIZAN PASOS PUF22P09   *
//*                                   Y PUF22P08                       *
//*--------------------------------------------------------------------*
//*    @FJSS-I    MI32674  27NOV25    SE AUMENTA EL LRECL DE 100 A 101 *
//* @FJSS-FDEL PASO PUF22P55
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO    : PUF22P60                                                 *
//* PROGRAMA: ZM4DLG49                                                 *
//* OBJETIVO: PASO PARA CASA DE BOLSA.                                 *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUF22P60 EXEC PGM=IKJEFT01
//ZM4DL491 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4DL492 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T10),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P55                                                 *
//* PROGRAMA: ZM4DLG49                                                 *
//* OBJETIVO: PASO PARA BANCO.                                         *
//**********************************************************************
//PUF22P55 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DL491 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4DL492 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//*M4D49A1 DD DSN=SIVA.TES.FIX.VIBG49A1
//ZM4D49A1 DD DSN=MXCP.ZM.FIX.VIBG49A1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(5,1),RLSE),
//*@FJSS-I
//*           DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=101,RECFM=FB,BLKSIZE=0),
//*@FJSS-F
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T11),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P50                                                 *
//* PROGRAMA: ZM4DLG53                                                 *
//* OBJETIVO: LIQ. OPERACIONES DIARIAS EFECTIVO.                       *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUF22P50 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D53R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T12),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P45                                                 *
//* PROGRAMA: ZM4DLG53                                                 *
//* OBJETIVO: LIQ. OPERACIONES DIARIAS EFECTIVO.                       *
//**********************************************************************
//PUF22P45 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D53R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T13),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P40                                                 *
//* PROGRAMA: ZM4DLG55                                                 *
//* OBJETIVO: LIQ. OPERACIONES DIARIAS NO EFECTIVO                     *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUF22P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D55R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//*M4D55A2 DD DSN=SIVA.ENC.WKF.VIBG55A2,
//ZM4D55A2 DD DSN=MXCP.ZM.WKF.VIBG55A2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,LRECL=176,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T14),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P35                                                 *
//* PROGRAMA: ZM4DLL99                                                 *
//* OBJETIVO: LIQ. OPERACIONES DIARIAS EFECTIVO.                       *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUF22P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D99R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//*M4D99A1 DD DSN=SIVA.ENC.WKF.VIBG55A2,DISP=SHR
//*M4D99A2 DD DSN=SIVA.ENC.WKF.VIBL99A2,
//ZM4D99A1 DD DSN=MXCP.ZM.WKF.VIBG55A2,DISP=SHR
//ZM4D99A2 DD DSN=MXCP.ZM.WKF.VIBL99A2,
//            DISP=(NEW,PASS),
//            DCB=(DSORG=PS,LRECL=138,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T15),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P30                                                 *
//* PROGRAMA: ZM4DLL98                                                 *
//* OBJETIVO: RESUMEN DE OPERACIONES DE CTAS DE CASA,OPERATIVAS, DE    *
//*           CLIENTES Y PROVEEDORES.                                  *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUF22P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D98R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T16),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P25                                                 *
//* PROGRAMA: ZM4DLG56                                                 *
//* OBJETIVO: LIQ. OPERACIONES DIARIAS NO EFECTIVO.                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUF22P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D56R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T17),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P20                                                 *
//* PROGRAMA: ZM4DLG57                                                 *
//* OBJETIVO: LIQ. OPERACIONES DIARIAS NO EFECTIVO NO ARBITRAJE.       *
//**********************************************************************
//PUF22P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D57R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//*M4D57A2 DD DSN=SIVA.ENC.WKF.VIBG57A2,
//ZM4D57A2 DD DSN=MXCP.ZM.WKF.VIBG57A2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=176,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T18),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P15                                                 *
//* PROGRAMA: ZM4DLG58                                                 *
//* OBJETIVO: LIQ. OPERACIONES DIARIAS NO EFECTIVO DE ARBITRAJE.       *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUF22P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D58R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//*M4D58A2 DD DSN=SIVA.ENC.WKF.VIBG58A2,
//ZM4D58A2 DD DSN=MXCP.ZM.WKF.VIBG58A2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=176,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T19),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P10                                                 *
//* PROGRAMA: ZM4DLL97                                                 *
//* OBJETIVO: LIQ. OPERACIONES DIARIAS EFECTIVO.                       *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUF22P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D97R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//*M4D97A1 DD DSN=SIVA.ENC.WKF.VIBG57A2,DISP=SHR
//*M4D97A3 DD DSN=SIVA.ENC.WKF.VIBG58A2,DISP=SHR
//*M4D97A2 DD DSN=SIVA.ENC.WKF.VIBL97A2,
//ZM4D97A1 DD DSN=MXCP.ZM.WKF.VIBG57A2,DISP=SHR
//ZM4D97A3 DD DSN=MXCP.ZM.WKF.VIBG58A2,DISP=SHR
//ZM4D97A2 DD DSN=MXCP.ZM.WKF.VIBL97A2,
//            DISP=(NEW,PASS),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=138,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T20),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P09                                                 *
//* PROGRAMA: ZM4DLG45                                                 *
//* OBJETIVO: PASO PARA BANCO.                                         *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//*@DGCM01-I
//*PUF22P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZM4DL451 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZM4DL452 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZM4DL453 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZM4DL454 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**DGCM-INI
//*ZM4DL455 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZM4DL456 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZM4DL457 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**DGCM-FIN
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T0A),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF22P08                                                 *
//* PROGRAMA: ZM4DLG45                                                 *
//* OBJETIVO: PASO PARA CASA DE BOLSA.                                 *
//**********************************************************************
//*PUF22P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZM4DL451 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZM4DL452 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZM4DL453 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZM4DL454 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**DGCM-INI
//*ZM4DL455 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZM4DL456 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZM4DL457 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**DGCM-FIN
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF22T0B),DISP=SHR
//*@DGCM01-F
//*
//****************** FIN DEL PROCESO ZMUFPD22 **************************
