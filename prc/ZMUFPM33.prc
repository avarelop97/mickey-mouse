//ZMUFPM33 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM RENDIMIENTOS DE INGRESOS SIVA                    *
//* PROCESO      : ZMUFPM55                                            *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : ACTUALIZACION DE CONSOLIDADO DIVISIONAL             *
//* REALIZO      : ASP.                                                *
//* FECHA        : MARZO 2010.                                         *
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
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU138                     *
//*--------------------------------------------------------------------*
//PUF33180 EXEC PGM=ZM3CTC01,COND=(4,LT),PARM=('P,MXP1,ZM4MU138,')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M55.ZM4MU138,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//**********************************************************************
//* PASO    : PUF33170                                                 *
//* PGM/UTIL: ZM4MU138 / IKJEFT01                                      *
//* OBJETIVO: ACTUALIZACION DE DIVISION.                               *
//**********************************************************************
//PUF33170 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M55.ZM4MU138,
//            DISP=(OLD,DELETE,DELETE)
//*
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU139                     *
//*--------------------------------------------------------------------*
//PUF33150 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU139,20.&FECHA')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M55.ZM4MU139,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//**********************************************************************
//* PASO    : PUF33140                                                 *
//* PGM/UTIL: ZM4MV008 / IKJEFT01                                      *
//* OBJETIVO: CALCULO DE CONSOLIDADO POóR óDIVISION                    *
//**********************************************************************
//PUF33140 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M55.ZM4MU139,
//            DISP=(OLD,DELETE,DELETE)
//*
//*--------------------------------------------------------------------*
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU140                     *
//*--------------------------------------------------------------------*
//PUF33150 EXEC PGM=ZM3CTC01,COND=(4,LT),
//         PARM=('P,MXP1,ZM4MU140,20.&FECHA')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M55.ZM4MU140,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//**********************************************************************
//* PASO    : PUF33140                                                 *
//* PGM/UTIL: ZM4MV008 / IKJEFT01                                      *
//* OBJETIVO: CALCULO DE CONSOLIDADO POóR óDIVISION                    *
//**********************************************************************
//PUF33140 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M55.ZM4MU140,
//            DISP=(OLD,DELETE,DELETE)
//*
//**********************************************************************
