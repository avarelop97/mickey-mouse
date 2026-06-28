//FDE2500 PROC                                                          00000100
//********************************************************************* 00000200
//*                                                                   * 00000300
//* SISTEMA        :  SOCIEDADES DE INVERSION                         * 00000400
//*                                                                   * 00000500
//* PROCESO        :  PFDFDE25                                        * 00000600
//*                                                                   * 00000700
//* OBJETIVO       :  GENERACION DE ARCHIVOS PARA CARGA MASIVA  DE    * 00000800
//*                   ESTADOS DE CUENTA SOC. DE INV.                  * 00000900
//*                                                                   * 00001000
//* REALIZO        :  JOSE JAIME FLORES ESTRADA                       * 00001100
//*                                                                   * 00001200
//* FECHA          :  MARZO   DE 1999                            OSCT * 00001300
//********************************************************************* 00001400
//********************************************************************* 00001500
//*    ORDENA ARCHIVO SIVA.SIN.FIX.MCPOSCL                            * 00001600
//********************************************************************* 00001700
//FDE2507  EXEC PGM=SYNCSORT,COND=(4,LT)                                00001800
//SORTIN   DD DSN=SIVA.SIN.FIX.MCPOSCL,DISP=SHR                         00001900
//SORTOUT  DD DSN=SIVA.SIN.FIX.MCPOSCL.TEMP1,                           00002000
//         DISP=(NEW,CATLG,DELETE),                                     00002100
//         SPACE=(TRK,(100,50),RLSE),                                   00002200
//         DCB=(LRECL=059,BLKSIZE=0,RECFM=FB),                          00002300
//         UNIT=SYSDA                                                   00002400
//SYSOUT   DD SYSOUT=*                                                  00002500
//SYSPRINT DD SYSOUT=*                                                  00002600
//SYSIN    DD DSN=SIVA.CARDS(FDE2507),DISP=SHR                          00002700
//*                                                                     00002800
//********************************************************************* 00002900
//*  GENERA EDVALCA CON EL MES ACTUAL Y EL MES ANTERIOR                 00003000
//********************************************************************* 00003100
//FDE2506  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),         00003200
//         TIME=100                                                     00003300
//POSIC    DD DSN=SIVA.SIN.FIX.MCPOSCL.TEMP1,DISP=SHR                   00003400
//VOB306A1 DD DSN=SIVA.SIN.FIX.NUEVO.ARCHIVO,                           00003500
//         DISP=(,CATLG,DELETE),                                        00003600
//         SPACE=(TRK,(200,40),RLSE),                                   00003700
//         DCB=(LRECL=59,BLKSIZE=590,RECFM=FB),                         00003800
//         UNIT=SYSDA                                                   00003900
//VOB306R1 DD SYSOUT=X                                                  00004000
//VOB306R2 DD SYSOUT=X                                                  00004100
//VOB306R3 DD SYSOUT=X                                                  00004200
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00004300
//SYSDBOUT DD SYSOUT=X                                                  00004400
//SYSABOUT DD DUMMY                                                     00004500
//SYSUDUMP DD DUMMY                                                     00004600
//SYSPRINT DD SYSOUT=X                                                  00004700
//SYSOUT   DD SYSOUT=X                                                  00004800
//SYSTSIN  DD DSN=SIVA.CARDS(FDE2506),DISP=SHR                          00004900
//********************************************************************* 00005000
//*  GRABA  LOS REG. DE TOT. POR. TIPO DE MERCADO DE LA CARTERA         00005100
//********************************************************************* 00005200
//FDE2505  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),         00005300
//         TIME=100                                                     00005400
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00005500
//SYSDBOUT DD SYSOUT=X                                                  00005600
//SYSABOUT DD DUMMY                                                     00005700
//SYSUDUMP DD DUMMY                                                     00005800
//SYSPRINT DD SYSOUT=X                                                  00005900
//SYSOUT   DD SYSOUT=X                                                  00006000
//SYSTSIN  DD DSN=SIVA.CARDS(FDE2505),DISP=SHR                          00006100
//*                                                                     00006200
//********************************************************************* 00006300
//*    ORDENA ARCHIVO SIVA.SIN.FIX.MCEDOS                             * 00006400
//********************************************************************* 00006500
//FDE2504  EXEC PGM=SYNCSORT,COND=(4,LT)                                00006600
//SORTIN   DD DSN=SIVA.SIN.FIX.MCEDOS,DISP=SHR                          00006700
//SORTOUT  DD DSN=SIVA.SIN.FIX.MCEDOS.TEMP1,                            00006800
//         DISP=(NEW,CATLG,DELETE),                                     00006900
//         SPACE=(TRK,(100,50),RLSE),                                   00007000
//         DCB=(LRECL=092,BLKSIZE=0,RECFM=FB),                          00007100
//         UNIT=SYSDA                                                   00007200
//SYSOUT   DD SYSOUT=*                                                  00007300
//SYSPRINT DD SYSOUT=*                                                  00007400
//SYSIN    DD DSN=SIVA.CARDS(FDE2504),DISP=SHR                          00007500
//*                                                                     00007600
//********************************************************************* 00007700
//*  GENERA EDMOVED PARA ESTADOS DE CUENTA                              00007800
//********************************************************************* 00007900
//FDE2503  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),         00008000
//         TIME=100                                                     00008100
//MCEDOS   DD DSN=SIVA.SIN.FIX.MCEDOS.TEMP1,DISP=SHR                    00008200
//VOB308A1 DD DSN=SIVA.SIN.FIX.ARCHEDOS,                                00008300
//         DISP=(,CATLG,DELETE),                                        00008400
//         SPACE=(TRK,(200,40),RLSE),                                   00008500
//         DCB=(LRECL=92,BLKSIZE=920,RECFM=FB),                         00008600
//         UNIT=SYSDA                                                   00008700
//VOB308R1 DD SYSOUT=X                                                  00008800
//VOB308R2 DD SYSOUT=X                                                  00008900
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                          00009000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00009100
//SYSDBOUT DD SYSOUT=X                                                  00009200
//SYSABOUT DD DUMMY                                                     00009300
//SYSUDUMP DD DUMMY                                                     00009400
//SYSPRINT DD SYSOUT=X                                                  00009500
//SYSOUT   DD SYSOUT=X                                                  00009600
//SYSTSIN  DD DSN=SIVA.CARDS(FDE2503),DISP=SHR                          00009700
//*                                                                     00009800
//********************************************************************* 00009900
//*    ORDENA ARCHIVO SIVA.SIN.FIX.MCSALTIT                           * 00010000
//********************************************************************* 00010100
//FDE2502  EXEC PGM=SYNCSORT,COND=(4,LT)                                00010200
//SORTIN   DD DSN=SIVA.SIN.FIX.MCSALTIT,DISP=SHR                        00010300
//SORTOUT  DD DSN=SIVA.SIN.FIX.MCSALTIT.TEMP1,                          00010400
//         DISP=(NEW,CATLG,DELETE),                                     00010500
//         SPACE=(TRK,(100,50),RLSE),                                   00010600
//         DCB=(LRECL=215,BLKSIZE=0,RECFM=FB),                          00010700
//         UNIT=SYSDA                                                   00010800
//SYSOUT   DD SYSOUT=*                                                  00010900
//SYSPRINT DD SYSOUT=*                                                  00011000
//SYSIN    DD DSN=SIVA.CARDS(FDE2502),DISP=SHR                          00011100
//*                                                                     00011200
//********************************************************************* 00011300
//*  GENERA EDIMPUE CON IMPTOS. ACUM. TOMADOS DE MCSALTIT               00011400
//********************************************************************* 00011500
//FDE2501  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),         00011600
//        TIME=100                                                      00011700
//SALTI    DD DSN=SIVA.SIN.FIX.MCSALTIT.TEMP1,DISP=SHR                  00011800
//VOB309A1 DD DSN=SIVA.SIN.FIX.ARCHSALT,                                00011900
//         DISP=(,CATLG,DELETE),                                        00012000
//         SPACE=(TRK,(200,40),RLSE),                                   00012100
//         DCB=(LRECL=215,BLKSIZE=2150,RECFM=FB),                       00012200
//         UNIT=SYSDA                                                   00012300
//VOB309R1 DD SYSOUT=X                                                  00012400
//VOB309R2 DD SYSOUT=X                                                  00012500
//VOB309R3 DD SYSOUT=X                                                  00012600
//VOB309R4 DD SYSOUT=X                                                  00012700
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00012800
//SYSDBOUT DD SYSOUT=X                                                  00012900
//SYSABOUT DD DUMMY                                                     00013000
//SYSUDUMP DD DUMMY                                                     00013100
//SYSPRINT DD SYSOUT=X                                                  00013200
//SYSOUT   DD SYSOUT=X                                                  00013300
//SYSTSIN  DD DSN=SIVA.CARDS(FDE2501),DISP=SHR                          00013400
//*                                                                     00013500
