//ZMJLPEAD PROC                                                         00000100
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << FONDOS DE INVERSION  >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00000700
//*                                                                   * 00000800
//*   JCL              :  CBJLNEAD                                    * 00000900
//*                                                                   * 00001000
//*   CADENA           :  CBJLNEAD                                    * 00001100
//*                                                                   * 00001200
//*   OBJETIVO         :  GENERACION DE ARCHIVO VACIO PARA TRANSMISION* 00001300
//*                       DE PRECIOS DE COVAF                         * 00001400
//*                                                                   * 00001500
//*   CORRE DESPUES DE :  NINGUNO                                     * 00001600
//*                                                                   * 00001700
//*   CORRE ANTES   DE :  CBJLNEB7                                    * 00001800
//*                                                                   * 00001900
//*   PERIODICIDAD     :  CADA MEDIA HORA DESPUES DE LAS 17:00 HRS    * 00002000
//*                       Y HASTA LAS 23:00 HRS                       * 00002100
//*                                                                   * 00002200
//*   ELABORADO POR    :  EVERIS                                      * 00002300
//*                                                                   * 00002400
//*   FECHA            :  MAYO / 2008                                 * 00002500
//*                                                                   * 00002600
//********************************************************************* 00002700
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *00002800
//* ----------- --------- ------- ------------------------------------ *00002900
//* FS-1.1.0-01  XM010ZL  03DIC18 SE MODIFICA LA LONGITUD DEL ARCHIVO  *00003000
//*                               MXCP.ZM.FIX.FIS.FACPRE.D&FECHA DE    *00003100
//*                               148 A 180                            *00003200
//**********************************************************************00003300
//*                                                                    *00003400
//*  PASO: 01      GEENERACION DE ARCHIVO VACIO                       * 00003500
//********************************************************************* 00003600
//*PJDADP01 EXEC PGM=IEBGENER                                           00003700
//PJDADP01 EXEC PGM=ICEGENER                                            00003800
//*                                                                     00003900
//*SYSUT1   DD DUMMY,LRECL=300,BLKSIZE=0,RECFM=FB                       00004000
//SYSUT1   DD DUMMY,LRECL=300,RECFM=FB                                  00004100
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIN.PRECIO.D&FECHA,                       00004200
//            DISP=(NEW,CATLG,DELETE),                                  00004300
//            SPACE=(CYL,(6,3),RLSE),UNIT=3390,                         00004400
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)               00004500
//SYSIN    DD DUMMY                                                     00004600
//SYSTSPRT DD SYSOUT=*                                                  00004700
//SYSPRINT DD SYSOUT=*                                                  00004800
//********************************************************************* 00004900
//*  PASO: 0A      GEENERACION DE ARCHIVO VACIO                       * 00005000
//********************************************************************* 00005100
//PJDADP0A EXEC PGM=ICEGENER,COND=(4,LT)                                00005200
//*                                                                     00005300
//*                                                                     00005400
//SYSUT1   DD DUMMY,LRECL=181,RECFM=FB                                  00005500
//SYSUT2   DD DSN=MXCP.ZM.FIX.FIS.FACPRE.D&FECHA,                       00005600
//            DISP=(NEW,CATLG,DELETE),                                  00005700
//            SPACE=(CYL,(6,3),RLSE),UNIT=3390,                         00005800
//            DCB=(RECFM=FB,LRECL=181,BLKSIZE=0,DSORG=PS)               00005900
//SYSIN    DD DUMMY                                                     00006000
//SYSTSPRT DD SYSOUT=*                                                  00006100
//SYSPRINT DD SYSOUT=*                                                  00006200
