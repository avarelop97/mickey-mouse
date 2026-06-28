//ZMSFPM08 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCM08                                         *
//*                                                                    *
//* OBJETIVO       :  PROCESO MENSUAL                                  *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCM09  -  ZMSFPM09                            *
//*                                                                    *
//* DESPUES DE     :  CBSFCM07  -  ZMSFPM07                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE MENSUALMENTE                  *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MS025 ==                            *
//* OBJETIVO    : EMITE ARCHIVO SIMILAR AL RIB010M (ZM4MS010)          *
//*                                                                    *
//**********************************************************************
//PSF08P19 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMS025A1 DD DSN=MXCP.ZM.FIX.VAL.RIB025M.O,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=277,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF08T19),DISP=SHR
//**********************************************************************
//*                            ==  ICEMAN  ==                          *
//* OBJETIVO    : CLASIFICA ARCHIVO RIB025M DEL PASO ANTERIOR          *
//*               PARA TRANSFERIR ARCHIVO A USUARIO FINAL              *
//*                                                                    *
//* PASO NO REINICIABLE REINICIAR DEL PASO ANTERIOR                    *
//**********************************************************************
//PSF08P18  EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.VAL.RIB025M.O
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.RIB025M,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=232,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF08T18),DISP=SHR
//**********************************************************************
//*                        == IMAGE COPY ==                            *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.SEPRULT          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF08P17 EXEC PGM=DSNUTILB,PARM='MXP1,CBSFCM0801,',
//         COND=(5,LT,PSF08P19)
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD DISP=(,PASS),UNIT=VTSS02,
//            DSN=MXCP.ZM.FIX.MEN.IMAGCOPY.D&DATE..SEPRULT,
//            LABEL=(001,SL),VOL=(,RETAIQ)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=ZIVA.ZME.CONTROL(ZSF08T17),DISP=SHR
//**********************************************************************
//*                        == IMAGE COPY ==                            *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.AGPOCTA          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF08P16 EXEC PGM=DSNUTILB,PARM='MXP1,CBSFCM0802,',COND=(4,LT)
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD DISP=(,PASS),UNIT=VTSS02,
//            DSN=MXCP.ZM.FIX.MEN.IMAGCOPY.D&DATE..AGPOCTA,
//            LABEL=(002,SL),VOL=(,RETAIN,REF=*.PSF08P17.CO001)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=ZIVA.ZME.CONTROL(ZSF08T16),DISP=SHR
//**********************************************************************
//*                        == IMAGE COPY ==                            *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.AGPOPRO          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF08P15 EXEC PGM=DSNUTILB,PARM='MXP1,CBSFCM0803,',COND=(4,LT)
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD DISP=(,PASS),UNIT=VTSS02,
//            DSN=MXCP.ZM.FIX.MEN.IMAGCOPY.D&DATE..AGPOPRO,
//            LABEL=(003,SL),VOL=(,RETAIN,REF=*.PSF08P16.CO001)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=ZIVA.ZME.CONTROL(ZSF08T15),DISP=SHR
//**********************************************************************
//*                        == IMAGE COPY ==                            *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.CONCEPT          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF08P14 EXEC PGM=DSNUTILB,PARM='MXP1,CBSFCM0804,',COND=(4,LT)
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD DISP=(,PASS),UNIT=VTSS02,
//            DSN=MXCP.ZM.FIX.MEN.IMAGCOPY.D&DATE..CONCEPT,
//            LABEL=(004,SL),VOL=(,RETAIN,REF=*.PSF08P15.CO001)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=ZIVA.ZME.CONTROL(ZSF08T14),DISP=SHR
//**********************************************************************
//*                        == IMAGE COPY ==                            *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.CUENTA           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF08P13 EXEC PGM=DSNUTILB,PARM='MXP1,CBSFCM0805,',COND=(4,LT)
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD DISP=(,PASS),UNIT=VTSS02,
//            DSN=MXCP.ZM.FIX.MEN.IMAGCOPY.D&DATE..CUENTA,
//            LABEL=(005,SL),VOL=(,RETAIN,REF=*.PSF08P14.CO001)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=ZIVA.ZME.CONTROL(ZSF08T13),DISP=SHR
//**********************************************************************
//*                        == IMAGE COPY ==                            *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.GPOCONC          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF08P12 EXEC PGM=DSNUTILB,PARM='MXP1,CBSFCM0806,',COND=(4,LT)
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD DISP=(,PASS),UNIT=VTSS02,
//            DSN=MXCP.ZM.FIX.MEN.IMAGCOPY.D&DATE..GPOCONC,
//            LABEL=(006,SL),VOL=(,RETAIN,REF=*.PSF08P13.CO001)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=ZIVA.ZME.CONTROL(ZSF08T12),DISP=SHR
//**********************************************************************
//*                        == IMAGE COPY ==                            *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.SEATRCA          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF08P11 EXEC PGM=DSNUTILB,PARM='MXP1,CBSFCM0807,',COND=(4,LT)
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD DISP=(,PASS),UNIT=VTSS02,
//            DSN=MXCP.ZM.FIX.MEN.IMAGCOPY.D&DATE..SEATRCA,
//            LABEL=(007,SL),VOL=(,RETAIN,REF=*.PSF08P12.CO001)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=ZIVA.ZME.CONTROL(ZSF08T11),DISP=SHR
//**********************************************************************
//*                        == IMAGE COPY ==                            *
//*  OBJETIVO :   REALIZA BACKUP DE LA TABLA PRODUSVP.SECART           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF08P10 EXEC PGM=DSNUTILB,PARM='MXP1,CBSFCM0808,',COND=(4,LT)
//PI601765 DD DUMMY
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CO001    DD DISP=(,PASS),UNIT=VTSS02,
//            DSN=MXCP.ZM.FIX.MEN.IMAGCOPY.D&DATE..SECART,
//            LABEL=(008,SL),VOL=(,RETAIN,REF=*.PSF08P11.CO001)
//SYSPRINT DD SYSOUT=*
//VTPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN DD DSN=ZIVA.ZME.CONTROL(ZSF08T10),DISP=SHR
//**********************************************************************
//*                          == ZM4MS011 ==                            *
//* OBJETIVO :  EMITE REPORTE POR POSICION POR SECTOR                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF08P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMS011R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMS011A1 DD DSN=MXCP.ZM.FIX.SIE.RIB011M,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF08T09),DISP=SHR
//**********************************************************************
//*                      == DEFINE SECTOR ONLINE ==                    *05411000
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *05412000
//*                                                                    *05412000
//**********************************************************************
//PSF08P08   EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT   DD   SYSOUT=*
//SYSIN      DD   DSN=ZIVA.ZME.CONTROL(ZSF08T08),DISP=SHR
//**********************************************************************
//*                      == REPRO  SECTOR ONLINE ==                    *05501000
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *05502000
//*                                                                    *05412000
//**********************************************************************
//PSF08P07   EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT   DD SYSOUT=*
//INPUT      DD DSN=MXCP.ZM.FIX.SIE.RIB011M,DISP=SHR
//OUTPUT     DD DSN=MXCP.ZM.VSB.SIE.POSICION.SECTOR.ONLINE,DISP=SHR
//SYSIN      DD DSN=ZIVA.ZME.CONTROL(ZSF08T07),DISP=SHR
//**********************************************************************
//*                          == ZM4DS012 ==                            *
//* OBJETIVO    : CONTROL EJECUCION DE LOS PASOS PSF08P05, PSF08P04    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART Y CONTROL-R                           *
//**********************************************************************
//PSF08P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF08T06),DISP=SHR
//**********************************************************************
//*                          ==  IDCAMS  ==                            *00661000
//* OBJETIVO    : BORRAR ARCHIVOS DE TRABAJO                           *00662000
//*                                                                    *
//* PASO REINICIABLE SIEMPRE Y CUANDO EL PASO ANTERIOR HAYA TERMINADO  *
//* CON  " CODIGO 2 "                                                  *
//**********************************************************************
//PSF08P05  EXEC PGM=IDCAMS,COND=(2,LT,PSF08P06)
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZSF08T05),DISP=SHR
//**********************************************************************
//*                          == ZM4MS010 --                            *
//* OBJETIVO    : EMITE REPORTE POSICION POR EMISORA                   *
//*                                                                    *
//* ACTUALIZA   : GENERA REPORTE Y ARCHIVO SECUENCIAL                  *
//*                                                                    *
//* PASO NO REINICIABLE REINICIAR DEL PASO ANTERIOR O BORRAR EL        *
//* ARCHIVO SECUENCIAL SI ES QUE SE GENERO                             *
//**********************************************************************
//PSF08P04 EXEC PGM=IKJEFT01,COND=((2,LT,PSF08P06),(5,LT,PSF08P05))
//PI601765 DD DUMMY
//ZMS010R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMS010A1 DD DSN=MXCP.ZM.FIX.SIE.MOVS.SIIE,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=248,BLKSIZE=0,DSORG=PS),
//           SPACE=(CYL,(100,50),RLSE),
//           UNIT=3390
//ZMS010A2 DD DSN=MXCP.ZM.FIX.SIE.POSI.CTES,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=180,BLKSIZE=0),
//           SPACE=(CYL,(10,05),RLSE),
//           UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF08T04),DISP=SHR
//**********************************************************************
//*                     == DEFINE CLIENTES ONLINE ==                   *05411000
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM                               *05412000
//*                                                                    *05412000
//**********************************************************************
//PSF08P02   EXEC PGM=IDCAMS
//SYSPRINT   DD   SYSOUT=*
//SYSIN      DD   DSN=ZIVA.ZME.CONTROL(ZSF08T02),DISP=SHR
//**********************************************************************
//*                     == REPRO  CLIENTES ONLINE ==                   *05501000
//* OBJETIVO    : COPIAR EL ARCHIVO SECUENCIAL AL VSAM                 *05502000
//*                                                                    *05412000
//**********************************************************************
//PSF08P01   EXEC PGM=IDCAMS
//SYSPRINT   DD SYSOUT=*
//INPUT      DD DSN=MXCP.ZM.FIX.SIE.POSI.CTES,DISP=SHR
//OUTPUT     DD DSN=MXCP.ZM.VSB.SIE.POSICION.CTES.ONLINE,DISP=SHR
//SYSIN      DD DSN=ZIVA.ZME.CONTROL(ZSF08T01),DISP=SHR
