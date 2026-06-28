//ZMUFPDE9 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBUFCDE9                                         *
//*                   ENLACE CONTABLE                                  *
//*                                                                    *
//* OBJETIVO       :  REPORTES DIARIOS DE TESORERIA                    *
//*                   TERCERA PARTE DE ENLACE CONTABLE                 *
//*                                                                    *
//*                   CARGA DE INFORMACION EN TABLAS IMAGEN PARA       *
//*                   NO ENTORPECER LA EJECUCION DE OTROS PROCESOS     *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBUFCDE0  -  ZMUFPDE0                            *
//*                                                                    *
//* DESPUES DE     :  CBUFCDE8  -  ZMUFPDE8                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4DUE49 ==                            *
//* OBJETIVO : REPORTE DE TRASPASOS ENTRE CLIENTES                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUFE9P10 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMUE49R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMUE49R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMUE49A1 DD DSN=MXCP.ZM.FIX.TES.VIBG49A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=100,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            SPACE=(CYL,(10,05),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE9T10),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE53 ==                            *
//* OBJETIVO : LIQ. OPERACIONES DIARIAS EFECTIVO                       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUFE9P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE53R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE9T08),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE55 ==                            *
//* OBJETIVO : LIQ. OPERACIONES DIARIAS NO EFECTIVO                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUFE9P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE55R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMUE55A1 DD DSN=MXCP.ZM.TMP.ENC.VIBG55A2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=176,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,05),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE9T07),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE99 ==                            *
//* OBJETIVO : AMARRE DE OPERACION DE LA BMV                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUFE9P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE99R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMUE99A1 DD DSN=MXCP.ZM.TMP.ENC.VIBG55A2,DISP=SHR
//ZMUE99A2 DD DSN=MXCP.ZM.TMP.ENC.VIBL99A2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=138,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE9T06),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE98 ==                            *
//* OBJETIVO : RESUMEN DE OPERACIONES DE CTAS DE CASA,OPERATIVAS, DE   *
//*            CLIENTES Y PROVEEDORES                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUFE9P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE98R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE9T05),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE56 ==                            *
//* OBJETIVO : LIQ. OPERACIONES DIARIAS NO EFECTIVO                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUFE9P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE56R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE9T04),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE57 ==                            *
//* OBJETIVO : LIQ. OPERACIONES DIARIAS NO EFECTIVO NO ARBITRAJE       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUFE9P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE57R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMUE57A1 DD DSN=MXCP.ZM.TMP.ENC.VIBG57A2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=176,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,05),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE9T03),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE58 ==                            *
//* OBJETIVO : LIQ. OPERACIONES DIARIAS NO EFECTIVO DE ARBITRAJE       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUFE9P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE58R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMUE58A1 DD DSN=MXCP.ZM.TMP.ENC.VIBG58A2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=176,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,05),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE9T02),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE97 ==                            *
//* OBJETIVO : AMARRE DE OPERACION DE LA BMV                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PUFE9P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMUE97R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMUE97A1 DD DSN=MXCP.ZM.TMP.ENC.VIBG57A2,DISP=SHR
//ZMUE97A2 DD DSN=MXCP.ZM.TMP.ENC.VIBL97A2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=138,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),
//            UNIT=3390
//ZMUE97A3 DD DSN=MXCP.ZM.TMP.ENC.VIBG58A2,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE9T01),DISP=SHR
