//ZMJLPEAB PROC                                                         00001202
//********************************************************************* 00001302
//*                     C A S A   D E   B O L S A                     * 00001400
//*                     =========================                     * 00001500
//*                    << MERCADO DE CAPITALES >>                     * 00001600
//*                                                                   * 00001700
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00001800
//*                                                                   * 00001900
//*   JCL              :  CBJLNEAC                                    * 00002002
//*                                                                   * 00002100
//*   CADENA           :  CBJLNEAC                                    * 00002202
//*                                                                   * 00002300
//*   OBJETIVO         :  CARGA INICIAL DE LA TABLA ZMDT735           * 00002402
//*                                                                   * 00002600
//*   CORRE DESPUES DE :  NINGUNO                                     * 00002702
//*                                                                   * 00002800
//*   CORRE ANTES   DE :  NINGUNO                                     * 00002900
//*                                                                   * 00003000
//*   PERIODICIDAD     :  POR UNICA VEZ A PETICION DEL USUARIO        * 00003102
//*                                                                   * 00003200
//*   ELABORADO POR    :  EVERIS                                      * 00003301
//*                                                                   * 00003400
//*   FECHA            :  ABRIL 2008                                  * 00003502
//*                                                                   * 00003600
//********************************************************************* 00007301
//*  PASO: 01      CARGA  INCIAL DE LA TABLA ZMDT735                  * 00007402
//*                                                                   * 00007501
//********************************************************************* 00007601
//PJDABP01 EXEC PGM=IKJEFT01                                            00007702
//*                                                                     00007901
//SYSTSPRT DD SYSOUT=*                                                  00008101
//SYSPRINT DD SYSOUT=*                                                  00008201
//SYSOUT   DD SYSOUT=*                                                  00008301
//SYSDBOUT DD SYSOUT=*                                                  00008401
//SYSABOUT DD SYSOUT=*                                                  00008501
//SYSUDUMP DD SYSOUT=*                                                  00008601
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLABT01),DISP=SHR                   00008702
