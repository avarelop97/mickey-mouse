//FDE2200 PROC                                                          00000100
//********************************************************************* 00000200
//*                                                                   * 00000300
//* SISTEMA        :  SOCIEDADES DE INVERSION                         * 00000400
//*                                                                   * 00000500
//* PROCESO        :  PFDFDE22                                        * 00000600
//*                                                                   * 00000700
//* OBJETIVO       :  GENERACION DE ARCHIVOS PARA CARGA INICIAL DE    * 00000800
//*                   BANCO A SIVA                                    * 00000900
//*                                                                   * 00001000
//* REALIZO        :  MARTHA GUIDO                                    * 00001100
//*                                                                   * 00001200
//* FECHA          :  AGOSTO DE 1998                             OSCT * 00001300
//********************************************************************* 00001400
//********************************************************************* 00001500
//*            ORDENA ARCHIVO DE POSICIONES POR CONTRATO              * 00001600
//*                                                                   * 00001700
//********************************************************************* 00001800
//FDE2203  EXEC PGM=SYNCSORT,COND=(4,LT)                                00001900
//SORTIN   DD DSN=SIVA.SIN.FIX.MCPOSCL1,DISP=SHR                        00002000
//SORTOUT  DD DSN=SIVA.SIN.FIX.MCPOSCL1.TEMP1,                          00002100
//         DISP=(NEW,CATLG,DELETE),                                     00002200
//         SPACE=(TRK,(150,50),RLSE),                                   00002300
//         DCB=(LRECL=059,BLKSIZE=0,RECFM=FB),                          00002400
//         UNIT=SYSDA                                                   00002500
//SYSOUT   DD SYSOUT=*                                                  00002600
//SYSPRINT DD SYSOUT=*                                                  00002700
//SYSIN    DD DSN=SIVA.CARDS(FDE2203),DISP=SHR                          00002800
//*                                                                     00002900
//********************************************************************* 00003000
//*    CARGA INICIAL DE POSICION DEL CLIENTE POR EMISORA  (VOB293E)     00003100
//********************************************************************* 00003200
//FDE2202  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         00003300
//             TIME=100                                                 00003400
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0                                   00003500
//VOB293R1 DD  SYSOUT=X                                                 00003600
//VOB293R2 DD  SYSOUT=X                                                 00003700
//VOB293R3 DD  SYSOUT=X                                                 00003800
//MCSALTIT DD  DSN=SIVA.SIN.FIX.MCPOSCL1.TEMP1,DISP=SHR                 00003900
//FOLCTRL  DD  DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                         00004000
//SYSPRINT DD  SYSOUT=X                                                 00004100
//SYSOUT   DD  SYSOUT=X                                                 00004200
//SYSDBOUT DD  SYSOUT=X                                                 00004300
//SYSABOUT DD  DUMMY                                                    00004400
//SYSUDUMP DD  DUMMY                                                    00004500
//SYSTSIN  DD DSN=SIVA.CARDS(FDE2202),DISP=SHR                          00004600
//***************************************************************       00004700
//*                                                                     00004800
//***************************************************************       00004900
//FDE2201 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,       00005000
//        PARM='/DEBUG',TIME=100                                        00005100
//*                                                                     00005200
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00005300
//SYSPRINT DD SYSOUT=X                                                  00005400
//SYSOUT   DD SYSOUT=*                                                  00005500
//*                                                                     00005600
//SYSDBOUT DD SYSOUT=X                                                  00005700
//SYSABOUT DD DUMMY                                                     00005800
//SYSUDUMP DD DUMMY                                                     00005900
//VOB314R1 DD SYSOUT=X                                                  00006000
//SYSTSIN  DD DSN=SIVA.CARDS(FDE2201),DISP=SHR                          00006100
//*                                                                     00006200
