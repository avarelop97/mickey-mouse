//ZMUFPM35 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM RENDIMIENTOS DE INGRESOS SIVA                    *
//* PROCESO      : ZMUFPM35                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD EN LA TABLA  *
//*                ZMDT768.
//* REALIZO      : ASP(LMSE)                                           *
//* FECHA        : 01 DICIEMBRE 2009                                   *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126 DICIEMBRE 2009      *
//*--------------------------------------------------------------------*
//PUF07P90 EXEC PGM=ZM3CTC01,PARM=('P,MXP1,ZM4MU126,02.BQR.20091231')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BQR.ZM4MU126.M091231,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL BANQUERO *
//*--------------------------------------------------------------------*
//PUF07P80 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BQR.ZM4MU126.M091231,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF07P70 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.UNG.20091231')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.UNG.ZM4MU126.M091231,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL OFICINA  *
//*--------------------------------------------------------------------*
//PUF07P60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.UNG.ZM4MU126.M091231,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF07P50 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.DIV.20091231')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.DIV.ZM4MU126.M091231,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL DIVISION *
//*--------------------------------------------------------------------*
//PUF07P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.DIV.ZM4MU126.M091231,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF07P30 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.BCA.20091231')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BCA.ZM4MU126.M091231,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL BANCA    *
//*--------------------------------------------------------------------*
//PUF07P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BCA.ZM4MU126.M091231,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126 ENERO 2010          *
//*--------------------------------------------------------------------*
//PUF07P90 EXEC PGM=ZM3CTC01,PARM=('P,MXP1,ZM4MU126,02.BQR.20100129'),
//            COND=(4,LT)
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BQR.ZM4MU126.M100129,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL BANQUERO *
//*--------------------------------------------------------------------*
//PUF06P80 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BQR.ZM4MU126.M100129,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF06P70 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.UNG.20100129')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.UNG.ZM4MU126.M100129,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL OFICINA  *
//*--------------------------------------------------------------------*
//PUF06P60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.UNG.ZM4MU126.M100129,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF06P50 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.DIV.20100129')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.DIV.ZM4MU126.M100129,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL DIVISION *
//*--------------------------------------------------------------------*
//PUF06P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.DIV.ZM4MU126.M100129,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF06P30 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.BCA.20100129')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BCA.ZM4MU126.M100129,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL BANCA    *
//*--------------------------------------------------------------------*
//PUF06P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BCA.ZM4MU126.M100129,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126 FEBREO 2010         *
//*--------------------------------------------------------------------*
//PUF05P90 EXEC PGM=ZM3CTC01,PARM=('P,MXP1,ZM4MU126,02.BQR.20100226'),
//            COND=(4,LT)
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BQR.ZM4MU126.M100226,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL BANQUERO *
//*--------------------------------------------------------------------*
//PUF05P80 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BQR.ZM4MU126.M100226,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF05P70 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.UNG.20100226')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.UNG.ZM4MU126.M100226,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL OFICINA  *
//*--------------------------------------------------------------------*
//PUF05P60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.UNG.ZM4MU126.M100226,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF05P50 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.DIV.20100226')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.DIV.ZM4MU126.M100226,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL DIVISION *
//*--------------------------------------------------------------------*
//PUF05P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.DIV.ZM4MU126.M100226,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF05P30 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.BCA.20100226')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BCA.ZM4MU126.M100226,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF07P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU126                                       *
//* OBJETIVO : ACTUALIZACION MENSUAL DE PRODUCTIVIDAD A NIVEL BANCA    *
//*--------------------------------------------------------------------*
//PUF05P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BCA.ZM4MU126.M100226,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUFPM35                        *
//*--------------------------------------------------------------------*
