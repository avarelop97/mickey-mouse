//FDD3600  PROC
//**********************************************************************00024000
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *00026000
//*                                                                    *
//* PROCESO        :  PFDFDD36   (DISPARADOR)                          *00028000
//*                   FDD3600    PROCEDIMIENTO                         *00029000
//*                                                                    *
//* OBJETIVO       :  GRABA CARTERA DE SOCIEDADES DE INVERSION EN      *00029200
//*                   LA TABLA CARTSOC.                                *00029200
//*                                                                    *
//* NOTA           :  ESTE PROCESO UTILIZA CARTERA                     *
//*                                                                    *00029200
//* REALIZO        :  MONICA RUBIO. DICIEMBRE DE 1997                  *00030100
//**********************************************************************00030300
//*
//**********************************************************************05130000
//*                        VOB198D                                     *05150000
//*   GRABA CARTERA DE FONDOS RENTA VARIABLE EN CARTSOC                *05150000
//*                                                  ***SOC. INVERS.   *05170000
//**********************************************************************05170000
//FDD3603  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         05190000
//             TIME=100                                                 05200000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   05240000
//SYSPRINT DD  SYSOUT=*                                                 05250000
//SYSOUT   DD  SYSOUT=*                                                 05260000
//SYSDBOUT DD  SYSOUT=*                                                 05270000
//SYSABOUT DD  DUMMY                                                    05280000
//SYSUDUMP DD  DUMMY                                                    05290000
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD3601),DISP=SHR                         05300000
//*
//**********************************************************************05130000
//*                        VOB205D                                     *05150000
//*   GRABA CARTERA DE FONDOS DE RENTA FIJA EN CARTSOC                 *05150000
//*                                                  ***SOC. INVERS.   *05170000
//**********************************************************************05170000
//FDD3602  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         05190000
//             TIME=100                                                 05200000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   05240000
//SYSPRINT DD  SYSOUT=*                                                 05250000
//SYSOUT   DD  SYSOUT=*                                                 05260000
//SYSDBOUT DD  SYSOUT=*                                                 05270000
//SYSABOUT DD  DUMMY                                                    05280000
//SYSUDUMP DD  DUMMY                                                    05290000
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD3602),DISP=SHR                         05300000
//*                                                                     00290006
//**********************************************************************05130000
//*                        VOB205D                                     *05150000
//* GENERA UN RESPALDO DE ARCHIVO DIARIO                               *05150000
//*                                                                    *05170000
//**********************************************************************05170000
//FDD3601  EXEC  PGM=ICEGENER,REGION=4M
//SYSPRINT DD  SYSOUT=*
//SYSUT1   DD DSN=SIVA.SIN.FIX.TENDIA.FIN,DISP=SHR                      00006000
//SYSUT2   DD DSN=SIVA.SIN.FIX.TENDIA.FINRES,                           00140027
//            DISP=(MOD,CATLG,CATLG),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=367,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,50),RLSE)
//SYSIN    DD DUMMY
//*
