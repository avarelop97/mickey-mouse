//ZMLLPZ36 PROC                                                         00010000
//*                                                                     00020000
//********************************************************************* 00030000
//*                     C A S A   D E   B O L S A                     * 00040000
//*                     =========================                     * 00050000
//*                      << MERCADO DE DINERO >>                      * 00060000
//*                                                                   * 00070000
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (SIVA)          * 00080000
//*                                                                   * 00090000
//*   JCL              :  SIVAXOCC                                    * 00100000
//*                                                                   * 00110000
//*   CADENA           :  OPCION 705 -> JCL SIVAXOCC -> PRC ZMLLPZ36  * 00120000
//*                                                                   * 00130000
//*   OBJETIVO         :  CARGA DE OPERACIONES CASA CLIENTE DE        * 00140000
//*                       MERCADO DE DINERO.                          * 00150000
//*                                                                   * 00160000
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION 705 A PETICION    * 00170000
//*                       DEL USUARIO.                                * 00180000
//* ->ORIGEN  :                                                       * 00190000
//*                                                                   * 00200000
//*   ARCHIVO HOST     :  'SIVA.MDD.WKF.OPERMDD'                      * 00210000
//*                                                                   * 00220000
//* ->DESTINO :                                                       * 00230000
//*                                                                   * 00240000
//*   B. DATOS HOST    :  'PRODUSVP.ZMDT637'                          * 00250000
//*                                                                   * 00260000
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00270000
//*                                                                   * 00280000
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON                     * 00290000
//*                                                                   * 00300000
//*   FECHA            :  MAYO / 2005.                                * 00310000
//*                                                                   * 00320000
//********************************************************************* 00330000
//*  SECUENCIA 1:  EJECUTA PROGRAMA QUE CARGA LAS OPERACIONES CASA    * 00350000
//*                CLIENTE DE MERCADO DE DINERO.                      * 00360000
//*                                                                   * 00370000
//*  ENTRADA --->  'SIVA.MDD.WKF.OPERMDD' ("LEE ARCHIVO SIVA")        * 00380000
//*  SALIDA  <---  'PRODUSVP.ZMDT637'     ("CARGA EN TABLA")          * 00390000
//*                                                                   * 00400000
//*                                                   PGM.(ZM4DLD06)  * 00410000
//********************************************************************* 00420000
//PLL36P01 EXEC PGM=IKJEFT01                                            00430000
//PI601765 DD DUMMY                                                     00440000
//*                                                                     00450000
//ZMDLD06F DD DSN=SIVA.MDD.WKF.OPERMDD,DISP=SHR                         00460000
//*                                                                     00470000
//SYSTSPRT DD SYSOUT=*,                                                 00480000
//            DCB=BLKSIZE=0                                             00490000
//SYSPRINT DD SYSOUT=*                                                  00500000
//SYSOUT   DD SYSOUT=*                                                  00510000
//SYSDBOUT DD SYSOUT=*                                                  00520000
//SYSABOUT DD DUMMY                                                     00530000
//SYSUDUMP DD DUMMY                                                     00540000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL36T01),DISP=SHR                   00550000
//*                                                                     00560000
