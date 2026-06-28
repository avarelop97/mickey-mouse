//FDE3400 PROC                                                          01600000
//*************************************************************         08220000
//*                                                                     08221000
//*    SPUFI QUE INICIALIZA LA TABLA PARAM P09 UTILIZADA EN             08230000
//*    EL PROCESO DE TRANSMISON DE INFORMACION A LA BMV.                08240000
//*                                                                     08250000
//*************************************************************         08260000
//FDE3401  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00009000
//SYSTSPRT DD  SYSOUT=*                                                 00010000
//SYSPRINT DD  SYSOUT=*                                                 00020000
//SYSUDUMP DD DUMMY                                                     00030000
//SYSTSIN  DD  DSN=SIVA.CARDS(IDD0522),DISP=SHR                         00040000
//SYSIN    DD  DSN=SIVA.CARDS(FDE3401),DISP=SHR                         00100000
