//ZMUFPDE8 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBUFCDE8                                         *
//*                   ENLACE CONTABLE                                  *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE MOVIMIENTOS CONTABLES              *
//*                   SEGUNDA PARTE ENLACE CONTABLE                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBUFCDE9  -  ZMUFPDE9                            *
//*                                                                    *
//* DESPUES DE     :  CBUFCDE4  -  ZMUFPDE4                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4DUE11 ==                            *
//* OBJETIVO    :   GENERACION DE MOVIMIENTOS CONTABLES                *
//*                                                                    *
//* PASO -NO- REINICIABLE                                              *
//**********************************************************************
//PUFE8P10 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMUE11A1 DD DSN=SIVA.ENC.FIX.GLMV303.VCVMNT.G30029.CTASAUX,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE8T10),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE14 ==                            *
//* OBJETIVO    :   CONSOLIDACION DE ASIENTOS CONTABLES                *
//*                                                                    *
//* PASO -NO- REINICIABLE                                              *
//**********************************************************************
//PUFE8P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE14A1 DD DSN=SIVA.ENC.FIX.GLMV303.ENCON.HEADER,DISP=MOD
//ZMUE14A2 DD DSN=SIVA.IFA.FIX.GLMV303.ENCON.DETAIL,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE8T09),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE15 ==                            *
//* OBJETIVO    :   REPORTE POLIZA AUTOMATICA                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE8P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE15R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE8T08),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE29 ==                            *
//* OBJETIVO    :   REPORTE DE CONCILIACION TESORERIA POLIZA           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE8P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE29R1  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE8T07),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE17 ==                            *
//* OBJETIVO    :   REPORTE DE MOVIMIENTOS RECHAZADOS                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE8P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE8T06),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE27 ==                            *
//* OBJETIVO    :   REPORTE DE CONTROL DE MOVIMIENTOS                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE8P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE27R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE8T05),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE20 ==                            *
//* OBJETIVO    :   ACTUALIZACION DE NUMERO DE POLIZA Y FECHA          *
//*                                                                    *
//* PASO -NO- REINICIABLE                                              *
//**********************************************************************
//PUFE8P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE8T04),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE48 ==                            *
//* OBJETIVO    :   CARGA DE AUXILIARES CONTABLES                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE8P03 EXEC PGM=IKJEFT01,COND=(8,LT)
//PI601765 DD DUMMY
//ZMUE48A1 DD DSN=SIVA.ENC.FIX.GLMV303.VCVMNT.G30029.CTASAUX,DISP=MOD
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE8T03),DISP=SHR
//**********************************************************************
//*                          ==  IDCAMS  ==                            *
//* OBJETIVO    : BORRAR ARCHIVOS DE TRABAJO                           *
//*                                                                    *
//**********************************************************************
//PUFE8P02  EXEC PGM=IDCAMS,COND=(0,LT,PUFE8P03)
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZUFE8T02),DISP=SHR
//SYSPRINT  DD SYSOUT=*
//**********************************************************************
//*                          ==  IDCAMS  ==                            *
//* OBJETIVO    : GENERA ARCHIVO SECUENCIAL DESDE ARCHIVO DUMMY        *
//*                                                                    *
//**********************************************************************
//PUFE8P01 EXEC PGM=ICEGENER,COND=(4,LT)
//PI601765 DD DUMMY
//SYSUT1   DD DUMMY,DCB=(RECFM=FB,BLKSIZE=23400,LRECL=156)
//SYSUT2   DD DSN=SIVA.ENC.FIX.GLMV303.VCVMNT.G30029.CTASAUX,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=156,DSORG=PS),
//            SPACE=(CYL,(10,05),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
