//FDE2600 PROC                                                          00000100
//**********************************************************************00000200
//*                                                                    *00000300
//* SISTEMA        :  SOCIEDADES DE INVERSION                           00000400
//*                                                                    *00000500
//* PROCESO        :  PFDFDE26                                         *00000600
//*                                                                    *00000700
//* OBJETIVO       :  GENERACION DE ARCHIVOS PARA CARGA MASIVA  DE     *00000800
//*                   ESTADOS DE CUENTA SOC. DE INV.                   *00000900
//*                                                                    *00001000
//* REALIZO        :  MARTHA E. GUIDO MENDOZA                          *00001100
//*                   J. JAIME FLORES ESTRADA                          *00001200
//*                                                                    *00001300
//* FECHA          :  OCTUBRE DE 1998                                  *00001400
//**********************************************************************00001500
//********************************************************************* 00001600
//*          COPIA ARCHIVO DE EDO                                *      00001700
//*                                                              *      00001800
//****************************************************************      00001900
//FDE2604 EXEC  PGM=IDCAMS                                              00002000
//INPUT   DD DSN=SIVA.SIN.FIX.MCEDOS,DISP=SHR                           00002100
//OUTPUT  DD DSN=SIVA.SIN.FIX.MCEDOSTE,                                 00002200
//        DISP=(,CATLG,DELETE),                                         00002300
//        SPACE=(TRK,(100,50),RLSE),                                    00002400
//        DCB=(LRECL=092,BLKSIZE=0,RECFM=FB),                           00002500
//        UNIT=SYSDA                                                    00002600
//SYSPRINT DD SYSOUT=*                                                  00002700
//SYSIN DD DSN=SIVA.CARDS(FDE2604),DISP=SHR                             00002800
//********************************************************************* 00002900
//*    ORDENA ARCHIVO DE EDOS DE NOVIEMBRE                            * 00003000
//*                                                                   * 00003100
//********************************************************************* 00003200
//FDE2603  EXEC PGM=SYNCSORT,COND=(4,LT)                                00003300
//SORTIN   DD DSN=SIVA.SIN.FIX.MCEDOSTE,DISP=SHR                        00003400
//SORTOUT  DD DSN=SIVA.SIN.FIX.MCEDOSOR,                                00003500
//         DISP=(,CATLG,DELETE),                                        00003600
//         SPACE=(CYL,(100,50),RLSE),                                   00003700
//         DCB=(LRECL=092,BLKSIZE=0,RECFM=FB),                          00003800
//         UNIT=SYSDA                                                   00003900
//SYSOUT   DD SYSOUT=*                                                  00004000
//SYSPRINT DD SYSOUT=*                                                  00004100
//SYSIN    DD DSN=SIVA.CARDS(FDE2603),DISP=SHR                          00004200
//********************************************************************* 00004300
//*    ORDENA ARCHIVO DE EDOS AGO SEP OCT                             * 00004400
//*                                                                   * 00004500
//********************************************************************* 00004600
//FDE2602  EXEC PGM=SYNCSORT,COND=(4,LT)                                00004700
//SORTIN   DD DSN=SIVA.SIN.FIX.RESCARGA,DISP=SHR                        00004800
//SORTOUT  DD DSN=SIVA.SIN.FIX.CARGAOR,                                 00004900
//         DISP=(,CATLG,DELETE),                                        00005000
//         SPACE=(CYL,(100,50),RLSE),                                   00005100
//         DCB=(LRECL=092,BLKSIZE=0,RECFM=FB),                          00005200
//         UNIT=SYSDA                                                   00005300
//SYSOUT   DD SYSOUT=*                                                  00005400
//SYSPRINT DD SYSOUT=*                                                  00005500
//SYSIN    DD DSN=SIVA.CARDS(FDE2602),DISP=SHR                          00005600
//********************************************************************* 00005700
//*    ORDENA ARCHIVO DE EDOS AGO SEP OCT Y NOV                       * 00005800
//*                                                                   * 00005900
//********************************************************************* 00006000
//FDE2601  EXEC PGM=SYNCSORT,COND=(4,LT)                                00006100
//SORTIN   DD DSN=SIVA.SIN.FIX.CARGAOR,DISP=SHR                         00006200
//         DD DSN=SIVA.SIN.FIX.MCEDOSOR,DISP=SHR                        00006300
//SORTOUT  DD DSN=SIVA.SIN.FIX.MCEDOS.CARIN,                            00006400
//         DISP=(,CATLG,DELETE),                                        00006500
//         SPACE=(CYL,(100,50),RLSE),                                   00006600
//         DCB=(LRECL=092,BLKSIZE=0,RECFM=FB),                          00006700
//         UNIT=SYSDA                                                   00006800
//SYSOUT   DD SYSOUT=*                                                  00006900
//SYSPRINT DD SYSOUT=*                                                  00007000
//SYSIN    DD DSN=SIVA.CARDS(FDE2601),DISP=SHR                          00007100
//*                                                                     00007200
//*                                                                     00007300
