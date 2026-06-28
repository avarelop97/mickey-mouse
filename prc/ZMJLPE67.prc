//ZMJLPE67 PROC                                                         00010011
//********************************************************************* 00020011
//*                     C A S A   D E   B O L S A                     * 00030011
//*                     =========================                     * 00040011
//*                    << MERCADO DE CAPITALES >>                     * 00050011
//*                                                                   * 00060011
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00070011
//*                                                                   * 00080011
//*   JCL              :  SIVAXCRI                                    * 00090011
//*                                                                   * 00100011
//*   CADENA           :  OPCION ZA3 -> JCL SIVAXAPM -> PRC ZMJLPE67  * 00110011
//*                                                                   * 00120011
//*   OBJETIVO         :  RECOLECCION DE INFORMACION DE ACCIONES      * 00130011
//*                       PROPIAS DE DIFERENTES MODULOS               * 00140011
//*                                                                   * 00150011
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION ZA1 P/USUARIO     * 00160011
//*                                                                   * 00170011
//*   CORRE ANTES   DE :  NINGUNO                                     * 00180011
//*                                                                   * 00190011
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00200011
//*                                                                   * 00210011
//*   ELABORADO POR    :  CDA                                         * 00220011
//*                                                                   * 00230011
//*   FECHA            :  FEBRERO / 2013                              * 00240011
//*                                                                   * 00250011
//**********************************************************************00250012
//*            L O G   D E   M O D I F I C A C I O N E S               *00250013
//**********************************************************************00250014
//*     MARCA     USUARIO       FECHA        DESCRIPCION               *00250015
//**********************************************************************00250016
//*   FS-1.0.0-01 CDAINFO     18FEB2013 REALIZA LA EXTRACCION DE LAS   *00250017
//*                                     OPERACIONES DE CONTRATOS POR   *00250018
//*                                     RANGO DE EFECTIVO              *00250019
//**********************************************************************00260011
//*  PASO: 01     REALIZA LA EXTRACCION DE LAS OPERACIONES DE          *00270011
//*               CONTRATOS POR RANGO DE EFECTIVO                      *00280011
//*  PJLX1P01                                               ZM4DJB34   *00290011
//**********************************************************************00300011
//*FS-1.0.0-01-INI                                                      00300012
//PJLP4P01 EXEC PGM=IKJEFT01                                            00310011
//*                                                                     00320011
//ZMJB34A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.ZD49.ZMJLPE66,DISP=SHR           00330011
//ZMJB34A2 DD DSN=MXCP.ZM.FIX.SIE.ECBP.ZD49.ZMJLPE67.RE,                00340011
//            DISP=(NEW,CATLG,DELETE),                                  00350011
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),               00360011
//            UNIT=3390,                                                00370011
//            SPACE=(CYL,(10,05),RLSE)                                  00380011
//*                                                                     00390011
//SYSTSPRT DD SYSOUT=*                                                  00400011
//SYSPRINT DD SYSOUT=*                                                  00410011
//SYSOUT   DD SYSOUT=*                                                  00420011
//SYSDBOUT DD SYSOUT=*                                                  00430011
//SYSABOUT DD SYSOUT=*                                                  00440011
//SYSUDUMP DD SYSOUT=*                                                  00450011
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCTPE67),DISP=SHR                   00460011
//*FS-1.0.0-01-FIN                                                      00470011
//**********************************************************************00480011
//*          F I N      Z M J L P E 6 7                                *00490011
//**********************************************************************00500011
