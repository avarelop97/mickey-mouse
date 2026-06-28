//ZMLLPC22 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<< MERCADO DE DINERO >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPC22-SIVAXBUC                                   *
//*                                                                    *
//*   OBJETIVO  : VACIAR CONTENIDO DE ARCHIVOS DEPOSITADOS POR CALYPSO *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*   PASO    : PLL10P0A                                               *
//*   OBJETIVO: DEAJAR EN CLARO ARCHIVO ENVIADO POR CALYPSO            *
//*             MXCP.ZM.FIX.OPERA.VAL.NORMAL  UNA VEZ PROCESADO        *
//*--------------------------------------------------------------------*
//PLL10P0A EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=190)
//SYSUT2   DD DSN=MXCP.ZM.FIX.OPERA.VAL.NORMAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PLL10P0B                                               *
//*   OBJETIVO: DEAJAR EN CLARO ARCHIVO ENVIADO POR CALYPSO            *
//*             MXCP.ZM.FIX.OPERA.VAL.HOY      UNA VEZ PROCESADO       *
//*--------------------------------------------------------------------*
//PLL10P0B EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=190)
//SYSUT2   DD DSN=MXCP.ZM.FIX.OPERA.VAL.HOY,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=190,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*   PASO    : PLL10P0C                                               *
//*   OBJETIVO: DEAJAR EN CLARO ARCHIVO ENVIADO POR CALYPSO            *
//*             MXCP.ZM.FIX.SALDOS.VAL.HOY  UNA VEZ PROCESADO          *
//*--------------------------------------------------------------------*
//PLL10P0C EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=142)
//SYSUT2   DD DSN=MXCP.ZM.FIX.SALDOS.VAL.HOY,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(DSORG=PS,LRECL=142,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                      F I N   Z M L L P C 2 2                       *
//**********************************************************************
