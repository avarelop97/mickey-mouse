//ZMSIPD03 PROC                                                         00010001
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                <<   PROCESO   ESTADISTICO   >>                     *00050001
//*                                                                    *00060000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00070000
//*                                                                    *00080000
//* PROCESO        :  CBSIND03   PARALELO AL PTEPED03                  *00090002
//*                   OPERATIVIDAD                                     *00100001
//*                                                                    *00110000
//* OBJETIVO       :  OBTENER LA CAPTACION NETA POR CONTRATO           *00120001
//*                   PARALELO AL PROGRAMA ORIGINAL PARA VALIDAR       *00130001
//*                   LA INFORMACION                                   *00140001
//* CORRE                                                              *00150001
//* ANTES DE       :                                                   *00160001
//*                                                                    *00170001
//* DESPUES DE     :  PTEPED02 (INGRESOS)                              *00180001
//*                                                                    *00190001
//* REALIZO        :  DAVID GUTIERREZ CASILLAS   (GETRONICS)           *00200001
//*                                                                    *00210001
//* FECHA          :  SEPTIEMBRE 1, 2003                               *00220002
//*                                                                    *00230001
//* OBSERVACION    :  ESTE PROCEDIMIENTO ES PROVISIONAL, SOLO PARA     *00240001
//*                   VALIDACION DE INFORMACION GENERADA POR EXTRAC-   *00250001
//*                   TORES NUEVOS                                     *00260001
//*                                                                    *00270001
//**********************************************************************00280001
//*                       ¢¢¢  ZM4DS016  !!!                           *00290001
//*                                                                    *00300000
//* PASO  01 : PSI03P01                                                *00310001
//*                                                                    *00320000
//* OBJETIVO : EXTRAE LA CAPTACION NETA POR CONTRATO                   *00330001
//*            - EXTRACTOR -                                           *00340001
//*                                                                    *00350000
//**********************************************************************00360000
//PSI03P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00370001
//*                                                                     00380001
//PI601765  DD DUMMY                                                    00390001
//*                                                                     00400001
//ZMSI16S1 DD  DSN=MXCP.ZME.VM01.CONTRATO.DIARIO.NVO,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(500,250),RLSE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=105,RECFM=FB),
//             UNIT=FJVTP
//*                                                                     00460001
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00470001
//SYSPRINT DD SYSOUT=*                                                  00480001
//SYSOUT   DD SYSOUT=*                                                  00490001
//SYSDBOUT DD SYSOUT=*                                                  00500001
//SYSABOUT DD DUMMY                                                     00510001
//SYSUDUMP DD DUMMY                                                     00520001
//*                                                                     00530001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSI03T01),DISP=SHR                   00540001
