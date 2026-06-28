//ZMJLPPA5 PROC                                                         00000100
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MERCADO DE CAPITALES >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00000700
//*                                                                   * 00000800
//*   JCL              :  SIVAXAP5                                    * 00000900
//*                                                                   * 00001000
//*   CADENA           :  SE EJECUTA ATRAVEZ DEL PROCESO DE AS400     * 00001100
//*                                                                   * 00001200
//*   OBJETIVO         :  RECOLECCION DE INFORMACION DE ACCIONES      * 00001300
//*                       PROPIAS DE DIFERENTES MODULOS               * 00001400
//*                                                                   * 00001500
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION ZA1 P/USUARIO     * 00001600
//*                                                                   * 00001700
//*   CORRE ANTES   DE :  CBJLPZA5                                    * 00001800
//*                                                                   * 00001900
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00002000
//*                                                                   * 00002100
//*   ELABORADO POR    :  JOSE LUIS GUTIERREZ ORTEGA                  * 00002200
//*                                                                   * 00002300
//*   FECHA            :  NOVIEMBRE/ 2006                             * 00002400
//*                                                                   * 00002500
//*-------------------------------------------------------------------- 00002600
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                        00002700
//* FECHA          :  NOVIEMBRE 2008. CONVERSION DE SUBMITIDORES        00002800
//*-------------------------------------------------------------------* 00002900
//****************************************************************      00003000
//*                SE ADICIONA CONDICION                         *      00004000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00005000
//****************************************************************      00006000
//PJLA5P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXAP5_IN_OK WDATE',        00007000
//         COND=(4,LT)                                                  00008000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00009000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00010000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00020000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00030000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00040000
//PRTDBG   DD   SYSOUT=Z                                                00050000
//SYSPRINT DD   DUMMY                                                   00060000
//SYSUDUMP DD   DUMMY                                                   00070000
//DAPRINT  DD   SYSOUT=Z                                                00080000
//DACNDIN  DD   DDNAME=SYSIN                                            00090000
//*                                                                     00100000
