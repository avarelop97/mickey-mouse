//ZMCONFRE PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FAMILY OFFICE.                                 *
//* PROCESO      : ZMCONFRE.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTE DE CONFIRMACION DE REPORTOS                 *
//* FECHA        : AGOSTO 2017.                                        *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZCORET95.                                             *
//* UTILERIA   : IKJEFT01/ZM4CO295                                     *
//* OBJETIVO   : OBTIENE OPERACIONES DE REPORTOS                       *
//*--------------------------------------------------------------------*
//ZCORET95 EXEC PGM=IKJEFT01
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CON.ZM4CO210.CTAS.SORT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.CON.ZM4CO295.NAC.REP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=556,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.CON.ZM4CO295.INT.REP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=577,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCORET95),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZCORET85.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : UNION DE ARCHIVO DE OPERACIONES NACIONAL Y REPORTOS   *
//*--------------------------------------------------------------------*
//ZCORET85 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.ZM4CO295.NAC.REP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.NACOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.NAC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=556,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCORET85),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZCORET75.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : UNION DE ARCHIVO DE OPERACIONES NACIONAL Y REPORTOS   *
//*--------------------------------------------------------------------*
//ZCORET75 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.ZM4CO295.INT.REP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.INTOR,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.ZM3CO210.INT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=577,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZCORET75),DISP=SHR
//*
