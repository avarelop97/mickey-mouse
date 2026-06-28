//ZMPPGD08 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//*                PRESTAMO PATRIMONIAL GARANTIZADO                    *
//* PROYECTO     : ZM - BCPPGD08.                                      *
//* PROCESO      : ZMPPGD08.                                           *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : CREAR CASCARON ARCHIVO MUFONDES                     *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : NOVIEMBRE  2015.                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.0.0-17   INDRA   25ENE17 SE AGREGA PASO PARA CREAR CASCARON   *
//*                               DEL ARCHIVO NUEVO.                   *
//*--------------------------------------------------------------------*
//* PASO       : ZPP08T40.                                             *
//* UTILERIA   : PGM=IEFBR14                                           *
//* OBJETIVO   : CREAR CASCARON ARCHIVO MUFONDES                       *
//*--------------------------------------------------------------------*
//ZPP08T40 EXEC PGM=IEFBR14
//*
//ARCHIVO   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG29.CARGA39,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=279,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//*FS-1.0.0-17
//*--------------------------------------------------------------------*
//* PASO       : ZPP08T35.                                             *
//* UTILERIA   : PGM=IEFBR14                                           *
//* OBJETIVO   : CREAR CASCARON ARCHIVO CON DATOS DE DURACION          *
//*--------------------------------------------------------------------*
//ZPP08T35 EXEC PGM=IEFBR14,COND=(0,NE)
//*
//ARCHIVO   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG39.CARGA39,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*FS-1.0.0-17
//*
//**********************************************************************
//*-------------------------------------------------------------------
//* FIN PROCESO ZMPPGD08
//*-------------------------------------------------------------------
