//SID0900  PROC
//**********************************************************************00024000
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *00026000
//*                                                                    *
//* PROCESO        :  PINSID09   (DISPARADOR)                          *00028000
//*                   SID0900    PROCEDIMIENTO                         *00029000
//*                                                                    *
//* OBJETIVO       :  CORRER VOB198D DESPUES QUE CORRA PINSID02 A      *00029200
//*                   SOLICITUD DE MAURICIO RUBIO.                     *00029200
//*                                                                    *
//* NOTA           :  ESTE PROCESO UTILIZA CARTERA                     *
//*                                                                    *00029200
//* REALIZO        :  VICTOR GARCIA FLORES. JUNIO DEL 1995.            *00030100
//**********************************************************************00030300
//*
//**********************************************************************05130000
//*                        VOB198D                                     *05150000
//*   GENERACION DEL HISTORICO DE TENENCIA DE SOCIEDADES DE INVERSION  *05150000
//**********************************************************************05170000
//SID0213  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         05190000
//             TIME=100                                                 05200000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   05240000
//SYSPRINT DD  SYSOUT=*                                                 05250000
//SYSOUT   DD  SYSOUT=*                                                 05260000
//SYSDBOUT DD  SYSOUT=*                                                 05270000
//SYSABOUT DD  DUMMY                                                    05280000
//SYSUDUMP DD  DUMMY                                                    05290000
//SYSTSIN  DD  DSN=SIVA.CARDS(SID0901),DISP=SHR                         05300000
//*
//**********************************************************************05130000
//*                        VOB205D                                     *05150000
//*   GRABA CARTERA DE FONDOS RENTA FIJA                               *05150000
//**********************************************************************05170000
//SID0200  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         05190000
//             TIME=100                                                 05200000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   05240000
//SYSPRINT DD  SYSOUT=*                                                 05250000
//SYSOUT   DD  SYSOUT=*                                                 05260000
//SYSDBOUT DD  SYSOUT=*                                                 05270000
//SYSABOUT DD  DUMMY                                                    05280000
//SYSUDUMP DD  DUMMY                                                    05290000
//SYSTSIN  DD  DSN=SIVA.CARDS(SID0902),DISP=SHR                         05300000
//*                                                                     00290006
