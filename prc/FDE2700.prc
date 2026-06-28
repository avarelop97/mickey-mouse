//FDE2700 PROC                                                          00000100
//**********************************************************************00000200
//*                                                                    *00000300
//* SISTEMA        :  SOCIEDADES DE INVERSION                           00000400
//*                                                                    *00000500
//* PROCESO        :  FDE2700                                          *00000600
//*                                                                    *00000700
//* OBJETIVO       :  CARGA DE DIRECCIONES EN SVCTOCB                  *00000800
//*                                                                    *00000900
//*                                                                    *00001000
//* REALIZO        :  IGNACIO ESQUIVEL                                  00001100
//*                                                                     00001200
//* FECHA          :  ABRIL DE 1999                                    *00001300
//**********************************************************************00001400
//********************************************************************* 00001500
//*    ORDENA ARCHIVO CTEALTB                                         * 00001600
//*                                                                   * 00001700
//********************************************************************* 00001800
//FDE2702  EXEC PGM=SYNCSORT,COND=(4,LT)                                00001900
//SORTIN   DD DSN=SIVA.SIN.FIX.CTEALTB1,DISP=SHR                        00002000
//SORTOUT  DD DSN=SIVA.SIN.FIX.CTEALTB1.TEMP1,                          00002100
//         DISP=(NEW,CATLG,DELETE),                                     00002200
//         SPACE=(TRK,(100,50),RLSE),                                   00002300
//         DCB=(LRECL=347,BLKSIZE=0,RECFM=FB),                          00002400
//         UNIT=SYSDA                                                   00002500
//SYSOUT   DD SYSOUT=*                                                  00002600
//SYSPRINT DD SYSOUT=*                                                  00002700
//SYSIN    DD DSN=SIVA.CARDS(FDE2702),DISP=SHR                          00002800
//*                                                                     00002900
//*                                                                     00003000
//********************************************************************* 00003100
//*       CARGA INICIAL DE CONTRATOS DE BANCO A CASA (VOB292U)          00003200
//********************************************************************* 00003300
//FDE2701  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         00003400
//             TIME=100                                                 00003500
//*                                                                     00003600
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0                                   00003700
//*                                                                     00003800
//*VOB292R1 DD  SYSOUT=X                                                00003900
//*                                                                     00004000
//SYSPRINT DD  SYSOUT=X                                                 00004100
//SYSOUT   DD  SYSOUT=X                                                 00004200
//CTEALTB  DD DSN=SIVA.SIN.FIX.CTEALTB1.TEMP1,DISP=SHR                  00004300
//SYSDBOUT DD  SYSOUT=X                                                 00004400
//SYSABOUT DD  DUMMY                                                    00004500
//SYSUDUMP DD  DUMMY                                                    00004600
//SYSTSIN DD DSN=SIVA.CARDS(FDE2701),DISP=SHR                           00004700
