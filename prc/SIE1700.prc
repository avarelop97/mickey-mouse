//SIE1700 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SOCIEDADES DE INVERSION
//*                                                                    *
//* PROCESO        :  SIE1700                                          *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE ARCHIVO CON INFORMACION DE LOS     *
//*                   CONTRATOS DE SOCIEDADES DE INVERSION             *
//*                                                                    *
//* REALIZO        :  AC / AGA
//*
//* FECHA          :  JUNIO  DE 1999                                   *
//**********************************************************************
//*********************************************************************
//*                         VOB349O                                   *
//*  GENERACION DE ARCHIVO PARA SER UTILIZADO POR PERSONAS(ALTAMIRA)  *
//*********************************************************************
//SIE17P01 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M
//S1VOBSEM DD  DSN=SIVA.SIN.FIX.SEMANAL.F&FECHA,
//             DISP=(NEW,CATLG,CATLG),
//             UNIT=3390,
//             SPACE=(CYL,(150,50),RLSE),
//             DCB=(LRECL=44,RECFM=FB)
//*
//SYSPRINT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSTSIN  DD  DSN=SIVA.CARDS(SIE1701),DISP=SHR
//*
