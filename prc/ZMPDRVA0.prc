//ZMPDRVA0 PROC
//*====================================================================*
//* PROYECTO    : ZM - RENTA VARIABLE.                                 *
//* PROCESO     : BCJDRVA0                                             *
//* PERIODICIDAD: DIARIA                                               *
//* OBJETIVO    : VALIDACION PARA PROCESO DE CARGA INICIAL EN ZMDTPOS. *
//* REALIZO     : ANDRES GARCIA DE JESUS.                              *
//* FECHA       : 15 DE SEPTIEMBRE DE 2016.                            *
//*====================================================================*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*====================================================================*
//*    MARCA      AUTOR    FECHA             DESCRIPCION               *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*====================================================================*
//*--------------------------------------------------------------------*
//* PASO    : ZMRVA090.                                                *
//* PROGRAMA: IKJEFT01/ZM4RVA19.                                       *
//* OBJETIVO : GENERA ARCHIVO VACIO PARA CARGA ZMDTPOS                 *
//*--------------------------------------------------------------------*
//ZMRVA090 EXEC PGM=IKJEFT01
//*
//E1DQ0001  DD DSN=MXC&AMB..ZM.FIX.RENTA.VARIABLE.EMISORAS,
//             DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA090),DISP=SHR
//*
// IF ZMRVA090.RC EQ 00 THEN
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO    : ZMRVA080.                                                *
//* PROGRAMA: IKJEFT01/ZM4RVA00.                                       *
//* OBJETIVO: PROCESO DE CARGA INICIAL DE RENTA VARIABLE A LA TABLA    *
//*           ZMDTPOS.                                                 *
//*--------------------------------------------------------------------*
//ZMRVA080 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMRVA1E1 DD DSN=MXC&AMB..ZM.FIX.RENTA.VARIABLE.EMISORAS,
//            DISP=SHR
//*
//ZMRVA1S1 DD DSN=MXC&AMB..ZM.FIX.MZMRVA00.RENTA.VARIABLE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=332,BLKSIZE=0,RECFM=FB)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA080),DISP=SHR
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDRVA0                        *
//*--------------------------------------------------------------------*
