//ZMPLPCRB PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : N/A.                                                *
//* PERIODICIDAD :                                                     *
//* OBJETIVO     : REALIZAR CARGA INICIAL PORVENIR ZMDT108-ZMDT111     *
//* REALIZO      : FABRICA DE SOFTWARE.                                *
//* FECHA        : ENERO 2019.                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPCCRB0                                                 *00240002
//* UTIL/PGM: IKJEFT01                                                 *00240002
//* OBJETIVO: BAJA Y DESCARGA PARA CARGA INICIAL.                      *00240002
//*--------------------------------------------------------------------*
//ZMPCCRB0 EXEC PGM=IKJEFT01
//*
//S1108SIV DD DSN=MXCP.ZM.FIX.DESCASIV.BPRIM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=534,BLKSIZE=0,DSORG=PS)
//*
//S1108CUS DD DSN=MXCP.ZM.FIX.DESCACUS.BPRIM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=122,BLKSIZE=0,DSORG=PS)
//*
//S1108MOV DD DSN=MXCP.ZM.FIX.DESCAMOV.BPRIM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=534,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMPCCRB0),DISP=SHR
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPCCRB1                                                 *00240002
//* UTIL/PGM: IKJEFT01                                                 *00240002
//* OBJETIVO: CARGA INICIAL PORVENIR ZM4CARPV                          *00240002
//*--------------------------------------------------------------------*
//ZMPCCRB1 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//CARGPVR  DD DSN=MXCP.ZM.FIX.CARGINI.PORVENIR,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.ERRORES.PORVENIR,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=246,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMPCCRB1),DISP=SHR
//*
