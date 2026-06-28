//ZMSFPA25 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCA25                                         *
//*                   EXTRACTORES DE ADMINISTRACION DE PROMOCION       *
//*                                                                    *
//* OBJETIVO       :  DEPURAR LAS TABLAS SEPRSCC, SEPRSPR, SEINGFU,    *
//*                   SEPRBON, SEGASTO, SECAPTA DE SIIE                *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  ANUAL                                            *
//*                                                                    *
//* DESPUES DE     :  ANUAL                                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JULIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  CORRE EL PRIMER DIA HABIL DE CADA ANIO           *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4ES010 ==                            *
//* OBJETIVO    : DEPURAR LAS TABLAS SEPRSCC, SEPRSPR, SEINGFU,        *
//*             : SEPRBON, SEGASTO, SECAPTA DE SIIE                    *
//*                                                                    *
//* LOS PARAMETROS USADOS POR EL PROGRAMA SON LOS SIGUIENTES:          *
//*                                                                    *
//* MESES-PRSCC          PIC 9(03)  PRESUPUESTOS POR CENTRO DE COSTOS  *
//* MESES-PRSPR          PIC 9(03)  PRESUPUESTOS POR PROMOTOR          *
//* MESES-INGFU          PIC 9(03)  INGRESOS POR FUERA                 *
//* MESES-PRBON          PIC 9(03)  EMPLEADOS Y PROMOTORES             *
//* MESES-GASTO          PIC 9(03)  GASTO                              *
//* MESES-CAPTA          PIC 9(03)  CAPTACION EXTRA                    *
//*                                                                    *
//* CONTIENEN EL NUMERO DE MESES DE RETENCION DE LA INFORMACION        *
//*                                                                    *
//**********************************************************************
//PSF25P01 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//SYSPRINT DD SYSOUT=*
//ZMSE10A1 DD DSN=MXCP.ZM.FIX.SIE.BKP.PRSCC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=67,BLKSIZE=0),
//            UNIT=3390
//ZMSE10A2 DD DSN=MXCP.ZM.FIX.SIE.BKP.PRSPR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=67,BLKSIZE=0),
//            UNIT=3390
//ZMSE10A3 DD DSN=MXCP.ZM.FIX.SIE.BKP.INGFU,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=75,BLKSIZE=0),
//            UNIT=3390
//ZMSE10A4 DD DSN=MXCP.ZM.FIX.SIE.BKP.PRBON,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=149,BLKSIZE=0),
//            UNIT=3390
//ZMSE10A5 DD DSN=MXCP.ZM.FIX.SIE.BKP.GASTO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=57,BLKSIZE=0),
//            UNIT=3390
//ZMSE10A6 DD DSN=MXCP.ZM.FIX.SIE.BKP.CAPTA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=74,BLKSIZE=0),
//            UNIT=3390
//SYSOUT   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF25TA1),DISP=SHR
