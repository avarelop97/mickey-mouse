//ZMHFPD50  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  C A P I T A L E S >>                       *
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHFPD50                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO T20 MUREX-SICOR                   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :  CBHFND33                                         *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*  PASO:  1     GENERA ARCHIVO T20 MUREX-SICOR                       *
//*  PHF50P01                ZM4DHV78                                  *
//**********************************************************************
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* ----------- -------- ------- ------------------------------------- *
//* FS-1.0.0-01 TECNOCOM 16MAY13 AGREGAR EL PASO PHF50P02 DONDE SE CREA*
//*                              EL ARCHIVO MANUAL, AGREGAR CONDICION  *
//*                              4 LT EN EL PASO PHF50P01 , CAMBIAR LA *
//*                              LONGITUD DEL ARCHIVO DEL PASO PHF50P01*
//*                              DE 145 A 161 POSICIONES               *
//*--------------------------------------------------------------------*
//*
//*FS-1.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO    : PHF50P02                                                 *
//* UTILERIA: IKJEFT01                                                 *
//* OBJETIVO: GENERAR ARCHIVO DE INFO. MANUAL                          *
//*--------------------------------------------------------------------*
//PHF50P02 EXEC PGM=IKJEFT01
//*
//ZMOH76A1 DD DSN=MXCP.ZM.FIX.ARCMURX.MANCIERR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,LRECL=225,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC64T03),DISP=SHR
//*FS-1.0.0-01-FIN
//*
//*FS-1.0.0-01-INI
//*PHF50P01 EXEC PGM=IKJEFT01
//PHF50P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV78A2 DD DSN=MXCP.ZM.FIX.MUREXT20,
//            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=145,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            DCB=(LRECL=161,BLKSIZE=0,RECFM=FB,DSORG=PS),
//*FS-1.0.0-01-FIN
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF50T01),DISP=SHR
//*
