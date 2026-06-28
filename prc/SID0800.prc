//SID0800  PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *
//*                                                                    *
//* PROCESO        :  PRESID08   (DISPARADOR)                          *
//*                   SID0800    PROCEDIMIENTO                         *
//*                                                                    *
//* OBJETIVO       :  IMPRESION DE REPORTES VARIOS DE SOC. INV.        *
//*                   SOLICITADOS POR EL USUARIO.                      *
//*                                                                    *
//* CORRE                                                              *
//* DESPUES DE     :  PTEPED01                                         *
//*                                                                    *
//* ANTES   DE     :  PIDCPD02                                         *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ / FEDERICO ROCHA DOMINGUEZ*
//*                                                                    *
//* FECHA          :  FEBRERO/1992                                     *
//*                                                                    *
//* OBSERVACIONES  :  ESTE PROCESO NO ACTUALIZA NINGUNA TABLA EXCEPTO  *
//*                   A PARAM EN EL ULTIMO PASO                        *
//*                                                                    *
//**********************************************************************
//* MODIFICO       :  LAURA E. HERNANDEZ (CENTRISA)                    *
//*                                                                    *
//* FECHA          :  MARZO/2000                                       *
//*                                                                    *
//* OBSERVACIONES  :  SE COMENTARIZARON LOS PASOS DONDE SE EJECUTAN    *
//*                   LOS PROGRAMAS RIB054M, RIB055M Y RIB056M, YA     *
//*                   QUE ERAN PARA LA CONTINGENCIA DEL A¦O 2000.      *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*                       -- VIBS01E --                                *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO Y REPORTE DE POSICION DE CLIENTES DE     *
//*            SOCIEDADES DE INVERSION CORTE POR SUCURSAL.             *
//**********************************************************************
//SID0815 EXEC PGM=IKJEFT01,DYNAMNBR=20,
//       REGION=4M,COND=(4,LT)
//S1DSOCIN DD DSN=SIVA.SIN.FIX.POSICION,
//             DISP=(NEW,CATLG,CATLG),
//             UNIT=3390,
//             SPACE=(100,(100,50),RLSE),
//             RECFM=FB,LRECL=127
//S1DSOREP DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0815),DISP=SHR
//**********************************************************************
//*                       -- VIB162E --                                *
//*                                                                    *
//* OBJETIVO : EMITIR REPORTE DE CONTRATOS CON TENENCIA MAYOR AL       *
//*            PROPORCIONADO EN CAPITAL SOCIAL DE SOCIEDADES DE INV.   *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//SID0814  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIB162R1 DD SYSOUT=(V,,TI30)
//VIB162R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0814),DISP=SHR
//*
//**********************************************************************
//*                       -- VIB934D --                                *
//*                                                                    *
//* OBJETIVO : EMITIR REPORTE DE OPERACIONES DE SOCINVER.              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//SID0813  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIB934R1 DD SYSOUT=(V,,TI25)
//VIB934R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0813),DISP=SHR
//*
//**********************************************************************
//*                       -- VIB165O --                                *
//*                                                                    *
//* OBJETIVO : EMITIR REPORTE DEMOVIMIENTOS POR RANGO                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//SID0812  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIB165R1 DD SYSOUT=(V,,TI13)
//VIB165R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0812),DISP=SHR
//*
//**********************************************************************
//*                       -- VIB177O --                                *
//*                                                                    *
//* OBJETIVO : EMITIR REPORTE DE CLIENTES EN SOC. DE INVERSION X       *
//*            INSTRUMNETO                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//SID0811  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIB177R1 DD SYSOUT=(V,,TI22)
//VIB177R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0811),DISP=SHR
//*
//**********************************************************************
//*                       -- VIB168M --                                *
//*                                                                    *
//* OBJETIVO : EMITIR REPORTE DE TENENCIA POR RANGOS - S.I.            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//SID0807  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIB168R1 DD SYSOUT=(V,,TI15)
//VIB168R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0807),DISP=SHR
//*
//**********************************************************************
//*                       -- VIB173E --                                *
//*                                                                    *
//* OBJETIVO : EMITIR REPORTE DE CLIENTES CON POSICION EN S.I.         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//SID0805  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIB173R1 DD SYSOUT=(V,,TI18)
//VIB173R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0805),DISP=SHR
//*
//**********************************************************************
//*                       -- VIB167M --                                *
//*                                                                    *
//* OBJETIVO : EMITIR REPORTE DE POSICIONES TRANSPASADAS - S.I.        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//SID0804  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIB167R1 DD SYSOUT=(V,,TI24)
//VIB167R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0804),DISP=SHR
//*
//**********************************************************************
//*                       -- VIB171E --                                *
//*                                                                    *
//* OBJETIVO : EMITIR REPORTE DE POSICION DE CLIENTES EXTRANJEROS S.I. *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//SID0803  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*VIB171R1 DD SYSOUT=(V,,TI17)
//VIB171R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0803),DISP=SHR
//*
//**********************************************************************01130000
//*                          === VIB171M ===                           *01140000
//* OBJETIVO : REPORTE PARA SOCIEDADES DE INVERSION                    *01150000
//*                                                                    *01160000
//**********************************************************************01170000
//*                                                                     01180000
//SID0803B EXEC PGM=IKJEFT01,DYNAMNBR=20,                               01190000
//           REGION=4M,COND=(4,LT),                                     01200000
//            TIME=100                                                  01210000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01230000
//SYSPRINT DD SYSOUT=X                                                  01240000
//SYSOUT   DD SYSOUT=X                                                  01250000
//VIB171RB DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                     01270000
//VIB171RC DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                     01290000
//SOCEXT   DD DSN=SIVA.SIN.FIX.SOCEXT,DISP=(NEW,CATLG,DELETE),          01300000
//            UNIT=SYSDA,SPACE=(CYL,(15,5),RLSE),                       01310000
//            DCB=(RECFM=FB,LRECL=87,BLKSIZE=8700,DSORG=PS)             01320000
//SYSDBOUT DD SYSOUT=X                                                  01330000
//SYSABOUT DD SYSOUT=X                                                  01340000
//SYSUDUMP DD DUMMY                                                     01350000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0803B),DISP=SHR                         01360000
//*                                                                     01370000
//**********************************************************************
//*                       -- VIB188D --                                *
//*                                                                    *
//* OBJETIVO : BORRAR PARAMETROS DE EJECUCION --- S.I.                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//SID0801  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0801),DISP=SHR
//*
//**********************************************************************
//*                       -- DSNTIAUL   --                             *
//*   OBJETIVO :  PLAN DE CONTINGENCIA AñO 2000 GENERA 2 ARCHIVOS P EL *
//*               AREA DE TESORERIA LOS CUALES DEBEN BAJAR A EXCEL     *
//*                           = RIB054M =                              *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//*SID0801E EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//*         PARM='/DEBUG',TIME=100
//*STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//*EFVOCONT DD DSN=SIVA.TES.FIX.EFVOCONT,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(DSORG=PS,LRECL=29,RECFM=FB,BLKSIZE=0),
//*            UNIT=SYSDA,
//*            SPACE=(CYL,(50,5),RLSE)
//*
//*TOTCART  DD DSN=SIVA.TES.FIX.TOTCART,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(DSORG=PS,LRECL=110,RECFM=FB,BLKSIZE=0),
//*            UNIT=SYSDA,
//*            SPACE=(CYL,(50,5),RLSE)
//*
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(20,10))
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=X
//*SYSOUT   DD SYSOUT=X
//*SYSDBOUT DD SYSOUT=X
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(SID0801E),DISP=SHR
//*
//**********************************************************************
//*                       -- DSNTIAUL   --                             *
//*   OBJETIVO :  PLAN DE CONTINGENCIA AñO 2000, GENERAR 1 ARCHIVO     *
//*               P  LAS TRECE SOC. DE INV. 8 COMUNES Y 5 DE DEUDA     *
//*                           = RIB055M =                              *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//*SID0801D EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//*         PARM='/DEBUG',TIME=100
//*STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//*PROMOT   DD DSN=SIVA.TES.FIX.PROMOT,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(DSORG=PS,LRECL=127,RECFM=FB,BLKSIZE=0),
//*            UNIT=SYSDA,
//*            SPACE=(CYL,(50,5),RLSE)
//*
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(20,10))
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=X
//*SYSOUT   DD SYSOUT=X
//*SYSDBOUT DD SYSOUT=X
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(SID0801D),DISP=SHR
//*
//**********************************************************************
//*                       -- DSNTIAUL   --                             *
//*   OBJETIVO :  PLAN DE CONTINGENCIA AñO 2000, GENERAR 1 ARCHIVO P EL*
//*               AREA DE PROMOCION EL CUAL DEBE BAJAR A EXCEL.        *
//*                           = RIB056M =                              *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//*SID0801C EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//*         PARM='/DEBUG',TIME=100
//*STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//*SOCINV   DD DSN=SIVA.TES.FIX.SOCINV,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(DSORG=PS,LRECL=55,RECFM=FB,BLKSIZE=0),
//*            UNIT=SYSDA,
//*            SPACE=(CYL,(50,5),RLSE)
//*
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(20,10))
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=X
//*SYSOUT   DD SYSOUT=X
//*SYSDBOUT DD SYSOUT=X
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=SIVA.CARDS(SID0801C),DISP=SHR
//*
//**********************************************************************
//*                       -- DSNTIAUL   --                             *
//*   OBJETIVO :  GENERAR REPORTE Y ARCHIVO DE POSICION MENSUAL        *
//*               DE BBVPRO PARA EL AREA DE RELACIONES ACCIONARIAS     *
//*                           = RIB057M =                              *
//*   PASO REINICIABLE POR RESTART                                     *
//**********************************************************************
//SID0801B EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//         PARM='/DEBUG',TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*
//RIB057M  DD DSN=SIVA.SIN.FIX.REPBBVP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//            UNIT=SYSDA,
//            SPACE=(CYL,(50,5),RLSE)
//*
//FILR57M  DD DSN=SIVA.SIN.FIX.ARCBBVP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=81,RECFM=FB,BLKSIZE=0),
//            UNIT=SYSDA,
//            SPACE=(CYL,(50,5),RLSE)
//*
//SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(20,10))
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID0801B),DISP=SHR
//*
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO SID0800                        *
//**********************************************************************
