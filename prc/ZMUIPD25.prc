//ZMUIPD25 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BANCA PATRIMONIAL Y PRIVADA MUV                *
//* PROCESO      : ZMUIPD25.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : PROCESAR ARC. CORREOS DE PROMOTORES MUV FACTSET     *
//* REALIZO      : AXITY                                               *
//* FECHA        : 29 DE NOVIEMBRE DE 2021.                            *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA QUE EL ARCHIVO A SUBIR AL HOST EXISTA           *
//*--------------------------------------------------------------------*
//ZMUIPD03 EXEC PGM=IDCAMS
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMUIPT01),DISP=SHR
//*
// IF ZMUIPD03.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO DE PE SI NO EXISTE EN PASO ANTERIOR.*
//*------------------------- ------------------------------------------*
//ZMUIPD02 EXEC PGM=IEFBR14
//*
//CREARCH1 DD DSN=MBVP.AJ.FIX.RRHHMUV.MAIL.PROMOT.MUV,
//            DISP=(MOD,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=205,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*
//**********************************************************************
//*                           --ZM4DHA25--                             *
//* OBJETIVO    : ACTUALIZA CORREOS ELECTRONICOS DE PROMOTORES         *
//**********************************************************************
//ZMUIPD01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MBVP.AJ.FIX.RRHHMUV.MAIL.PROMOT.MUV,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRRHH25),DISP=SHR
//*
//*------------------------------ -------------------------------------*
//*                    FIN DEL PROCESO ZMUIPD25                        *
//*--------------------------------------------------------------------*
