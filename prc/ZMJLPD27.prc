//ZMJLPD27 PROC                                                         00010005
//********************************************************************* 00020000
//*                     C A S A   D E   B O L S A                     * 00030000
//*                     =========================                     * 00040000
//*                    << MERCADO DE CAPITALES >>                     * 00050000
//*                                                                   * 00060000
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00070000
//*                                                                   * 00080000
//*   JCL              :  SIVAXRBP                                    * 00090001
//*                                                                   * 00100000
//*   CADENA           :  OPCION 905 -> JCL SIVAXRBP -> PRC ZMJLPD27  * 00110004
//*                                                                   * 00120000
//*   OBJETIVO         :  GENERAR REPORTE DE  LIQUIDACIONES E INFORMA-* 00130000
//*                       CION RESULTANTE DEL PROCESO DE COMPRA/VEN-  * 00140000
//*                       TAS DEL MERCADO DE CAPITALES.               * 00150000
//*                                                                   * 00160000
//*   REPORTE        1.-  LIQUIDACION INTERMEDIARIOS MISMO DIA        * 00170000
//*                       (ZM4EHU18)                                  * 00180002
//*                                                                   * 00190000
//*   CORRE            :  SUBMITIDO DESDE LA OPCION 905 P/USUARIO     * 00200000
//*                       SUBOPCION ("A").                            * 00210000
//*                                                                   * 00220000
//*   CORRE ANTES   DE :  NINGUNO                                     * 00230000
//*                                                                   * 00240000
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00250000
//*                                                                   * 00260000
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON                     * 00270000
//*                                                                   * 00280000
//*   FECHA            :  JUNIO / 2006.                               * 00290000
//*                                                                   * 00300000
//********************************************************************* 00310000
//*                                                                   * 00320000
//*  PASO: 03    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  * 00330000
//*              EN ARCHIVO SECUENCIAL                                * 00340000
//*                                                                   * 00350000
//*  SECUENCIA: 1                                           ZM3DG001  * 00360000
//*                                                                   * 00370000
//********************************************************************* 00380000
//PJD27P03 EXEC PGM=ZM3DG001,                                           00390004
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00400000
//*                                                                     00410000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,                       00420000
//            DISP=(NEW,CATLG,DELETE),                                  00430000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00440000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00450000
//SYSTSPRT DD SYSOUT=*                                                  00460000
//SYSPRINT DD SYSOUT=*                                                  00470000
//SYSOUT   DD SYSOUT=*                                                  00480000
//SYSDBOUT DD SYSOUT=*                                                  00490000
//SYSABOUT DD SYSOUT=*                                                  00500000
//SYSUDUMP DD SYSOUT=*                                                  00510000
//*                                                                     00520000
//**********************************************************************00530000
//*  PASO: 02     CARGA DE LA TABLA ZMDT632, INFORMACION DE COMPRA,VEN-*00540000
//*               TA DE MERCADO DE CAPITALES.                          *00550000
//*  PJD27P02                                               ZM4DHW28   *00560004
//**********************************************************************00570000
//PJD27P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00580004
//*                                                                     00590000
//ZM4DHW28 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZM4DHW28,                   00600000
//            DISP=(NEW,CATLG,DELETE),                                  00610000
//            DCB=(LRECL=377,RECFM=FB,BLKSIZE=0,DSORG=PS),              00620000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00630000
//*                                                                     00640000
//SYSTSPRT DD SYSOUT=*                                                  00650000
//SYSPRINT DD SYSOUT=*                                                  00660000
//SYSOUT   DD SYSOUT=*                                                  00670000
//SYSDBOUT DD SYSOUT=*                                                  00680000
//SYSABOUT DD SYSOUT=*                                                  00690000
//SYSUDUMP DD SYSOUT=*                                                  00700000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD27T02),DISP=SHR                   00710004
//*                                                                     00720000
//**********************************************************************00730000
//*  PASO: 01     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *00740000
//*                                                                    *00750000
//*  PJD27P01                                               ZM4EHU18   *00760004
//**********************************************************************00770000
//PJD27P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780004
//*                                                                     00790000
//ZM4D18A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               00800000
//*                                                                     00810000
//ZM4D18R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00820002
//*                                                                     00830000
//SYSTSPRT DD SYSOUT=*                                                  00840000
//SYSPRINT DD SYSOUT=*                                                  00850000
//SYSOUT   DD SYSOUT=*                                                  00860000
//SYSDBOUT DD SYSOUT=*                                                  00870000
//SYSABOUT DD SYSOUT=*                                                  00880000
//SYSUDUMP DD SYSOUT=*                                                  00890000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD27T01),DISP=SHR                   00900004
//*                                                                     00910000
//**********************************************************************00920002
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M QUE TERMINO            *00930002
//*            REPORTE DE LIQUIDACION AGENTE.                          *00940002
//**********************************************************************00950002
//PJD27P00 EXEC  PGM=CTMCND,PARM='ADD COND  SIVABP27_IN_SEP_OK WDATE',  00960004
//         COND=(4,LT)                                                  00970002
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00980002
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00990002
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01000002
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01010002
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01020002
//*                                                                     01030002
//PRTDBG   DD SYSOUT=*                                                  01040002
//SYSPRINT DD DUMMY                                                     01050002
//SYSUDUMP DD DUMMY                                                     01060002
//DAPRINT  DD SYSOUT=*                                                  01070002
//DACNDIN  DD DDNAME=SYSIN                                              01080002
//*                                                                     01090002
