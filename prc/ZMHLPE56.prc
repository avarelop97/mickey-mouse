//ZMHLPE56 PROC                                                         00010001
//*                                                                     00020000
//********************************************************************* 00030000
//*                     C A S A   D E   B O L S A                     * 00040000
//*                     =========================                     * 00050000
//*                    << MERCADO DE CAPITALES >>                     * 00060000
//*                                                                   * 00070000
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (SIVA)          * 00080000
//*                                                                   * 00090000
//*   JCL              :  SIVAXTNP                                    * 00100001
//*                                                                   * 00110000
//*   CADENA           :  OPCION 74 -> JCL SIVAXTNP -> PRC ZMHLPE56   * 00120001
//*                                                                   * 00130006
//*   OBJETIVO         :  GRABAR PARAMETROS EN ARCHIVO SECUENCIAL Y   * 00150002
//*                       ADICIONAR CONDICION PARA CTL/M PARA LA      * 00160006
//*                       MISION DE SEPARACION.                       * 00170006
//*                                                                   * 00180000
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION 74 POR EL USUARIO * 00190006
//*                                                                   * 00200000
//*   CORRE ANTES   DE :  NINGUNO                                     * 00210003
//*                                                                   * 00220000
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00230001
//*                                                                   * 00240000
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON (GETRONICS)         * 00250001
//*                                                                   * 00260000
//*   FECHA            :  15/OCT/2003                                 * 00270006
//*                                                                   * 00280000
//********************************************************************* 00290000
//*                                                                   * 00310000
//*  PASO:  3    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  * 00320006
//*              EN ARCHIVO SECUENCIAL                                * 00330000
//*                                                                   * 00340000
//*  SECUENCIA: 1                                           ZM3DG001  * 00350000
//*                                                                   * 00360000
//********************************************************************* 00370000
//PHL56P03 EXEC PGM=ZM3DG001,REGION=0M,                                 00380006
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00390000
//*                                                                     00400000
//PI601765 DD DUMMY                                                     00410000
//*                                                                     00420000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE56,                   00430001
//            DISP=(NEW,CATLG,DELETE),                                  00440000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00450000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00460000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00470000
//SYSPRINT DD SYSOUT=*                                                  00480000
//SYSOUT   DD SYSOUT=*                                                  00490000
//SYSDBOUT DD SYSOUT=*                                                  00500000
//SYSABOUT DD DUMMY                                                     00510000
//SYSUDUMP DD DUMMY                                                     00520000
//*                                                                     00530000
//********************************************************************* 00531006
//*                                                                   * 00532006
//*  PASO:  2    EJECUTA PROGRAMA QUE GENERA REPORTE:                 * 00533006
//*                                                                   * 00534006
//*  SECUENCIA: 1   DE TENENCIA ACCIONARIA P / PROMOTOR     ZM4DH569  * 00535006
//*                                                                   * 00536006
//********************************************************************* 00537006
//PHL57P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00538006
//PI601765 DD DUMMY                                                     00539006
//*                                                                     00539106
//ZMH569P1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPE56,DISP=SHR           00539206
//*                                                                     00539306
//ZMH569R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00539406
//*                                                                     00539506
//ZMH569A1 DD DSN=&&TENENC,                                             00539606
//            DISP=(NEW,PASS),                                          00539706
//            UNIT=3390,                                                00539806
//            DCB=(RECFM=FB,LRECL=84,BLKSIZE=0),                        00539906
//            SPACE=(CYL,(10,5),RLSE)                                   00540006
//SORTWK01 DD UNIT=3390,                                                00540106
//            SPACE=(CYL,(5),RLSE)                                      00540206
//SORTWK02 DD UNIT=3390,                                                00540306
//            SPACE=(CYL,(5),RLSE)                                      00540406
//SORTWK03 DD UNIT=3390,                                                00540506
//            SPACE=(CYL,(5),RLSE)                                      00540606
//*                                                                     00540706
//SYSTSPRT DD SYSOUT=*,                                                 00540806
//            DCB=BLKSIZE=0                                             00540906
//SYSPRINT DD SYSOUT=*                                                  00541006
//SYSOUT   DD SYSOUT=*                                                  00541106
//SYSDBOUT DD SYSOUT=*                                                  00541206
//SYSABOUT DD DUMMY                                                     00541306
//SYSUDUMP DD DUMMY                                                     00541406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL56T02),DISP=SHR                   00541506
//*                                                                     00541606
//********************************************************************* 00542000
//*                                                                   * 00550000
//*  PASO:  1    ADICIONA CONDICION PARA EJECUTAR JCL                 * 00560000
//*                                                                   * 00570000
//*  SECUENCIA: 1                                           CTMCND    * 00580006
//*                                                                   * 00590000
//********************************************************************* 00600000
//PHL56P01 EXEC  PGM=CTMCND,                                            00610005
//         PARM='ADD COND SIVAXTNP_&EMP_SEP_OK',COND=(4,LT)             00620006
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00630000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00640000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00650000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00660000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00670000
//PRTDBG   DD SYSOUT=*                                                  00680000
//SYSPRINT DD DUMMY                                                     00690000
//SYSUDUMP DD DUMMY                                                     00700000
//DAPRINT  DD SYSOUT=*                                                  00710000
//DACNDIN  DD DDNAME=SYSIN                                              00720000
//********************************************************************* 00730000
//*                           FIN ZMHLPE56                            * 00740001
//********************************************************************* 00750000
