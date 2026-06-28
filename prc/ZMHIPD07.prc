//ZMHIPD07 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBHIND07                                         *
//*                   REPORTES VALORES                                 *
//*                                                                    *
//* OBJETIVO       :  REPORTE DE EXTRANJEROS RESIDENTES/NO RESIDENTES  *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBSIND13 (ZMSIPD13)                              *
//*                                                                    *
//* DESPUES DE     :  CBHIND08 (ZMHIPD08)                              *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4EHA17 ==                            *
//* OBJETIVO :   REPORTE DE POSICION POR EMISORA.                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PHI07P04 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMHA17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHA17R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI07T04),DISP=SHR
//**********************************************************************
//*                          == ZM4DHB60 ==                            *
//* OBJETIVO :   REPORTE DE EXTRANJEROS NO RESIDENTES POR CONTRATO     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PHI07P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMHB60R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHB60R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHB60A1 DD DSN=MXCP.ZM.WKF.OSC.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            SPACE=(CYL,(5,10),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI07T03),DISP=SHR
//**********************************************************************
//*                          == ZM4DHB61 ==                            *
//* OBJETIVO : REPORTE DE EXTRANJEROS NO RESIDENTES POR TIPO DE VALOR  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PHI07P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMHB61R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHB61R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHB61R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHB61R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHB61R5 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK05 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK06 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMHB61A1 DD DSN=MXCP.ZM.WKF.OSC.ARCHIVO,DISP=SHR
//ZMHB61A2 DD DSN=MXCP.ZM.FIX.VAL.SDOPROB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//ZMHB61A3 DD DSN=MXCP.ZM.FIX.VAL.SDOEXC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//ZMHB61A4 DD DSN=MXCP.ZM.FIX.VAL.SDOPOP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI07T02),DISP=SHR
//**********************************************************************
//*                          == ZM4DHB77 ==                            *
//* OBJETIVO : REPORTE DE EXTRANJEROS NO RESIDENTES POR POSICION PROP. *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PHI07P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMHB77R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//SORTWK05 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//SORTWK06 DD UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//ZMHB77A1 DD DSN=MXCP.ZM.FIX.VAL.SDOPOP,DISP=SHR
//ZMHB77A2 DD DSN=MXCP.ZM.FIX.VAL.SDOPOP.BUENO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI07T01),DISP=SHR
