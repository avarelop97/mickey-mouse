//ZMJLPE25 PROC                                                         00010000
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
//*   CADENA           :  OPCION 29 -> JCL SIVAXTPS -> PRC ZMJLPE25   * 00120000
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
//********************************************************************* 00280000
//*                                                                   * 00290000
//*  PASO:  4    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  * 00300000
//*              EN ARCHIVO SECUENCIAL                                * 00310000
//*                                                                   * 00320000
//*  SECUENCIA: 4                                           ZM3DG001  * 00330000
//*                                                                   * 00340000
//********************************************************************* 00350000
//PJL25P04 EXEC PGM=ZM3DG001,REGION=0M,                                 00360000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00370000
//*                                                                     00380000
//PI601765 DD DUMMY                                                     00390000
//*                                                                     00400000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPE25,                   00410000
//            DISP=(NEW,CATLG,DELETE),                                  00420000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00430000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00440000
//SYSTSPRT DD SYSOUT=*,                                                 00450000
//            DCB=BLKSIZE=0                                             00460000
//SYSPRINT DD SYSOUT=*                                                  00470000
//SYSOUT   DD SYSOUT=*                                                  00480000
//SYSDBOUT DD SYSOUT=*                                                  00490000
//SYSABOUT DD DUMMY                                                     00500000
//SYSUDUMP DD DUMMY                                                     00510000
//*                                                                     00520000
//********************************************************************* 00530000
//*                                                                   * 00540000
//*  PASO:  3    COPIA ARCHIVO DE PRECIOS DE SOCIEDADES DE INVERSION  * 00550000
//*              DELIMITA LA ESTRUCUTURA.                             * 00560000
//*  SECUENCIA: 3                                                     * 00570000
//*                                                                   * 00580000
//********************************************************************* 00590000
//*PJL25P03 EXEC PGM=ICEGENER,COND=(4,LT)                               00600068
//*                                                                     00610000
//*SYSPRINT DD SYSOUT=*                                                 00620068
//*SYSIN    DD DUMMY                                                    00630068
//*                                                                     00640000
//*SYSUT1   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PSIRF.ZMJLPE25,DISP=SHR    00650068
//*SYSUT2   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PSIRF,                     00660068
//*            DISP=(NEW,CATLG,DELETE),                                 00670068
//*            DCB=(LRECL=196,RECFM=FB,BLKSIZE=0,DSORG=PS),             00680068
//*            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                         00690068
//********************************************************************* 00700000
//*                                                                   * 00710000
//*  PASO:  2    COPIA ARCHIVO DE PRECIOS DE RV PARA SOC. DE INV.     * 00720000
//*              DELIMITA LA ESTRUCUTURA.                             * 00730000
//*  SECUENCIA: 2                                                     * 00740000
//*                                                                   * 00750000
//********************************************************************* 00760000
//*PJL25P02 EXEC PGM=ICEGENER,COND=(4,LT)                               00770068
//*                                                                     00780000
//*SYSPRINT DD  SYSOUT=*                                                00790068
//*SYSIN    DD  DUMMY                                                   00800068
//*                                                                     00810000
//*SYSUT1   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PSIRV.ZMJLPE25,DISP=SHR    00820068
//*SYSUT2   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PSIRV,                     00830068
//*            DISP=(NEW,CATLG,DELETE),                                 00840068
//*            DCB=(LRECL=196,RECFM=FB,BLKSIZE=0,DSORG=PS),             00850068
//*            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                         00860068
//*                                                                     00870000
//********************************************************************* 00880000
//*                                                                   * 00890000
//*  PASO:  1    EJECUTA PROGRAMA QUE CARGA PRECIOS PARA SOC. INV.    * 00900000
//*                                                                   * 00910000
//*  SECUENCIA: 1   EN TABLA ZMDT618                   PGM.(ZM4DJ810) * 00920000
//*                                                                   * 00930000
//********************************************************************* 00940000
//PJL25P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00950000
//PI601765 DD DUMMY                                                     00960000
//*                                                                     00970000
//ZMJ810RF DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PSIRF.ZMJLPE25,DISP=SHR     00980068
//ZMJ810RV DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PSIRV.ZMJLPE25,DISP=SHR     00990068
//ZMJ810A3 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPE25,DISP=SHR           01000000
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
