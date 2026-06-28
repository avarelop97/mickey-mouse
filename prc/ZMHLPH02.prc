//ZMHLPH02 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - PLAN DE CRECIMIENTO SIC (PLUS).                *
//* PROCESO      : ZMHLPH02.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : CANCELACIONES EN AUTOMATICO DE MC,CONTRATOS         *
//*                BROKERS PROMOTOR 216.                               *
//* REALIZO      : OUF INETUM.                                         *
//* FECHA        : MARZO 2022.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO    : PHLPHP01                                                 *
//* PROGRAMA: IEFBR14                                                  *
//* OBJETIVO: CATALOGA ARCHIVO DE CANCELACIONES SI NO EXISTE           *
//*--------------------------------------------------------------------*
//PHLPHP01 EXEC PGM=IEFBR14
//PASAL01  DD DSN=MXCP.ZM.FIX.SAI.CPAVTAC,
//            DISP=(MOD,CATLG,DELETE),
//            SPACE=(CYL,(100,050),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=89,RECFM=FB,BLKSIZE=0)
//*
//*--------------------------------------------------------------------*
//* PASO       : PHLPHP00                                              *
//* UTILERIA   : IKJEFT01/ZM4EHA82                                     *
//* OBJETIVO   : IMPUTA OPERACIONES DE CANCELACIONES EN AUTOMATICO     *
//*              CONTRATOS BROKERS PROMOTOR 216.                       *
//*--------------------------------------------------------------------*
//PHLPHP00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHA82E1 DD DSN=MXCP.ZM.FIX.SAI.CPAVTAC,
//            DISP=SHR
//*
//ZMHA82S1 DD DSN=MXCP.ZM.FIX.ARBINT.CPAVTAC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=163,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHLPHP03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN PROCESO ZMHLPH02                           *
//*--------------------------------------------------------------------*
