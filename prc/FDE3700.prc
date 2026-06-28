//FDE3700 PROC                                                          00000100
//**********************************************************************00000200
//*                        * ECB439M *                                  00000300
//* OBJETIVO : GENERA ARCHIVO DE SOCIEDADES DE INVERSION PARA AGREGAR   00000400
//*            EL CODIGO POSTAL AL ARCHIVO DE ALTAMIRA DE PERSONAS      00000500
//**********************************************************************00000600
//FDE3703  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00000700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00000800
//SYSPRINT DD SYSOUT=*                                                  00000900
//ECB008A1 DD DSN=SIVA.SIN.FIX.CTASNVAS.SOCINV,DISP=SHR                 00001000
//ECB008A2 DD DSN=SIVA.SIN.FIX.CTASNVAS.SOCINV.SORT,                    00001100
//            DISP=(NEW,CATLG,DELETE),                                  00001200
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=517,BLKSIZE=0),             00001300
//            UNIT=3390,                                                00001400
//            SPACE=(CYL,(50,50),RLSE)                                  00001500
//SYSOUT   DD SYSOUT=*                                                  00001600
//SYSDBOUT DD SYSOUT=*                                                  00001700
//SYSABOUT DD DUMMY                                                     00001800
//SYSUDUMP DD DUMMY                                                     00001900
//SYSTSIN  DD DSN=SIVA.CARDS(FDE3703),DISP=SHR                          00002000
//*                                                                     00002100
//**********************************************************************00002200
//* OBJETIVO : SORT DEL ARCHIVO DE PERSONAS POR CODIGO POSTAL           00002300
//**********************************************************************00002400
//FDE3702  EXEC PGM=SYNCSORT,COND=(4,LT)                                00002500
//SORTIN   DD DSN=SIVA.SIN.FIX.CTASNVAS.SOCINV.SORT,DISP=SHR            00002600
//SORTOUT  DD DSN=SIVA.SIN.FIX.CTASNVAS.SOCINV.SORT2,                   00002700
//            DISP=(NEW,CATLG,DELETE),                                  00002800
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=517,BLKSIZE=0),             00002900
//            UNIT=3390,                                                00003000
//            SPACE=(CYL,(50,50),RLSE)                                  00003100
//SYSTSPRT DD SYSOUT=*                                                  00003200
//SYSPRINT DD SYSOUT=*                                                  00003300
//SYSOUT   DD SYSOUT=*                                                  00003400
//SYSDBOUT DD SYSOUT=*                                                  00003500
//SYSABOUT DD DUMMY                                                     00003600
//SYSUDUMP DD DUMMY                                                     00003700
//SYSIN    DD DSN=SIVA.CARDS(FDE3702),DISP=SHR                          00003800
//*                                                                     00003900
//**********************************************************************00004000
//*                    * ECB440M *                                      00004100
//* OBJETIVO : GENERA ESTADOS DE CUENTA DE SOCIEDADES DE INVERSION      00004200
//*            PARA PROCESO PREVIO                                      00004300
//**********************************************************************00004400
//FDE3701  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=1024K,COND=(4,LT)       00004500
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=2420                                 00004600
//SYSPRINT DD SYSOUT=*                                                  00004700
//OUTPUT2 OUTPUT FORMDEF=EDOBAN,PAGEDEF=EDOBAN,TRC=YES                  00004800
//ECB008A1 DD DSN=SIVA.SIN.FIX.CTASNVAS.SOCINV.SORT2,DISP=SHR           00004900
//ECB030R3 DD SYSOUT=(V,,FMMP),OUTPUT=*.OUTPUT2                         00005000
//ECB030R4 DD SYSOUT=(W,,MMMP),OUTPUT=*.OUTPUT2                         00005100
//SYSOUT   DD SYSOUT=*                                                  00005200
//SYSDBOUT DD SYSOUT=*                                                  00005300
//SYSABOUT DD DUMMY                                                     00005400
//SYSUDUMP DD DUMMY                                                     00005500
//SYSTSIN  DD DSN=SIVA.CARDS(FDE3701),DISP=SHR                          00005600
//*                                                                     00005700
