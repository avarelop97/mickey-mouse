//FDD4800 PROC                                                          00010007
//**********************************************************************00020001
//*                                                                     00030001
//*  BBB  BBB  VV VV   A      BBB    A   NN  N  CCC OOOO M   M EEEE RRR 00040001
//*  B BB B BB VV VV  AAA     B BB  AAA  NN  N CC   O  O MM MM EE   R  R00050001
//*  BBBB BBBB VV VV AA AA == BBBB AA AA N N N CC   O  O M M M EEEE RRRR00060001
//*  B BB B BB  VVV  AAAAA    B BB AAAAA N  NN CC   O  O M   M EE   R R 00070001
//*  BBB  BBB    V   AA AA    BBB  AA AA N  NN  CCC OOOO M   M EEEE R  R00080001
//*                                                                     00090001
//**********************************************************************00100001
//*                                                                    *00110001
//* SISTEMA        :  PREVENCION DE LAVADO DE DINERO                   *00120001
//*                                                                    *00130001
//* PROCESO        :  PFDFDD48 (GENERACION DE ARCHIVO DE PLD)          *00140009
//*                                                                    *00150001
//* OBJETIVO       :  GENERAR ARCHIVO PARA SHCP DE                     *00160001
//*                   OPERACIONES INUSUALES EN CASA DE BOLSA           *00170001
//*                                                                    *00180001
//* CORRE          :                                                   *00190002
//* DESPUES DE     :  PFDFDD47                                         *00201014
//*                                                                    *00210001
//* REALIZO        :  ALVAREZ-MELGAR NOE                               *00220002
//* FECHA          :  20-SEPTIEMBRE 2002                               *00230014
//*                                                                    *00240001
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTARA DIARIO           *00250004
//**********************************************************************00270003
//*                     V I B V 4 0 D                                   00280001
//*          PROGRAMA QUE GENERA ARCHIVO P/SHCP                         00290001
//*****************************************************************     00300001
//FDD4802  EXEC PGM=IKJEFT01,COND=(4,LT)                                00310012
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//T601705  DD  DUMMY                                                    00340012
//*                                                                     00341012
//VIBV40D1 DD DSN=SIVA.PLD.FIX.VIBV40A,                                 00350013
//            DISP=(NEW,CATLG,DELETE),                                  00360000
//            SPACE=(CYL,(50,25),RLSE),                                 00370012
//            DCB=(LRECL=1313,BLKSIZE=0,RECFM=FB),                      00380011
//            UNIT=3390                                                 00390012
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00400011
//SYSDBOUT DD SYSOUT=*                                                  00410011
//SYSABOUT DD SYSOUT=*                                                  00420011
//SYSUDUMP DD DUMMY                                                     00430000
//SYSPRINT DD SYSOUT=*                                                  00440011
//SYSOUT   DD SYSOUT=*                                                  00450011
//SYSTSIN  DD DSN=SIVA.CARDS(FDD4801),DISP=SHR                          00460010
//**********************************************************************00470001
