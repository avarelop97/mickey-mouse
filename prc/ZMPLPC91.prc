//ZMPLPC91 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*    @GAH      MB13732  27NOV19 SE MODIFICA LA LONGITUD EL ARCHIVO   *
//*                               MXCP.ZM.FIX.REP.EXTRACT.MEN.F&FECHA  *
//*                               DE 618 A 718 Y LA DE LOS ARCHIVOS    *
//*                               MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA, *
//*                               MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA, *
//*                               MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA, *
//*                               MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA  *
//*                               Y SUS SUBSECUENTES ".SORT" DE 547 A  *
//*                               655 PARA LA INTEGRACION DE LOS       *
//*                               CAMPOS DE PERDIDAS Y GANANCIAS       *
//*                               VIRTUALES.                           *
//*--------------------------------------------------------------------*
//* PASO    : ZMPC9150
//* PROGRAMA: ZM4OJ094
//* DESCRIPCION: EXTRAE INFORMACION DEL MES ANT PARA CONSTANCIAS DEL SAT
//*---------------------------------------------------------------------
//ZMPC9150 EXEC PGM=IKJEFT01
//*
//ZMJ094S1 DD DSN=MXCP.ZM.FIX.REP.EXTRACT.MEN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,500),RLSE),
//            DCB=(RECFM=FB,LRECL=718,BLKSIZE=0,DSORG=PS)
//*
//ZMJ094S2 DD DSN=MXCP.ZM.FIX.INC.MEN.EXTRACT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC9150),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO    : ZMPC9145                                                 *
//* PROGRAMA: ZM4OJ090                                                 *
//**********************************************************************
//ZMPC9145 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.REP.EXTRACT.MEN.F&FECHA,DISP=SHR
//*
//ZMJ090S1 DD DSN=MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=655,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S2 DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=655,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S3 DD DSN=MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=655,BLKSIZE=0,DSORG=PS)
//*
//ZMJ090S4 DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=655,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPC9045),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE CAPITALES.                             *
//**********************************************************************
//ZMPC9140 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA..SOR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9040),DISP=SHR
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE CAPITALES.                             *
//**********************************************************************
//ZMPC9139 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA..SOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9039),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     :                                                         *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO :                                                         *
//*--------------------------------------------------------------------*
//ZMPC9138 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA..SOR1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA..SOR2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA..SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE CAPITALES.                             *
//**********************************************************************
//ZMPC9135 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA..SOR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9040),DISP=SHR
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE CAPITALES.                             *
//**********************************************************************
//ZMPC9134 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA..SOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9039),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     :                                                         *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO :                                                         *
//*--------------------------------------------------------------------*
//ZMPC9133 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA..SOR1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA..SOR2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA..SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SEPARA EL ENCABEZADO DEL ARCHIVO PARA PODER ORDENARLO    *
//**********************************************************************
//ZMPC9130 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA..ENC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9030),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC9125.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL DE BANCA*
//*            CON CAPITALES                                           *
//*--------------------------------------------------------------------*
//ZMPC9125 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA..SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA..CAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC9120.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL DE CASA *
//*            CON CAPITALES                                           *
//*--------------------------------------------------------------------*
//ZMPC9120 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANCCAP.MEN.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA..SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASACAP.MEN.F&FECHA..CAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE SOCIEDADES.                            *
//**********************************************************************
//ZMPC9116 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA..SOR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9040),DISP=SHR
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE SOCIEDADES.                            *
//**********************************************************************
//ZMPC9115 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA..SOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9039),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     :                                                         *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO :                                                         *
//*--------------------------------------------------------------------*
//ZMPC9114 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA..SOR1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA..SOR2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA..SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * BANCA                               *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE SOCIEDADES.                            *
//**********************************************************************
//ZMPC9113 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA..SOR1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9040),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * BANCA                               *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           OPERACION IREF DE SOCIEDADES.                            *
//**********************************************************************
//ZMPC9112 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA..SOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9039),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC9125.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL DE BANCA*
//*            CON CAPITALES                                           *
//*--------------------------------------------------------------------*
//ZMPC9111 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA..SOR1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA..SOR2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA..SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: SEPARA EL ENCABEZADO DEL ARCHIVO PARA PODER ORDENARLO    *
//**********************************************************************
//ZMPC9110 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA..ENC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9030),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC9007.                                               *
//* PROGRAMA : ICEMAN BANCA-SIRV                                       *
//* OBJETIVO : COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL DE BANCA*
//*            CON SOCIEDADES                                          *
//*--------------------------------------------------------------------*
//ZMPC9107 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA..SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA..SI1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC9105.                                               *
//* PROGRAMA : ICEMAN CASA-SIRV                                        *
//* OBJETIVO : COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL DE BANCA*
//*            CON SOCIEDADES                                          *
//*--------------------------------------------------------------------*
//ZMPC9105 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.BANSIVR.MEN.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA..SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.CASSIVR.MEN.F&FECHA..SI1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=655,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPC9025),DISP=SHR
