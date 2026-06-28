//ZMSFPM09 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCM09                                         *
//*                                                                    *
//* OBJETIVO       :  PROCESO MENSUAL                                  *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCM12  -  ZMSFPM12                            *
//*                                                                    *
//* DESPUES DE     :  CBSFCM08  -  ZMSFPM08                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE MENSUALMENTE                  *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4DGU72 ==                            *
//* OBJETIVO: ACTUALIZAR PARAM TV5 (SOLO 1 VEZ AL MES DEBE CORRER)     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF09P02 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF09T02),DISP=SHR
//**********************************************************************
//*                          == ZM4SGG08 ==                            *
//* OBJETIVO : REPORTE DE CAPTACION DE RECURSOS TESORERIA.             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF09P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGG08R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGG08R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGG08A1 DD DSN=MXCP.ZM.FIX.SIE.VIBG08S,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=136,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//ZMGG08A2 DD DSN=MXCP.ZM.FIX.SIE.CAPTACIO.CUENTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=095,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(4,2),RLSE),
//            UNIT=3390
//ZMGG08A3 DD DSN=MXCP.ZM.FIX.SIE.CAPTACIO.PROMOT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(4,2),RLSE),
//            UNIT=3390
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF09T01),DISP=SHR
