//FDE4100 PROC                                                          00000100
//********************************************************************* 00000200
//*    ORDENA ARCHIVO DE ENTRADA 1                                      00000300
//********************************************************************* 00000400
//FDE4102  EXEC PGM=SYNCSORT                                            00000500
//SORTIN   DD DSN=SIVA.SIN.FIX.F&FEC..FONDO1,DISP=SHR                   00000600
//SORTOUT  DD DSN=SIVA.SIN.FIX.PROMEX.POSIC.SORT,                       00000700
//         DISP=(NEW,CATLG,DELETE),                                     00000800
//         SPACE=(TRK,(010,10),RLSE),                                   00000900
//         DCB=(LRECL=069,BLKSIZE=0,RECFM=FB),                          00001000
//         UNIT=SYSDA                                                   00001100
//SYSOUT   DD SYSOUT=*                                                  00001200
//SYSPRINT DD SYSOUT=*                                                  00001300
//SYSIN    DD DSN=SIVA.CARDS(FDE4102),DISP=SHR                          00001400
//*                                                                     00001500
//*************************** VOBS27O ********************************* 00001600
//*            CARGA DE POSICION DE CLIENTES PROMEX                   * 00001700
//********************************************************************* 00001800
//FDE4001  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         00001900
//         TIME=100                                                     00002000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00002100
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00002200
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR                               00002300
//ENTRADA1 DD DSN=SIVA.SIN.FIX.PROMEX.POSIC.SORT,DISP=SHR               00002400
//VOBS27R1 DD DSN=SIVA.SIN.FIX.VOBS27R1,                                00002500
//         DISP=(NEW,CATLG,DELETE),                                     00002600
//         SPACE=(TRK,(050,010),RLSE),                                  00002700
//         DCB=(LRECL=133,BLKSIZE=0133,RECFM=FB),                       00002800
//         UNIT=SYSDA                                                   00002900
//VOBS27R2 DD DSN=SIVA.SIN.FIX.VOBS27R2,                                00003000
//         DISP=(NEW,CATLG,DELETE),                                     00003100
//         SPACE=(TRK,(050,010),RLSE),                                  00003200
//         DCB=(LRECL=133,BLKSIZE=0133,RECFM=FB),                       00003300
//         UNIT=SYSDA                                                   00003400
//VOBS27R3 DD DSN=SIVA.SIN.FIX.VOBS27R3,                                00003500
//         DISP=(NEW,CATLG,DELETE),                                     00003600
//         SPACE=(TRK,(050,010),RLSE),                                  00003700
//         DCB=(LRECL=133,BLKSIZE=0133,RECFM=FB),                       00003800
//         UNIT=SYSDA                                                   00003900
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=1024                                 00004000
//SYSPRINT DD SYSOUT=X                                                  00004100
//SYSOUT   DD SYSOUT=X                                                  00004200
//SYSDBOUT DD SYSOUT=X                                                  00004300
//SYSABOUT DD DUMMY                                                     00004400
//SYSUDUMP DD DUMMY                                                     00004500
//SYSOUP   DD SYSOUT=*                                                  00004600
//SYSTSIN  DD DSN=SIVA.CARDS(FDE4101),DISP=SHR                          00004700
//*                                                                     00004800
//*************************** VIBS40O ********************************* 00004900
//*            CARGA DE POSICION DE CLIENTES PROMEX                   * 00005000
//********************************************************************* 00005100
//FDE400A  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         00005200
//         TIME=100                                                     00005300
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00005400
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00005500
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR                               00005600
//VIBS40R1 DD DSN=SIVA.SIN.FIX.VIBS40R1,                                00005700
//         DISP=(NEW,CATLG,DELETE),                                     00005800
//         SPACE=(TRK,(050,010),RLSE),                                  00005900
//         DCB=(LRECL=133,BLKSIZE=0133,RECFM=FB),                       00006000
//         UNIT=SYSDA                                                   00006100
//VIBS40R2 DD DSN=SIVA.SIN.FIX.VIBS40R2,                                00006200
//         DISP=(NEW,CATLG,DELETE),                                     00006300
//         SPACE=(TRK,(050,010),RLSE),                                  00006400
//         DCB=(LRECL=133,BLKSIZE=0133,RECFM=FB),                       00006500
//         UNIT=SYSDA                                                   00006600
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=1024                                 00006700
//SYSPRINT DD SYSOUT=X                                                  00006800
//SYSOUT   DD SYSOUT=X                                                  00006900
//SYSDBOUT DD SYSOUT=X                                                  00007000
//SYSABOUT DD DUMMY                                                     00007100
//SYSUDUMP DD DUMMY                                                     00007200
//SYSOUP   DD SYSOUT=*                                                  00007300
//SYSTSIN  DD DSN=SIVA.CARDS(FDE410A),DISP=SHR                          00007400
//*                                                                     00007500
