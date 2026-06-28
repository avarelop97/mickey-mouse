//SID1500  PROC                                                         00000100
//**********************************************************************00000200
//* SISTEMA      :  SOCIEDADES DE INVERSION                            *00000300
//* PROCESO      :  SE EJECUTA POR CONTROLM DESPUES DE CIERRES.        *00000400
//*                                                                    *00000500
//* OBJETIVO     :  GENERAR MOVIMIENTOS PARA AFECTACION A CONTABILIDAD *00000600
//*                   ALTAMIRA POR CUENTAS DE ORDEN DE SOC. DE INV.    *00000700
//*                                                                    *00000800
//* REALIZO      :  OSCAR URBANO FERNANDEZ   (ASATECK).                *00000900
//**********************************************************************00001000
//**** *****************************************************************00001100
//*                                                                    *00001200
//* PASO SID1503.    SORT ARCHIVO DE SALDOS INICIALES DE ALTAMIRA      *00001300
//**********************************************************************00001400
//SID1503  EXEC PGM=SYNCSORT                                            00001500
//SORTIN    DD DSN=SIVA.SIN.FIX.HAQL2647,DISP=SHR                       00001600
//SORTOUT   DD DSN=SIVA.SIN.FIX.HAQL2647.FSORT,                         00001700
//             DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                      00001800
//             AVGREC=K,SPACE=(CYL,(100,25),RLSE),                      00001900
//             DCB=(RECFM=FB,LRECL=100)                                 00002000
//SYSIN    DD DSN=SIVA.CARDS(SID1503),DISP=SHR                          00002100
//SYSOUT   DD SYSOUT=*                                                  00002200
//*                                                                     00002300
//**********************************************************************00002400
//*                                                                    *00002500
//* PASO SID1502.     BORRADO DE ARCHIVO A GENERAR.                    *00002600
//**********************************************************************00002700
//SID1502  EXEC PGM=IDCAMS,COND=(4,LT)                                  00002800
//SYSPRINT DD SYSOUT=*                                                  00002900
//SYSOUT   DD SYSOUT=*                                                  00003000
//SYSIN  DD DSN=SIVA.CARDS(SID1502),DISP=SHR                            00003100
//*                                                                     00003200
//**********************************************************************00003300
//* PASO   SID1501  EJECUTA PROGRAMA VIB339D                           *00003400
//*        GENERA INTERFAZ CONTABLE DE CUENTAS DE ORDEN SOC. DE INV.   *00003500
//**********************************************************************00003600
//SID1501  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00003700
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00003800
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00003900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00004000
//SYSPRINT DD SYSOUT=*                                                  00004100
//VIB339E1 DD DSN=SIVA.SIN.FIX.HAQL2647.FSORT,DISP=SHR                  00004200
//VIB339S1 DD DSN=SIVA.SIN.FIX.VIB339D,DISP=(NEW,CATLG,DELETE),         00004300
//            UNIT=SYSDA,SPACE=(TRK,(1,1),RLSE),                        00004400
//            DCB=(RECFM=FB,LRECL=306,BLKSIZE=3060,DSORG=PS)            00004500
//*VIB339R1 DD SYSOUT=(O,,TQ22)                                         00004600
//VIB339R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                     00004700
//SYSOUT   DD SYSOUT=*                                                  00004800
//SYSDBOUT DD SYSOUT=*                                                  00004900
//SYSABOUT DD DUMMY                                                     00005000
//SYSUDUMP DD DUMMY                                                     00005100
//SYSTSIN  DD DSN=SIVA.CARDS(SID1501),DISP=SHR                          00005200
//*                                                                     00005300
