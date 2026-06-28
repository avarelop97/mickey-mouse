//ZMJLPZ25 PROC                                                         00010000
//*                                                                     00020000
//********************************************************************* 00030000
//*                     C A S A   D E   B O L S A                     * 00040000
//*                     =========================                     * 00050000
//*                    << MERCADO DE CAPITALES >>                     * 00060000
//*                                                                   * 00070000
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (SIVA)          * 00080000
//*                                                                   * 00090000
//*   JCL              :  SIVAXTPS                                    * 00100000
//*                                                                   * 00110000
//*   CADENA           :  OPCION 29 -> JCL SIVAXTPS -> PRC ZMLPZ25    * 00120000
//*                                                                   * 00130000
//*   OBJETIVO         :  CARGA  DE PRECIOS PARA SOCIEDADES DE        * 00140000
//*                       INVERSION EN LA TABLA ZMDT618.              * 00150000
//*                                                                   * 00160000
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION 29 A PETICION DEL * 00170000
//*                       USUARIO.                                    * 00180000
//*                                                                   * 00190000
//*   CORRE ANTES   DE :  NINGUNO                                     * 00200000
//*                                                                   * 00210000
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00220000
//*                                                                   * 00230000
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON                     * 00240000
//*                                                                   * 00250000
//*   FECHA            :  NOVIEMBRE / 2003                            * 00260000
//*                                                                   * 00270000
//********************************************************************* 00530000
//*                                                                   * 00540000
//*  PASO:  3    COPIA ARCHIVO DE PRECIOS DE SOCIEDADES DE INVERSION  * 00550000
//*              DELIMITA LA ESTRUCUTURA.                             * 00560000
//*  SECUENCIA: 3                                                     * 00570000
//*                                                                   * 00580000
//********************************************************************* 00590000
//PLP25P03 EXEC PGM=ICEGENER,COND=(4,LT)                                00600000
//*                                                                     00610000
//SYSPRINT DD SYSOUT=*                                                  00620000
//SYSIN    DD DUMMY                                                     00630000
//*                                                                     00640000
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECBP.SZPR.PSIRF.ZMJLPE25,DISP=SHR         00650000
//SYSUT2   DD DSN=MXCP.ZM.TMP.EMP.SUC.PSIRF,                            00660002
//            DISP=(NEW,CATLG,DELETE),                                  00670002
//            DCB=(LRECL=196,RECFM=FB,BLKSIZE=0,DSORG=PS),              00680002
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00690002
//********************************************************************* 00700000
//*                                                                   * 00710000
//*  PASO:  2    COPIA ARCHIVO DE PRECIOS DE RV PARA SOC. DE INV.     * 00720000
//*              DELIMITA LA ESTRUCUTURA.                             * 00730000
//*  SECUENCIA: 2                                                     * 00740000
//*                                                                   * 00750000
//********************************************************************* 00760000
//PLP25P02 EXEC PGM=ICEGENER,COND=(4,LT)                                00770000
//*                                                                     00780000
//SYSPRINT DD  SYSOUT=*                                                 00790000
//SYSIN    DD  DUMMY                                                    00800000
//*                                                                     00810000
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECBP.SZPR.PSIRV.ZMJLPE25,DISP=SHR         00820000
//SYSUT2   DD DSN=MXCP.ZM.TMP.EMP.SUC.PSIRV,                            00830002
//            DISP=(NEW,CATLG,DELETE),                                  00840002
//            DCB=(LRECL=196,RECFM=FB,BLKSIZE=0,DSORG=PS),              00850002
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00860002
//*                                                                     00870000
//********************************************************************* 00880000
//*                                                                   * 00890000
//*  PASO:  1    EJECUTA PROGRAMA QUE CARGA PRECIOS PARA SOC. INV.    * 00900000
//*                                                                   * 00910000
//*  SECUENCIA: 1   EN TABLA ZMDT618                   PGM.(ZM4DJ810) * 00920000
//*                                                                   * 00930000
//********************************************************************* 00940000
//PLP25P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00950000
//PI601765 DD DUMMY                                                     00960000
//*                                                                     00970000
//ZMJ810RF DD DSN=MXCP.ZM.TMP.EMP.SUC.PSIRF,DISP=SHR                    00980000
//ZMJ810RV DD DSN=MXCP.ZM.TMP.EMP.SUC.PSIRV,DISP=SHR                    00990000
//ZMJ810A3 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMJLPE25,DISP=SHR                 01000000
//*                                                                     01010000
//SYSTSPRT DD SYSOUT=*,                                                 01020000
//            DCB=BLKSIZE=0                                             01030000
//SYSPRINT DD SYSOUT=*                                                  01040000
//SYSOUT   DD SYSOUT=*                                                  01050000
//SYSDBOUT DD SYSOUT=*                                                  01060000
//SYSABOUT DD DUMMY                                                     01070000
//SYSUDUMP DD DUMMY                                                     01080000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL25T01),DISP=SHR                   01090000
//*                                                                     01100000
