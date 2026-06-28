//FDE3600 PROC                                                          01600000
//*************************************************************         08220000
//*                                                           *         08221000
//*  SPUFI QUE INSERTA LOS CONTRATOS DE MUESTRA DE SOCIEDADES *         08230000
//*  DE INVERSION PARA PROCESO PREVIO DE EDOCTAS.             *         08240000
//*                                                           *         08250000
//*************************************************************         08260000
//FDE3601  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00009000
//SYSTSPRT DD  SYSOUT=*                                                 00010000
//SYSPRINT DD  SYSOUT=*                                                 00020000
//SYSUDUMP DD DUMMY                                                     00030000
//SYSTSIN  DD  DSN=SIVA.CARDS(IDD0522),DISP=SHR                         00100000
//SYSIN    DD  DSN=SIVA.CARDS(FDE3601),DISP=SHR                         00100000
