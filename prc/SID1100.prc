//SID1100  PROC
//**********************************************************************00024000
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *00026000
//*                                                                    *
//* PROCESO        :  PINSID11   (DISPARADOR)                          *00028000
//*                   SID1100    PROCEDIMIENTO                         *00029000
//*                                                                    *
//* OBJETIVO       :  CORRER VOB199D DESPUES QUE CORRA PINSID02 A      *00029200
//*                   SOLICITUD DE MAURICIO RUBIO.                     *00029200
//*                                                                    *
//* NOTA           :  ESTE PROCESO UTILIZA CARTERA                     *
//*                                                                    *00029200
//* REALIZO        :  VICTOR GARCIA FLORES. JULIO DEL 1995.            *00030100
//**********************************************************************00030300
//*
//**********************************************************************05130000
//*                        VOB199D                                     *05150000
//*   GENERACION DEL HISTORICO DE TENENCIA DE SOCIEDADES DE INVERSION  *05150000
//*                       *** OJO ***                                  *05150000
//*   SE INHIBE HASTA NUEVO AVISO ATTE. RHO/MARICIO R. 20/09/95.       *05150000
//*   Y APARTE SE MODIFICO EN CONTROLM PARA QUE NO SE CARGARA.         *05150000
//**********************************************************************05170000
//*SID1101  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,     05190000
//*             TIME=100                                                05200000
//*STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00120000
//*         DD DSN=SYS1.COB2CLIB,DISP=SHR                               00130000
//*         DD DSN=SYS1.COB2COMP,DISP=SHR                               00140000
//*SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                               05240000
//*SYSPRINT DD  SYSOUT=*                                                05250000
//*SYSOUT   DD  SYSOUT=*                                                05260000
//*VOB199A1 DD  DSN=SIVA.CUOTADR,DISP=SHR                               05260000
//*SYSDBOUT DD  SYSOUT=*                                                05270000
//*SYSABOUT DD  DUMMY                                                   05280000
//*SYSUDUMP DD  DUMMY                                                   05290000
//*SYSTSIN  DD  DSN=SIVA.CARDS(SID1101),DISP=SHR                        05300000
//*                                                                     00290006
