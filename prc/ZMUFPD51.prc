//ZMUFPD51 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD51                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  CARGAR LA TABLA ZMDT801                          *00090002
//*                                                                    *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  GESFOR MEXICO (GCC-MVD) 25/02/10                 *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************00240002
//**********************************************************************
//* PROGRAMA: ZM4DUA14
//* OBJETIVO: INSERTA INFORMACION DE FONDOS EN LA TABLA ZMDT801
//*
//**********************************************************************
//ZMUF51P1 EXEC PGM=IKJEFT1A                                            00780700
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T25),DISP=SHR
//*                                                                    *00780300
