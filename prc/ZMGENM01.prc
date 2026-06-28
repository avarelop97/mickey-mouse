//ZMGENM01 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : BCUENE01                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : REALIZA CARGA DE NIF PROVENIENTES DE PATRIMONIAL    *
//*                PARA PODER INFORMAR NUMERO DE REGISTRO TRIBUTARIO EN*
//*                ESTADO DE CUENTA                                    *
//* FECHA        : SEPTIEMBRE 2018                                     *
//*                                                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-01  XMY2883  31OCT18 SE COMENTARIZA EL PASO ZMNM0150      *
//*--------------------------------------------------------------------*
//* PASO     :  ZMNM0150                                               *
//* PROGRAMA :  IKJEFT01/ZM4NIF01                                      *
//* OBJETIVO :  REALIZA CARGA DE NIF CORRESPONDIENTES A PATRIMONIAL EN *
//*             TABLA ZMDTLOG                                          *
//*--------------------------------------------------------------------*
//*FS-0.0.0-01-I
//*ZMNM0150 EXEC PGM=IKJEFT01
//*
//*ENTRADA  DD DSN=MXCP.ZM.FIX.FACTA.V06.F&FECHA,DISP=SHR
//*
//*SYSOUT   DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM0150),DISP=SHR                  00710000
//*
//*FS-0.0.0-01-F
//*--------------------------------------------------------------------*
//* PASO     :  ZMNM0145                                               *
//* PROGRAMA :  ADUUMAIN                                               *
//* OBJETIVO :  REALIZA DESCARGA DE LA TABLA ZMDT110 PARA OBTENER NIF. *
//*--------------------------------------------------------------------*
//ZMNM0145 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUC01P15,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC01 DD DSN=MXCP.ZM.FIX.FACTA.V06.NIFLOG1,
//            SPACE=(CYL,(100,50),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNM0145),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     :  ZMNM0140                                               *
//* PROGRAMA :  IKJEFT01/ZM4VER03                                      *
//* OBJETIVO :  REALIZA CARGA DE NIF CORRESPONDIENTES A PATRIMONIAL EN *
//*             TABLA ZMDTLOG CORRESPONDIENTE DE ZMDT110               *
//*--------------------------------------------------------------------*
//ZMNM0140 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4VERE1 DD DSN=MXCP.ZM.FIX.FACTA.V06.NIFLOG1,DISP=SHR
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM0140),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMGENM01                          *
//*--------------------------------------------------------------------*
