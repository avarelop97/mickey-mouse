//ZMHEPD06 PROC                                                         00010000
//*                                                                     00020000
//********************************************************************* 00030000
//*                     C A S A   D E   B O L S A                     * 00040000
//*                     =========================                     * 00050000
//*                    << MERCADO DE CAPITALES >>                     * 00060000
//*                                                                   * 00070000
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (SIVA)          * 00080000
//*                                                                   * 00090000
//*   JCL              :  BCHEND06                                    * 00100000
//*                                                                   * 00110000
//*   CADENA           :  CONTROL-M  -> JCL BCHEND06 -> PRC ZMHEPD06  * 00120000
//*                                                                   * 00130000
//*   OBJETIVO         :  ASIGNACION INDIVIDUAL DE LA EMPRESA         * 00140000
//*                                                                   * 00150000
//*   CORRE DESPUES DE :  CADA MINUTO POR SOLICITUD DE USUARIO        * 00160000
//*                                                                   * 00170000
//*   CORRE ANTES   DE :  NINGUNO                                     * 00180000
//*                                                                   * 00190000
//*   PERIODICIDAD     :  EVENTUAL                                    * 00200000
//*                                                                   * 00210000
//*   ELABORADO POR    :  MARCO A. MORALES GERMAN (GETRONICS)         * 00220000
//*                                                                   * 00230000
//*   FECHA            :  13/OCT/2003                                 * 00240000
//*                                                                   * 00250000
//********************************************************************* 00260000
//********************************************************************* 00270000
//*                                                                   * 00280000
//*  PASO:  2    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  * 00290000
//*              EN ARCHIVO SECUENCIAL                                * 00300000
//*                                                                   * 00310000
//*  SECUENCIA: 1                                           ZM3DG001  * 00320000
//*                                                                   * 00330000
//********************************************************************* 00340000
//PHE06P02 EXEC PGM=ZM3DG001,REGION=0M,                                 00350000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00360000
//*                                                                     00370000
//PI601765 DD DUMMY                                                     00380000
//*                                                                     00390000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD06,               00400000
//            DISP=(NEW,CATLG,DELETE),                                  00410000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00420000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00430000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00440000
//SYSPRINT DD SYSOUT=*                                                  00450000
//SYSOUT   DD SYSOUT=*                                                  00460000
//SYSDBOUT DD SYSOUT=*                                                  00470000
//SYSABOUT DD DUMMY                                                     00480000
//SYSUDUMP DD DUMMY                                                     00490000
//*                                                                     00500000
//********************************************************************* 00510000
//*                                                                   * 00520000
//*  PASO:  1    EJECUTA PROGRAMA QUE ASIGNA                          * 00530000
//*                                                                   * 00540000
//*  SECUENCIA: 2   ASIGNACION DE UNA EMPRESA INDIVIDUAL    ZM4EHV24  * 00550000
//*                                                                   * 00560000
//********************************************************************* 00570000
//PHE06P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00580000
//*                                                                     00590000
//ZMHV24A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD06,DISP=SHR       00600000
//*                                                                     00610000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00620000
//SYSPRINT DD SYSOUT=*                                                  00630000
//SYSOUT   DD SYSOUT=*                                                  00640000
//SYSDBOUT DD SYSOUT=*                                                  00650000
//SYSABOUT DD DUMMY                                                     00660000
//SYSUDUMP DD DUMMY                                                     00670000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE06T01),DISP=SHR                   00680000
//*                                                                     00690000
//********************************************************************* 00700000
//*                           FIN ZMHEPD06                            * 00710000
//********************************************************************* 00720000
