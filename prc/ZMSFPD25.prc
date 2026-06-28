//ZMSFPD25 PROC
//**********************************************************************00002000
//*                                                                    *00003000
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V).                *00004000
//*                                                                    *00004200
//* PROCESO        :  CBSFCD25                                         *00004300
//*                   TENENCIA ESTADISTICA.                            *00004400
//*                                                                    *00004500
//* OBJETIVO       :  GENERAR LA POSICION DE LA CASA EN LOS            *00004600
//*                   DIFERENTES GRUPOS DE INSTRUMENTO.                *00004700
//*                                                                    *00004800
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE.                  *00009300
//*                                                                    *00009400
//* CORRE                                                              *00004900
//* ANTES DE       :  CBSFCD27  -  ZMSFPD27                            *00005000
//*                                                                    *00006000
//* DESPUES DE     :  CBJFCD12  -  ZMJFPD12                            *00007000
//*                                                                    *00008000
//* REALIZO        :  AZERTIA(F.V.C.)                                  *00009000
//* FECHA          :  JUNIO 2005.                                      *00009100
//*                                                                    *00009200
//* MODIFICO       : JJH                                               *00009000
//* FECHA          : 24/04/2013                                        *00009100
//*                                                                    *00009200
//* OBSERVACION    :SE ADICIONO PASOS PARA VALIDAR PRECIOS EN SECART   *00009300
//*                                                                    *00009300
//*                                                                    *00009400
//*                                                                    *00009400
//**********************************************************************00009500
//*                           -- ZM4DSF68 --  -- SOBF68D --            *
//* OBJETIVO    :  COPIAR PARAM 'P05' A PARAM 'P04'                    *
//*                                                                    *
//* ACTUALIZA   :  PARAM-P04                                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//PSF25P20 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T20),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4DSF59 --  -- SOBF59D --            *
//* OBJETIVO    :  ACTUALIZA CATALOGO DE PERIODOS                      *
//*                                                                    *
//* ACTUALIZA   :  PARAM-TF6                                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//PSF25P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T19),DISP=SHR
//*
//**********************************************************************
//*                         -- CTMCND --                               *
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CBSFCD27_IN" PARA QUE SE  *
//*           EJECUTE EL RESPALDO Y DEPURACION DE TABLAS BKUP'S DE PROC*
//*           ESTADISTICO.                                             *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF25P18 EXEC PGM=CTMCND,PARM='ADD COND   CBSFCD27_IN_SEP_OK  WDATE',
//         COND=(4,LT)
//*
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
//*                           -- ZM4DSF58 --  -- SOBF58D --            *
//* OBJETIVO    :  ASIGNACION AUTOMATICA DE GRUPOS DE INSTRUMENTOS     *
//*                                                                    *
//* ACTUALIZA   :  AGPOCON                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//PSF25P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDS58R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T17),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4DSF63 --  -- SOBF63D --            *
//* OBJETIVO    :  CARGA INICIAL Y ACTUALIZACION DIARIA DE PRECIOS     *
//*                                                                    *
//* ACTUALIZA   :  SEPRULT                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//PSF25P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T16),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4DSF65 --  -- SOBF65D --            *
//* OBJETIVO    :  CARGA INICIAL Y ACTUALIZ. DIARIA ATRIBUTOS PROMOTOR *
//*                                                                    *
//* ACTUALIZA   :  SECATAP, SEULTP                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//PSF25P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T15),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4DSF64 --  -- SOBF64D --            *
//* OBJETIVO    :  CARGA INICIAL Y ACTUALIZ. DIARIA ATRIBUTOS CLIENTES *
//*                                                                    *
//* ACTUALIZA   :  SECATAC, SEULTC                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//PSF25P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T14),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4DSF66 --  -- SOBF66D --            *
//* OBJETIVO    :  CARGA INICIAL Y ACTUALIZ. DIARIA ATRIB. CTRO.COSTOS *
//*                                                                    *
//* ACTUALIZA   :  SECATAS, SEULTS                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//PSF25P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T13),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO    :  RESPALDO DE TABLAS ANTES DE DEPURACION              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF25P12 EXEC PGM=ACPMAIN,
//         PARM='MXP1,PSF25P12,NEW/RESTART,MSGLEVEL(1)',
//         COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSCOP01 DD  DSN=MXCP.ZM.VD07.PRODUSVP.SEDVALCA.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP02 DD  DSN=MXCP.ZM.VD07.PRODUSVP.SEDSECIN.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP03 DD  DSN=MXCP.ZM.VD07.PRODUSVP.SEDMOVED.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP04 DD  DSN=MXCP.ZM.VD07.PRODUSVP.SEDIMPUE.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP05 DD  DSN=MXCP.ZM.VD07.PRODUSVP.SEDDEPRE.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP06 DD  DSN=MXCP.ZM.VD07.PRODUSVP.SCARTERA.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  00045402
//UTPRINT  DD SYSOUT=*                                                  00045502
//SYSUDUMP DD SYSOUT=*                                                  00045602
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF25T12),DISP=SHR                   00045702
//*
//**********************************************************************
//*                           -- ZM4MG280 --  -- ECB280M --            *
//* OBJETIVO    :  DEPURA LAS TABLAS DE ESTADOS DE CUENTA, CUANDO HAY  *
//*                EVENTO "EC0"                                        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//PSF25P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00170002
//*
//ZMG280R1 DD DSN=MXCP.ZM.WKF.ECT.EDMOVED,                              00240004
//            DISP=(NEW,CATLG,DELETE),                                  00240004
//            SPACE=(CYL,(12,6),RLSE),                                  00250001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),               00250001
//            UNIT=3390                                                 00260001
//ZMG280R2 DD DSN=MXCP.ZM.WKF.ECT.EDIMPUE,                              00270004
//            DISP=(NEW,CATLG,DELETE),                                  00240004
//            SPACE=(CYL,(12,6),RLSE),                                  00280001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),               00280001
//            UNIT=3390                                                 00290001
//ZMG280R3 DD DSN=MXCP.ZM.WKF.ECT.EDVALCA,                              00300004
//            DISP=(NEW,CATLG,DELETE),                                  00240004
//            SPACE=(CYL,(12,6),RLSE),                                  00310004
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),               00310004
//            UNIT=3390                                                 00320001
//SYSTSPRT DD SYSOUT=*                                                  00220001
//SYSPRINT DD SYSOUT=*                                                  00230001
//SYSOUT   DD SYSOUT=*                                                  00330001
//SYSDBOUT DD SYSOUT=*                                                  00340001
//SYSABOUT DD DUMMY                                                     00350001
//SYSUDUMP DD DUMMY                                                     00360001
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T11),DISP=SHR
//*
//**********************************************************************
//*                          * IDCAMS *                                *
//* OBJETIVO    :  BORRAR ARCHIVOS EDMOVED, EDVALCA, EDIMPUE           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//PSF25P10 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF25T10),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO    :  UNLOAD DE TABLA EDVALCA                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
// IF (PSF25P11.RC LT 4) THEN
//PSF25P09 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00450002
//         PARM='MXP1,PSF25P09,NEW/RESTART,,MSGLEVEL(1)'
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.WKF.ECT.PRODUSVP.EDVALCA,
//            DISP=(NEW,CATLG,DELETE),SPACE=(CYL,(2000,500),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=110,BLKSIZE=0),
//            UNIT=3390
//*
//SYSCNTL  DD  DUMMY
//*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.WKF.ECT.EDVALCA,DISP=SHR                      00480001
//*
//**********************************************************************
//* PASO     : PSF25P08                                                *
//* UTILERIA : AMUUMAIN                                                *
//* OBJETIVO : CARGA DE INFORMACION DE EDVALCA, DESPUES DE DEPURAR     *
//**********************************************************************
//PSF25P08 EXEC MBMCLOAD,COND=(4,LT),
//         UID=PSF25P08.LOLCA,
//         CREATOR=PRODUSVP,
//*        CREATOR=PRUEBSVP,
//         NOMTAB=EDVALCA,
//         OPTION=REPLACE,
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZSF25T06),
//         INPREC=DSN=MXCP.ZM.WKF.ECT.PRODUSVP.EDVALCA
//*
// ENDIF
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO    :  UNLOAD DE TABLA EDMOVED                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
// IF (PSF25P11.RC LT 4) THEN
//PSF25P07 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PSF25P07,NEW/RESTART,,MSGLEVEL(1)'
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.WKF.ECT.PRODUSVP.EDMOVED,
//            DISP=(NEW,CATLG,DELETE),SPACE=(CYL,(2000,500),RLSE),
//            UNIT=3390,DCB=(RECFM=FB,BLKSIZE=0,LRECL=87,DSORG=PS)
//*                                                                     00024200
//SYSCNTL  DD  DUMMY                                                    00024300
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD DSN=MXCP.ZM.WKF.ECT.EDMOVED,DISP=SHR                      00480001
//*
//**********************************************************************
//* PASO     : PSF25P06                                                *
//* UTILERIA : AMUUMAIN                                                *
//* OBJETIVO : CARGA DE INFORMACION DE EDMOVED, DESPUES DE DEPURAR     *
//**********************************************************************
//PSF25P06 EXEC MBMCLOAD,COND=(4,LT),
//         UID=PSF25P06.LOVED,
//         CREATOR=PRODUSVP,
//*        CREATOR=PRUEBSVP,
//         NOMTAB=EDMOVED,
//         OPTION=REPLACE,
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZSF25T05),
//         INPREC=DSN=MXCP.ZM.WKF.ECT.PRODUSVP.EDMOVED
//*
// ENDIF
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO    :  UNLOAD DE TABLA EDIMPUE                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
// IF (PSF25P11.RC LT 4) THEN
//PSF25P05 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00450002
//         PARM='MXP1,PSF25P05,NEW/RESTART,,MSGLEVEL(1)'
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.WKF.ECT.PRODUSVP.EDIMPUE,
//            DISP=(NEW,CATLG,DELETE),SPACE=(CYL,(2000,500),RLSE),
//            UNIT=3390,DCB=(RECFM=FB,BLKSIZE=0,LRECL=134,DSORG=PS)
//*                                                                     00024200
//SYSCNTL  DD  DUMMY                                                    00024300
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD DSN=MXCP.ZM.WKF.ECT.EDIMPUE,DISP=SHR                      00480001
//*
//**********************************************************************
//* PASO     : PSF25P04                                                *
//* UTILERIA : AMUUMAIN                                                *
//* OBJETIVO : CARGA DE INFORMACION DE EDIMPUE, DESPUES DE DEPURAR     *
//**********************************************************************
//PSF25P04 EXEC MBMCLOAD,COND=(4,LT),
//         UID=PSF25P04.LOPUE,
//         CREATOR=PRODUSVP,
//*        CREATOR=PRUEBSVP,
//         NOMTAB=EDIMPUE,
//         OPTION=REPLACE,
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZSF25T04),
//         INPREC=DSN=MXCP.ZM.WKF.ECT.PRODUSVP.EDIMPUE
//*
// ENDIF
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO    :  RESPALDO DE TABLAS DESPUES DE DEPURACION            *
//*                (EDVALCA, EDMOVED, EDIMPUE)                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
// IF (PSF25P11.RC LT 4) THEN
//PSF25P03 EXEC PGM=ACPMAIN,COND=(4,LT),
//         PARM='MXP1,PSF25P03,NEW/RESTART,MSGLEVEL(1)'
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSCOP01 DD  DSN=MXCP.ZM.VD07.D.PRODUSVP.SEDVALCA.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP02 DD  DSN=MXCP.ZM.VD07.D.PRODUSVP.SEDSECIN.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP03 DD  DSN=MXCP.ZM.VD07.D.PRODUSVP.SEDMOVED.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP04 DD  DSN=MXCP.ZM.VD07.D.PRODUSVP.SEDIMPUE.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP05 DD  DSN=MXCP.ZM.VD07.D.PRODUSVP.SEDDEPRE.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP06 DD  DSN=MXCP.ZM.VD07.D.PRODUSVP.SCARTERA.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//*
//SYSPRINT DD SYSOUT=*                                                  00045402
//UTPRINT  DD SYSOUT=*                                                  00045502
//SYSUDUMP DD SYSOUT=*                                                  00045602
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF25T03),DISP=SHR                   00045702
//*
// ENDIF
//*
//*-------------------------- EFC INI ---------------------------------*
//**********************************************************************
//*   GENERA ARCHIVO DE PARAMETROS CON EMPRESA Y SUCURSAL (BCM)         00002900
//**********************************************************************
//PSF25P2A EXEC PGM=ZM3DG001,COND=(7,LT),                               00003000
//         PARM=('BCM','000',' ',' ',)
//*                                                                     00003100
//SYSTSPRT DD SYSOUT=*                                                  00003200
//SYSPRINT DD SYSOUT=*                                                  00003300
//SYSOUT   DD SYSOUT=*                                                  00003400
//SYSDBOUT DD SYSOUT=*                                                  00003500
//SYSABOUT DD DUMMY                                                     00003600
//SYSUDUMP DD DUMMY                                                     00003700
//*                                                                     00003800
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.S000.ZMSFPD25,                   00003900
//         DISP=(NEW,CATLG,DELETE),                                     00004000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                  00004100
//         UNIT=3390,                                                   00004200
//         SPACE=(CYL,(2,1),RLSE)                                       00004300
//*                                                                     00017800
//**********************************************************************00017900
//*                          === ZM4DJ808 ===                          *00018000
//* OBJETIVO : PASAR INF. DE TABLAS OPERASI,OPERATE A OPERA            *00018100
//*            OPERTET A OPERTES.                                      *00018200
//*            (ACTUALIZA OPERTES, OPERA)                 (BCM)        *00018300
//*                                                                    *00018400
//* PASO REINICIABLE POR RESTART               *** TESORERIA           *00018500
//**********************************************************************00018600
//PSF25P2B EXEC PGM=IKJEFT01,COND=(7,LT)                                00018700
//ZMJ808P1 DD DSN=MXCP.ZM.TMP.TES.EBCM.S000.ZMSFPD25,DISP=SHR           00019500
//*                                                                     00019700
//SYSTSPRT DD SYSOUT=*                                                  00018800
//SYSPRINT DD SYSOUT=*                                                  00018900
//SYSOUT   DD SYSOUT=*                                                  00019000
//SYSDBOUT DD SYSOUT=*                                                  00019100
//SYSABOUT DD DUMMY                                                     00019200
//SYSUDUMP DD DUMMY                                                     00019300
//*                                                                     00019400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T06),DISP=SHR                   00019800
//*                                                                     00019900
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4DJ809                                                  00020000
//* OBJETIVO: DEPURAR TABLAS : OPERASI, OPERATE, OPERTET. (BCM)         00030000
//*           (ACTUALIZA OPERASI, OPERATE, OPERTET)                     00040000
//*---------------------------------------------------------------------00060000
//PSF25P2C EXEC PGM=IKJEFT01,COND=(7,LT)
//ZMJ809A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.S000.ZMSFPD25,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T07),DISP=SHR
//*
//**********************************************************************
//*   GENERA ARCHIVO DE PARAMETROS CON EMPRESA Y SUCURSAL (CBP)         00002900
//**********************************************************************
//PSF25P2D EXEC PGM=ZM3DG001,COND=(7,LT),                               00003000
//         PARM=('CBP','ZPR',' ',' ',)
//*                                                                     00003100
//SYSTSPRT DD SYSOUT=*                                                  00003200
//SYSPRINT DD SYSOUT=*                                                  00003300
//SYSOUT   DD SYSOUT=*                                                  00003400
//SYSDBOUT DD SYSOUT=*                                                  00003500
//SYSABOUT DD DUMMY                                                     00003600
//SYSUDUMP DD DUMMY                                                     00003700
//*                                                                     00003800
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMSFPD25,                   00003900
//         DISP=(NEW,CATLG,DELETE),                                     00004000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                  00004100
//         UNIT=3390,                                                   00004200
//         SPACE=(CYL,(2,1),RLSE)                                       00004300
//*                                                                     00017800
//**********************************************************************00017900
//*                          === ZM4DJ808 ===                          *00018000
//* OBJETIVO : PASAR INF. DE TABLAS OPERASI,OPERATE A OPERA            *00018100
//*            OPERTET A OPERTES.                                      *00018200
//*            (ACTUALIZA OPERTES, OPERA)                 (CBP)        *00018300
//*                                                                    *00018400
//* PASO REINICIABLE POR RESTART               *** TESORERIA           *00018500
//**********************************************************************00018600
//PSF25P2E EXEC PGM=IKJEFT01,COND=(7,LT)                                00018700
//ZMJ808P1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMSFPD25,DISP=SHR           00019500
//*                                                                     00019700
//SYSTSPRT DD SYSOUT=*                                                  00018800
//SYSPRINT DD SYSOUT=*                                                  00018900
//SYSOUT   DD SYSOUT=*                                                  00019000
//SYSDBOUT DD SYSOUT=*                                                  00019100
//SYSABOUT DD DUMMY                                                     00019200
//SYSUDUMP DD DUMMY                                                     00019300
//*                                                                     00019400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF05T06),DISP=SHR                   00019800
//*                                                                     00019900
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZM4DJ809                                                  00020000
//* OBJETIVO: DEPURAR TABLAS : OPERASI, OPERATE, OPERTET. (CBP)         00030000
//*           (ACTUALIZA OPERASI, OPERATE, OPERTET)                     00040000
//*---------------------------------------------------------------------00060000
//PSF25P2F EXEC PGM=IKJEFT01,COND=(7,LT)
//ZMJ809A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMSFPD25,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T07),DISP=SHR
//*-------------------------- EFC FIN ---------------------------------*
//*
//**********************************************************************
//*                           -- ZM4DSF61 --  -- SOBF61D --            *
//* OBJETIVO    :  CARGA DE IMAGEN RECORTADA DE CARTERAS               *
//*                                                                    *
//* ACTUALIZA   :  SECART                                              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//PSF25P02 EXEC PGM=IKJEFT01,COND=(7,LT)
//*
//ZMSF61R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T02),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4ESF61 --  SOBF61E                  *
//* OBJETIVO    : CARGA DE IMAGEN RECORTADA DE CARTERAS (VERSION 2)    *
//*                                                                    *
//* ACTUALIZA   : PASO SE COPIO AL PTEPED01                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
// IF (PSF25P02.RC LT 4) THEN
//PSF25P01 EXEC PGM=IKJEFT01,COND=(4,LT,PSF25P03)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T01),DISP=SHR
//*
// ENDIF
//*
//**********************************************************************
//*                           -- ZM4DSF54 --  -- SOBF63D --            *
//* OBJETIVO    :  VALIDADOR DE PRECIOS EN CERO DE SECART              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF25P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25T21),DISP=SHR
//*
//************************** FIN DE PROCESO ****************************
