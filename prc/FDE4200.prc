//FDE4200 PROC                                                          00000100
//********************************************************************* 00000200
//*    ORDENA ARCHIVO DE ENTRADA 1                                      00000300
//*                                                                     00000400
//********************************************************************* 00000500
//FDE4203  EXEC PGM=SYNCSORT                                            00000600
//SORTIN   DD DSN=SIVA.SIN.FIX.F&FEC..FONDO2,DISP=SHR                   00000700
//SORTOUT  DD DSN=SIVA.SIN.FIX.PROMEX.ISR.SORT,                         00000800
//         DISP=(NEW,CATLG,DELETE),                                     00000900
//         SPACE=(TRK,(010,10),RLSE),                                   00001000
//         DCB=(LRECL=058,BLKSIZE=0,RECFM=FB),                          00001100
//         UNIT=SYSDA                                                   00001200
//SYSOUT   DD SYSOUT=*                                                  00001300
//SYSPRINT DD SYSOUT=*                                                  00001400
//SYSIN    DD DSN=SIVA.CARDS(FDE4203),DISP=SHR                          00001500
//*                                                                     00001600
//********************************************************************* 00001700
//*    ORDENA ARCHIVO DE ENTRADA 2                                    * 00001800
//*                                                                   * 00001900
//********************************************************************* 00002000
//FDE4202  EXEC PGM=SYNCSORT                                            00002100
//SORTIN   DD DSN=SIVA.SIN.FIX.F&FEC..FONDO1,DISP=SHR                   00002200
//SORTOUT  DD DSN=SIVA.SIN.FIX.PROMEX.POSIC.SORT.ISR,                   00002300
//         DISP=(NEW,CATLG,DELETE),                                     00002400
//         SPACE=(TRK,(010,10),RLSE),                                   00002500
//         DCB=(LRECL=069,BLKSIZE=0,RECFM=FB),                          00002600
//         UNIT=SYSDA                                                   00002700
//SYSOUT   DD SYSOUT=*                                                  00002800
//SYSPRINT DD SYSOUT=*                                                  00002900
//SYSIN    DD DSN=SIVA.CARDS(FDE4202),DISP=SHR                          00003000
//*                                                                     00003100
//*************************** VOBS31O ********************************* 00003200
//*            CARGA DE POSICION DE CLIENTES PROMEX                   * 00003300
//********************************************************************* 00003400
//FDE4201  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         00003500
//         TIME=100                                                     00003600
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00003700
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00003800
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR                               00003900
//ENTRADA1 DD DSN=SIVA.SIN.FIX.PROMEX.ISR.SORT,DISP=SHR                 00004000
//ENTRADA2 DD DSN=SIVA.SIN.FIX.PROMEX.POSIC.SORT.ISR,DISP=SHR           00004100
//*                                                                     00004200
//VOBS31R1 DD DSN=SIVA.SIN.FIX.VOBS31R1,                                00004300
//         DISP=(NEW,CATLG,DELETE),                                     00004400
//         SPACE=(TRK,(050,010),RLSE),                                  00004500
//         DCB=(LRECL=133,BLKSIZE=0133,RECFM=FB),                       00004600
//         UNIT=SYSDA                                                   00004700
//VOBS31R2 DD DSN=SIVA.SIN.FIX.VOBS31R2,                                00004800
//         DISP=(NEW,CATLG,DELETE),                                     00004900
//         SPACE=(TRK,(050,010),RLSE),                                  00005000
//         DCB=(LRECL=133,BLKSIZE=0133,RECFM=FB),                       00005100
//         UNIT=SYSDA                                                   00005200
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=1024                                 00005300
//SYSPRINT DD SYSOUT=X                                                  00005400
//SYSOUT   DD SYSOUT=X                                                  00005500
//SYSDBOUT DD SYSOUT=X                                                  00005600
//SYSABOUT DD DUMMY                                                     00005700
//SYSUDUMP DD DUMMY                                                     00005800
//SYSOUP   DD SYSOUT=*                                                  00005900
//SYSTSIN  DD DSN=SIVA.CARDS(FDE4201),DISP=SHR                          00006000
