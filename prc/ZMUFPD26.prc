//ZMUFPD26 PROC                                                         00010002
//*********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD26                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  ACTUALIZA EL ESTADO GENERAL DEL CONTRATO EN LA   *00090002
//*                   TABLA  ZMDT804 EN EL PROCESO MENSUAL             *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :                                                   *00120002
//*                                                                    *00130002
//* DESPUES DE     :                                                   *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTTEK                             JUL/2017     *00160002
//*                                                                    *00170002
//*********************************************************************00240002
//*
//*********************************************************************00240002
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MARCA    AUTOR   FECHA             DESCRIPCION                     *
//* ------- ------- ------- -------------------------------------------*
//*
//**********************************************************************
//* PROGRAMA: ZM4DUB80
//* OBJETIVO: ACTUALIZA ESTADO GENERAL DEL CONTRATO EN ZMDT804
//**********************************************************************
//ZMUF2601 EXEC PGM=IKJEFT1A
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZMUF2601),DISP=SHR
//
