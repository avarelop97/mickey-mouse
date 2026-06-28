//ZMJLPZA5 PROC                                                         00000100
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MERCADO DE CAPITALES >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00000700
//*                                                                   * 00000800
//*   JCL              :  CBJLPZA5                                    * 00000900
//*                                                                   * 00001000
//*   CADENA           :  SE EJECUTA ATRAVEZ DEL PROCESO DE AS400     * 00001100
//*                                                                   * 00001200
//*   OBJETIVO         :  RECOLECCION DE INFORMACION DE ACCIONES      * 00001300
//*                       PROPIAS DE DIFERENTES MODULOS               * 00001400
//*                                                                   * 00001500
//*   CORRE DESPUES DE :  SIVAXAP5  DESDE LA OPCION ZA1 P/USUARIO     * 00001600
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
//*-------------------------------------------------------------------- 00004600
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                        00004700
//* FECHA          :  NOVIEMBRE 2008. CONVERSION DE SUBMITIDORES        00004800
//*-------------------------------------------------------------------* 00004900
//**********************************************************************00005000
//*  PASO: 01     REALIZA LA EXTRACCION DE LAS OPERACIONES DE          *00005100
//*               SOCIEDADES DE INVERSION                              *00005200
//*  PJLA4P02                          SIVA MUV             ZM4DJA04   *00005300
//**********************************************************************00005400
//PJLA5P02 EXEC PGM=IKJEFT01                                            00005500
//*                                                                     00005600
//ZMJA04E1 DD DSN=MXCP.ZM.FIX.SIN.BPIGO,DISP=SHR                        00005700
//*                                                                     00005800
//SYSTSPRT DD SYSOUT=*                                                  00006500
//SYSPRINT DD SYSOUT=*                                                  00006600
//SYSOUT   DD SYSOUT=*                                                  00006700
//SYSDBOUT DD SYSOUT=*                                                  00006800
//SYSABOUT DD SYSOUT=*                                                  00006900
//SYSUDUMP DD SYSOUT=*                                                  00007000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA5T02),DISP=SHR                   00007100
//*                                                                     00007200
