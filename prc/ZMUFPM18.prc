//ZMUFPM18 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM RENDIMIENTOS DE INGRESOS SIVA                    *
//* PROCESO      : ZMUFPM18                                            *
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
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF07P90 EXEC PGM=ZM3CTC01,PARM=('P,MXP1,ZM4MU126,02.BQR.20&FECHA')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BQR.ZM4MU126,
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
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BQR.ZM4MU126,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF07P70 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.UNG.20&FECHA')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.UNG.ZM4MU126,
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
//SYSTSIN  DD DSN=MXCP.ZM.WKF.UNG.ZM4MU126,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF07P50 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.DIV.20&FECHA')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.DIV.ZM4MU126,
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
//SYSTSIN  DD DSN=MXCP.ZM.WKF.DIV.ZM4MU126,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU126                     *
//*--------------------------------------------------------------------*
//PUF07P30 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU126,02.BCA.20&FECHA')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BCA.ZM4MU126,
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
//SYSTSIN  DD DSN=MXCP.ZM.WKF.BCA.ZM4MU126,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUFPM18                        *
//*--------------------------------------------------------------------*
