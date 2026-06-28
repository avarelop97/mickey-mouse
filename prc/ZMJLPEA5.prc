//ZMJLPEA5 PROC                                                         00000101
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MERCADO DE CAPITALES >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00000700
//*                                                                   * 00000800
//*   JCL              :  SIVAXAP5                                    * 00000901
//*                                                                   * 00001000
//*   CADENA           :  SE EJECUTA ATRAVEZ DEL PROCESO DE AS400     * 00001101
//*                                                                   * 00001200
//*   OBJETIVO         :  RECOLECCION DE INFORMACION DE ACCIONES      * 00001300
//*                       PROPIAS DE DIFERENTES MODULOS               * 00001400
//*                                                                   * 00001500
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION ZA1 P/USUARIO     * 00001600
//*                                                                   * 00001700
//*   CORRE ANTES   DE :  NINGUNO                                     * 00001800
//*                                                                   * 00001900
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00002000
//*                                                                   * 00002100
//*   ELABORADO POR    :  JOSE LUIS GUTIERREZ ORTEGA                  * 00002200
//*                                                                   * 00002300
//*   FECHA            :  NOVIEMBRE/ 2006                             * 00002400
//*                                                                   * 00002500
//**********************************************************************00004500
//*  PASO: 01     REALIZA LA EXTRACCION DE LAS OPERACIONES DE          *00004600
//*               SOCIEDADES DE INVERSION                              *00004700
//*  PJLA4P02                          SIVA MUV             ZM4DJA04   *00004801
//**********************************************************************00004900
//PJLA5P02 EXEC PGM=IKJEFT01                                            00005002
//*                                                                     00005100
//ZMJA04E1 DD DSN=MXCP.ZM.FIX.SIN.BPIGO,DISP=SHR                        00005301
//*                                                                     00005401
//SYSTSPRT DD SYSOUT=*                                                  00006500
//SYSPRINT DD SYSOUT=*                                                  00006600
//SYSOUT   DD SYSOUT=*                                                  00006700
//SYSDBOUT DD SYSOUT=*                                                  00006800
//SYSABOUT DD SYSOUT=*                                                  00006900
//SYSUDUMP DD SYSOUT=*                                                  00007000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA5T02),DISP=SHR                   00007101
//*                                                                     00007200
