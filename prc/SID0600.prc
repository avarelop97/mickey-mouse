//SID0600 PROC                                                          00010000
//*                                                                     00020000
//**********************************************************************00024000
//*                                                                    *00025000
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *00026000
//*                                                                    *00027000
//* PROCESO        :  PDASID06   (DISPARADOR)                          *00028000
//*                   SID0600    PROCEDIMIENTO                         *00029000
//*                                                                    *00029100
//* OBJETIVO       :  CORRER EL DESBLOQUEO AUTOMATICO DE FUNCIONES.    *00029200
//*                   CONTROL DE SOCIEDADES DE INVERSION.              *00029200
//*                                                                    *00029500
//* REALIZO        :  RUBEN HERNANDEZ ORTIZ.                           *00030100
//* FECHA          :  ENERO 1993.                                      *00030200
//*                                                                    *00025000
//**********************************************************************00030300
//**********************************************************************00040000
//*                     * VOB153D *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : BLOQUEO AUTOMATICO DE FUNCIONES.                        *00070000
//*                                                                    *00060001
//* TABLAS QUE ACTUALIZA : AGPOCON.                                    *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//SID0602  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M                      00110000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00150000
//SYSABEND DD DUMMY                                                     02440000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSOUT   DD SYSOUT=*                                                  00210002
//SYSCOUNT DD SYSOUT=*                                                  02480000
//SYSDBOUT DD SYSOUT=*                                                  00220002
//SYSABOUT DD DUMMY                                                     00230000
//SYSUDUMP DD DUMMY                                                     00240000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0602),DISP=SHR                          00250003
//*                                                                     00010000
//**********************************************************************00040000
//*                     * VOB154D *                                    *05140000
//*                                                                    *00060001
//* OBJETIVO : CANCELACIONES DE AUTORIZACIONES TEMPORALES DE SIMATRI.  *00070000
//*                                                                    *00060001
//* TABLAS QUE ACTUALIZA : SIMATRI.                                    *05140000
//*                                                                    *00060001
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00080000
//SID0601  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M                      00110000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00142000
//SYSPRINT DD SYSOUT=*                                                  00143000
//SYSOUT   DD SYSOUT=*                                                  00145002
//SYSCOUNT DD SYSOUT=*                                                  00145002
//SYSDBOUT DD SYSOUT=*                                                  00145102
//SYSABOUT DD DUMMY                                                     00146000
//SYSUDUMP DD DUMMY                                                     00147000
//SYSTSIN  DD DSN=SIVA.CARDS(SID0601),DISP=SHR                          00148003
//*                                                                     00030000
//**********************************************************************00030000
//* PEND            FIN DE PROCEDIMIENTO SID0600                       *00030000
//**********************************************************************00030000
