//FDE2100 PROC                                                          00000100
//**********************************************************************00000200
//*                                                                    *00000300
//* SISTEMA        :  SOCIEDADES DE INVERSION                           00000400
//*                                                                    *00000500
//* PROCESO        :  PFDFDE21                                         *00000600
//*                                                                    *00000700
//* OBJETIVO       :  GENERACION DE ARCHIVOS PARA CARGA INICIAL DE     *00000800
//*                   BANCO A SIVA                                     *00000900
//*                                                                    *00001000
//* REALIZO        :  MARTHA GUIDO                                      00001100
//*                                                                     00001200
//* FECHA          :  AGOSTO DE 1998                                   *00001300
//**********************************************************************00001400
//********************************************************************* 00001500
//*    ORDENA ARCHIVO IDCAMM.DATA.CTEALTB                             * 00001600
//*                                                                   * 00001700
//********************************************************************* 00001800
//FDE2103  EXEC PGM=SYNCSORT,COND=(4,LT)                                00001900
//SORTIN   DD DSN=SIVA.SIN.FIX.CTEALTB1,DISP=SHR                        00002000
//SORTOUT  DD DSN=SIVA.SIN.FIX.CTEALTB1.TEMP1,                          00002100
//         DISP=(NEW,CATLG,DELETE),                                     00002200
//         SPACE=(TRK,(100,50),RLSE),                                   00002300
//         DCB=(LRECL=347,BLKSIZE=0,RECFM=FB),                          00002400
//         UNIT=SYSDA                                                   00002500
//SYSOUT   DD SYSOUT=*                                                  00002600
//SYSPRINT DD SYSOUT=*                                                  00002700
//SYSIN    DD DSN=SIVA.CARDS(FDE2103),DISP=SHR                          00002800
//*                                                                     00002900
//********************************************************************* 00003000
//*    ORDENA ARCHIVO IDCAMM.DATA.NUEVO.MCMAEST                       * 00003100
//*                                                                   * 00003200
//********************************************************************* 00003300
//FDE2102  EXEC PGM=SYNCSORT,COND=(4,LT)                                00003400
//SORTIN   DD DSN=SIVA.SIN.FIX.NUEVO.MCMAEST,DISP=SHR                   00003500
//SORTOUT  DD DSN=SIVA.SIN.FIX.NUEVO.MCMAEST.TEMP1,                     00003600
//         DISP=(NEW,CATLG,DELETE),                                     00003700
//         SPACE=(TRK,(200,50),RLSE),                                   00003800
//         DCB=(LRECL=793,BLKSIZE=0,RECFM=FB),                          00003900
//         UNIT=SYSDA                                                   00004000
//SYSOUT   DD SYSOUT=*                                                  00004100
//SYSPRINT DD SYSOUT=*                                                  00004200
//SYSIN    DD DSN=SIVA.CARDS(FDE2102),DISP=SHR                          00004300
//*                                                                     00004400
//********************************************************************* 00004500
//*       CARGA INICIAL DE CONTRATOS DE BANCO A CASA (VOB292U)          00004600
//********************************************************************* 00004700
//FDE2101  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         00004800
//             TIME=100                                                 00004900
//*                                                                     00005000
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0                                   00005100
//*                                                                     00005200
//VOB292R1 DD  SYSOUT=X                                                 00005300
//*                                                                     00005400
//SYSPRINT DD  SYSOUT=X                                                 00005500
//SYSOUT   DD  SYSOUT=X                                                 00005600
//CTEALTB  DD DSN=SIVA.SIN.FIX.CTEALTB1.TEMP1,DISP=SHR                  00005700
//SOCINV   DD DSN=SIVA.SIN.FIX.NUEVO.MCMAEST.TEMP1,DISP=SHR             00005800
//SYSDBOUT DD  SYSOUT=X                                                 00005900
//SYSABOUT DD  DUMMY                                                    00006000
//SYSUDUMP DD  DUMMY                                                    00006100
//SYSTSIN DD DSN=SIVA.CARDS(FDE2101),DISP=SHR                           00006200
