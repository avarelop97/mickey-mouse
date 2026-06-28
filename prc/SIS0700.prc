//SIS0700 PROC                                                          00010000
//*                                                                     00020000
//**********************************************************************00024000
//*                                                                    *00025000
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *00026000
//*                                                                    *00027000
//* PROCESO        :  PRESIS07   (DISPARADOR)                          *00028000
//*                   SIS0700    PROCEDIMIENTO                         *00029000
//*                                                                    *00029100
//* OBJETIVO       :  CORRER EL DESBLOQUEO AUTOMATICO DE FUNCIONES.    *00029200
//*                   CONTROL DE SOCIEDADES DE INVERSION.              *00029200
//*                                                                    *00029500
//* REALIZO        :  RUBEN HERNANDEZ ORTIZ.                           *00030100
//* FECHA          :  ENERO 1993.                                      *00030200
//*                                                                    *00025000
//**********************************************************************00030300
//**********************************************************************00040000
//*                     * VIB011S *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : REPORTE DE TENENCIA DE FONDOS DE SOC DE INV             *00070000
//*            RANGO MENOSRES A 150,000                                *00060001
//* NO ACTUALIZA TABLAS.                                               *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SIS0709  EXEC PGM=IKJEFT01                                            00030003
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//*VIB011R1 DD SYSOUT=(O,,TI32)                                         00101103
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*VIB011R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//*VIB011R1 DD DSN=MXCP.ZM.FIX.SIS0700.REPORTE1,                        00101203
//*           DISP=(NEW,CATLG,DELETE),                                  00101400
//*           DCB=(DSORG=PS,LRECL=134,RECFM=FB,BLKSIZE=0),              00101502
//*           UNIT=3390,                                                00101600
//*           SPACE=(CYL,(1,1),RLSE)                                    00101700
//*
//VIB011R1 DD DUMMY                                                     00101203
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//VIB011A1 DD DSN=SIVA.SIN.FIX.VIB011A1,                                00101203
//           DISP=(NEW,CATLG,DELETE),                                   00101400
//           DCB=(DSORG=PS,LRECL=59,RECFM=FB,BLKSIZE=0),                00101502
//           UNIT=3390,                                                 00101600
//           SPACE=(CYL,(1,1),RLSE)                                     00101700
//SYSOUT   DD SYSOUT=*                                                  00110000
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD DUMMY                                                     00140000
//SYSUDUMP DD DUMMY                                                     00150000
//SYSTSIN  DD DSN=SIVA.CARDS(SIS0709),DISP=SHR                          00250003
//**********************************************************************00040000
//*                     * VIB012S *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : REPORTE DE TENENCIA DE FONDOS DE SOC DE INV             *00070000
//*            RANGO DE 300,000 A 999,999                              *00060001
//* NO ACTUALIZA TABLAS.                                               *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SIS0708  EXEC PGM=IKJEFT01,COND=(4,LT)                                00030003
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//VIB012R1 DD SYSOUT=V                                                  00101103
//VIB012A1 DD DSN=SIVA.SIN.FIX.VIB012A1,                                00101203
//           DISP=(NEW,CATLG,DELETE),                                   00101400
//           DCB=(DSORG=PS,LRECL=59,RECFM=FB,BLKSIZE=0),                00101502
//           UNIT=3390,                                                 00101600
//           SPACE=(CYL,(1,1),RLSE)                                     00101700
//SYSOUT   DD SYSOUT=*                                                  00110000
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD DUMMY                                                     00140000
//SYSUDUMP DD DUMMY                                                     00150000
//SYSTSIN  DD DSN=SIVA.CARDS(SIS0708),DISP=SHR                          00250003
//**********************************************************************00040000
//*                     * VIB013S *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : REPORTE DE TENENCIA DE FONDOS DE SOC DE INV             *00070000
//*            RANGO DE 1,000,000 A 2,999,999                          *00060001
//* NO ACTUALIZA TABLAS.                                               *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SIS0707  EXEC PGM=IKJEFT01,COND=(4,LT)                                00030003
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//VIB013R1 DD SYSOUT=V                                                  00101103
//VIB013A1 DD DSN=SIVA.SIN.FIX.VIB013A1,                                00101203
//           DISP=(NEW,CATLG,DELETE),                                   00101400
//           DCB=(DSORG=PS,LRECL=59,RECFM=FB,BLKSIZE=0),                00101502
//           UNIT=3390,                                                 00101600
//           SPACE=(CYL,(1,1),RLSE)                                     00101700
//SYSOUT   DD SYSOUT=*                                                  00110000
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD DUMMY                                                     00140000
//SYSUDUMP DD DUMMY                                                     00150000
//SYSTSIN  DD DSN=SIVA.CARDS(SIS0707),DISP=SHR                          00250003
//**********************************************************************00040000
//*                     * VIB014S *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : REPORTE DE TENENCIA DE FONDOS DE SOC DE INV             *00070000
//*            RANGO DE 3,000,000 A 4,999,999                          *00060001
//* NO ACTUALIZA TABLAS.                                               *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SIS0706  EXEC PGM=IKJEFT01,COND=(4,LT)                                00030003
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//VIB014R1 DD SYSOUT=V                                                  00101103
//VIB014A1 DD DSN=SIVA.SIN.FIX.VIB014A1,                                00101203
//           DISP=(NEW,CATLG,DELETE),                                   00101400
//           DCB=(DSORG=PS,LRECL=59,RECFM=FB,BLKSIZE=0),                00101502
//           UNIT=3390,                                                 00101600
//           SPACE=(CYL,(1,1),RLSE)                                     00101700
//SYSOUT   DD SYSOUT=*                                                  00110000
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD DUMMY                                                     00140000
//SYSUDUMP DD DUMMY                                                     00150000
//SYSTSIN  DD DSN=SIVA.CARDS(SIS0706),DISP=SHR                          00250003
//**********************************************************************00040000
//*                     * VIB016S *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : REPORTE DE TENENCIA DE FONDOS DE SOC DE INV             *00070000
//*            RANGO DE 3,000,000 A 4,999,999                          *00060001
//* NO ACTUALIZA TABLAS.                                               *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SIS0705  EXEC PGM=IKJEFT01,COND=(4,LT)                                00030003
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//VIB016R1 DD SYSOUT=V                                                  00101103
//VIB016A1 DD DSN=SIVA.SIN.FIX.VIB016A1,                                00101203
//           DISP=(NEW,CATLG,DELETE),                                   00101400
//           DCB=(DSORG=PS,LRECL=59,RECFM=FB,BLKSIZE=0),                00101502
//           UNIT=3390,                                                 00101600
//           SPACE=(CYL,(1,1),RLSE)                                     00101700
//SYSOUT   DD SYSOUT=*                                                  00110000
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD DUMMY                                                     00140000
//SYSUDUMP DD DUMMY                                                     00150000
//SYSTSIN  DD DSN=SIVA.CARDS(SIS0705),DISP=SHR                          00250003
//**********************************************************************00040000
//*                     * VIB017S *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : REPORTE DE TENENCIA DE FONDOS DE SOC DE INV             *00070000
//*            RANGO DE 5,000,000 A 9,999,999                          *00060001
//* NO ACTUALIZA TABLAS.                                               *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SIS0704  EXEC PGM=IKJEFT01,COND=(4,LT)                                00030003
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//VIB017R1 DD SYSOUT=V                                                  00101103
//VIB017A1 DD DSN=SIVA.SIN.FIX.VIB017A1,                                00101203
//           DISP=(NEW,CATLG,DELETE),                                   00101400
//           DCB=(DSORG=PS,LRECL=59,RECFM=FB,BLKSIZE=0),                00101502
//           UNIT=3390,                                                 00101600
//           SPACE=(CYL,(1,1),RLSE)                                     00101700
//SYSOUT   DD SYSOUT=*                                                  00110000
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD DUMMY                                                     00140000
//SYSUDUMP DD DUMMY                                                     00150000
//SYSTSIN  DD DSN=SIVA.CARDS(SIS0704),DISP=SHR                          00250003
//**********************************************************************00040000
//*                     * VIB018S *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : REPORTE DE TENENCIA DE FONDOS DE SOC DE INV             *00070000
//*            RANGO MAYORES A 10,000,000                              *00060001
//* NO ACTUALIZA TABLAS.                                               *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SIS0703  EXEC PGM=IKJEFT01,COND=(4,LT)                                00030003
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//VIB018R1 DD SYSOUT=V                                                  00101103
//VIB018A1 DD DSN=SIVA.SIN.FIX.VIB018A1,                                00101203
//           DISP=(NEW,CATLG,DELETE),                                   00101400
//           DCB=(DSORG=PS,LRECL=59,RECFM=FB,BLKSIZE=0),                00101502
//           UNIT=3390,                                                 00101600
//           SPACE=(CYL,(1,1),RLSE)                                     00101700
//SYSOUT   DD SYSOUT=*                                                  00110000
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD DUMMY                                                     00140000
//SYSUDUMP DD DUMMY                                                     00150000
//SYSTSIN  DD DSN=SIVA.CARDS(SIS0703),DISP=SHR                          00250003
//**********************************************************************00040000
//*                     * VIB019S *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : REPORTE DE TENENCIA DE FONDOS DE SOC DE INV             *00070000
//*                                                                    *00060001
//* NO ACTUALIZA TABLAS.                                               *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SIS0702  EXEC PGM=IKJEFT01,COND=(4,LT)                                00030003
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//VIB019R1 DD SYSOUT=V                                                  00101103
//VIB019A1 DD DSN=SIVA.SIN.FIX.VIB019A1,                                00101203
//           DISP=(NEW,CATLG,DELETE),                                   00101400
//           DCB=(DSORG=PS,LRECL=106,RECFM=FB,BLKSIZE=0),               00101502
//           UNIT=3390,                                                 00101600
//           SPACE=(CYL,(1,1),RLSE)                                     00101700
//SYSOUT   DD SYSOUT=*                                                  00110000
//SYSDBOUT DD SYSOUT=*                                                  00130000
//SYSABOUT DD DUMMY                                                     00140000
//SYSUDUMP DD DUMMY                                                     00150000
//SYSTSIN  DD DSN=SIVA.CARDS(SIS0702),DISP=SHR                          00250003
//**********************************************************************00040000
//*                     * VIB169S *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : REPORTE DE TENENCIA ACCIONARIA                          *00070000
//*                                                                    *00060001
//* NO ACTUALIZA TABLAS.                                               *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SIS0701  EXEC PGM=IKJEFT01,COND=(4,LT)                                00110000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00150000
//SYSABEND DD DUMMY                                                     02440000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSCOUNT DD SYSOUT=*                                                  02480000
//VIB169A1 DD DSN=SIVA.SIN.FIX.VIB169A1,
//        DISP=(NEW,PASS),
//        DCB=(DSORG=PS,LRECL=106,RECFM=FB,BLKSIZE=0),
//        UNIT=3390,
//        SPACE=(CYL,(5,1),RLSE)
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(9,1))
//*VIB169R1 DD SYSOUT=(O,,TI32)                                         02480000
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*VIB169R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//*VIB169R1 DD DSN=SIVA.SIN.FIX.SIS0700.REPORTE2,
//*        DISP=(NEW,CATLG,DELETE),
//*        DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//*        UNIT=3390,
//*        SPACE=(CYL,(5,1),RLSE)
//*
//VIB169R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//SYSOUT   DD SYSOUT=*                                                  00210002
//SYSDBOUT DD SYSOUT=*                                                  00220002
//SYSABOUT DD DUMMY                                                     00230000
//SYSUDUMP DD DUMMY                                                     00240000
//SYSTSIN  DD DSN=SIVA.CARDS(SIS0701),DISP=SHR                          00250003
//*                                                                     00010000
