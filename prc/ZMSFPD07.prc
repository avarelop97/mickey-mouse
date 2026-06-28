//ZMSFPD07 PROC
//**********************************************************************
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//* PROCESO        :  CBSFCD07                                         *
//*                   CONCILIACION MOVIMIENTOS                         *
//* OBJETIVO       :  CONCILIACION DE MOVIMIENTOS CONTRA POSICION      *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCD08  -  ZMSFPD08                            *
//* DESPUES DE     :  CBSFCD24  -  ZMSFPD24                            *
//* FECHA          :  ENERO 2006                                       *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                          == ZM4EHB74 ==                            *
//*  OBJETIVO : OBTIENE LA POSICION POR CONTRATO                       *
//**********************************************************************
//PSF07P12 EXEC PGM=IKJEFT01
//ZMHB74A1 DD DSN=MXCP.ZM.FIX.SIE.VIBB74E.POSICION,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=645,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF07T07),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA EL ARCHIVO GENERADO EN EL PASO ANTERIOR         *
//*  LLAVE    : TIPO DE VALOR, EMISORA, SERIE, CUPON                   *
//**********************************************************************
//PSF07P11 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.SIE.VIBB74E.POSICION,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.SIE.SORT.POSICION,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=645,BLKSIZE=0),
//         SPACE=(CYL,(120,060),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF07T06),DISP=SHR
//**********************************************************************
//*                          == ZM4EHB75 ==                            *
//*  OBJETIVO : OBTIENE DINERO FRESCO, ENTRADAS Y SALIDAS DE EFECTIVO  *
//*             Y ENTRADAS Y SALIDAS DE VALORES POR CUENTA.            *
//**********************************************************************
//PSF07P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHB75A1 DD DSN=MXCP.ZM.FIX.SIE.VIBB75E.DFRESCO,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=251,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF07T05),DISP=SHR
//**********************************************************************
//*                          == ZM4DHB80 ==                            *
//*  OBJETIVO : UNE LOS ARCHIVOS DE POSICION Y DINERO FRESCO           *
//**********************************************************************
//PSF07P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHB80A1 DD DSN=MXCP.ZM.WKF.SIE.SORT.POSICION,DISP=SHR
//ZMHB80A2 DD DSN=MXCP.ZM.FIX.SIE.VIBB75E.DFRESCO,DISP=SHR
//ZMHB80A3 DD DSN=MXCP.ZM.FIX.SIE.VIBB80D.PASO.CONCIL,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=643,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMHB80A4 DD DSN=MXCP.ZM.TMP.SIE.VIBB80D.CONCIL2X,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=643,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//*MHB80A5 DD DSN=MXCP.ZM.FIX.SIE.VIBB80D.CONCIL3,
//ZMHB80A5 DD DSN=MXCP.ZM.FIX.SIE.VIBB80D.CONCIL3X,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=643,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF07T04),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : SORTEA EL ARCHIVO ANTERIOR Y GENERA NUEVO ARCHIVO      *
//**********************************************************************
//PSF07P08 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.SIE.VIBB80D.CONCIL2X,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VIBB80D.CONCILIA.BKP,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=611,BLKSIZE=0),
//         SPACE=(CYL,(120,060),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF07T03),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : GENERA COPIA ELIMINANDO EL ITVBMV PARA EL PROCESO      *
//*             PTEPED08.                                              *
//**********************************************************************
//PSF07P07 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.VIBB80D.CONCILIA.BKP,DISP=SHR
//SORTOUT  DD DSN=SIVA.SIE.FIX.VIBB80D.CONCILIA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=606,BLKSIZE=0),
//         SPACE=(CYL,(120,060),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF07T00),DISP=SHR
//**********************************************************************
//*                          == ZM4DHB81 ==                            *
//*  OBJETIVO : GENERA ARCHIVO CONCIL2 CON SOLO 19 CAMPOS              *
//**********************************************************************
//PSF07P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHB81A1 DD DSN=MXCP.ZM.TMP.SIE.VIBB80D.CONCIL2X,DISP=SHR
//ZMHB81A2 DD DSN=MXCP.ZM.TMP.SIE.ZMHB81D.CONCIL2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=243,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF07T0A),DISP=SHR
//**********************************************************************
//*                          == ZM4DS096 ==                            *
//*  OBJETIVO : OBTIENE LA POSICION POR CONTRATO                       *
//**********************************************************************
//PSF07P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHB74A1 DD DSN=MXCP.ZM.FIX.SIE.ZM4DS096.POSICION,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=645,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF07T08),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA EL ARCHIVO GENERADO EN EL PASO ANTERIOR         *
//*  LLAVE    : TIPO DE VALOR, EMISORA, SERIE, CUPON                   *
//**********************************************************************
//PSF07P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.SIE.ZM4DS096.POSICION,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.SIE.SORTZM96.POSICIO1,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=645,BLKSIZE=0),
//         SPACE=(CYL,(120,060),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF07T12),DISP=SHR
//**********************************************************************
//*                          == ZM4DS088 ==                            *
//*  OBJETIVO : OBTIENE LA POSICION POR CONTRATO                       *
//**********************************************************************
//PSF07P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS088A1 DD DSN=MXCP.ZM.WKF.SIE.SORTZM96.POSICIO1,DISP=SHR
//ZMS088A2 DD DSN=MXCP.ZM.FIX.SIE.ZM4DS096.POSICIO2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=645,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF07T13),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA EL ARCHIVO GENERADO EN EL PASO ANTERIOR         *
//*  LLAVE    : TIPO DE VALOR, EMISORA, SERIE, CUPON                   *
//**********************************************************************
//PSF07P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.SIE.ZM4DS096.POSICIO2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.SIE.SORTZM96.POSICIO3,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=645,BLKSIZE=0),
//         SPACE=(CYL,(120,060),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF07T06),DISP=SHR
//**********************************************************************
//*                          == ZM4DS110 ==                            *
//*  OBJETIVO : UNE LOS ARCHIVOS DE POSICION Y DINERO FRESCO           *
//**********************************************************************
//PSF07P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHB80A1 DD DSN=MXCP.ZM.WKF.SIE.SORTZM96.POSICIO3,DISP=SHR
//ZMHB80A2 DD DSN=MXCP.ZM.FIX.SIE.VIBB75E.DFRESCO,DISP=SHR
//ZMHB80A3 DD DSN=MXCP.ZM.FIX.SIE.VIBB80D.PASO.CONCILX,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=643,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//*MHB80A4 DD DSN=MXCP.ZM.TMP.SIE.VIBB80D.CONCIL2X,
//ZMHB80A4 DD DSN=MXCP.ZM.TMP.SIE.VIBB80D.CONCIL2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=643,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//*MHB80A5 DD DSN=MXCP.ZM.FIX.SIE.VIBB80D.CONCIL3X,
//ZMHB80A5 DD DSN=MXCP.ZM.FIX.SIE.VIBB80D.CONCIL3,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,LRECL=643,RECFM=FB,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF07T09),DISP=SHR
//*
//**********************************************************************
//*                 F I N    Z M S F P D 0 7                           *
//**********************************************************************
