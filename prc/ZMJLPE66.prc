//ZMJLPE66 PROC                                                         00010001
//********************************************************************* 00020100
//*                     C A S A   D E   B O L S A                     * 00030000
//*                     =========================                     * 00040000
//*                    << MERCADO DE CAPITALES >>                     * 00050000
//*                                                                   * 00060000
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00070000
//*                                                                   * 00080000
//*   JCL              :  SIVAXCRI                                    * 00090000
//*                                                                   * 00100000
//*   CADENA           :  OPCION ZA3 -> JCL SIVAXAPM -> PRC ZMJLPE66  * 00110001
//*                                                                   * 00120000
//*   OBJETIVO         :  RECOLECCION DE INFORMACION DE ACCIONES      * 00130000
//*                       PROPIAS DE DIFERENTES MODULOS               * 00140000
//*                                                                   * 00150000
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION ZA1 P/USUARIO     * 00160000
//*                                                                   * 00170000
//*   CORRE ANTES   DE :  NINGUNO                                     * 00180000
//*                                                                   * 00190000
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00200000
//*                                                                   * 00210000
//*   ELABORADO POR    :  CDA                                         * 00220000
//*                                                                   * 00230000
//*   FECHA            :  FEBRERO / 2013                              * 00240000
//*                                                                   * 00250000
//**********************************************************************00250100
//*            L O G   D E   M O D I F I C A C I O N E S               *00250200
//**********************************************************************00250300
//*     MARCA     USUARIO       FECHA        DESCRIPCION               *00250400
//**********************************************************************00250500
//*  FS-1.0.0-01  CDAINFO     18FEB2013  RECIBE LOS PARAMETROS ENVIADOS*00250600
//*                                      A LINEA Y LOS GRABA EN UN     *00250700
//*                                      ARCHIVO SECUENCIAL            *00250800
//********************************************************************* 00260000
//*  PASO: 01    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  * 00300200
//*              EN ARCHIVO SECUENCIAL                                * 00300300
//*  SECUENCIA: 1                                           ZM3DG001  * 00300400
//********************************************************************* 00300500
//*FS-1.0.0-01-INI                                                      00300600
//PJLP4P01 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)      00310100
//*                                                                     00320000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.ZD49.ZMJLPE66,                   00330206
//            DISP=(NEW,CATLG,DELETE),                                  00340000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00350000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00360000
//SYSTSPRT DD SYSOUT=*                                                  00370000
//SYSPRINT DD SYSOUT=*                                                  00380000
//SYSOUT   DD SYSOUT=*                                                  00390000
//SYSDBOUT DD SYSOUT=*                                                  00400000
//SYSABOUT DD SYSOUT=*                                                  00410000
//SYSUDUMP DD SYSOUT=*                                                  00420000
//*FS-1.0.0-01-FIN                                                      00690000
//****************************************************************      00690100
//*  PASO:  K      SE ADICIONA CONDICION                         *      00690200
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00690300
//****************************************************************      00690400
//PJLA1P0K EXEC PGM=CTMCND,PARM='ADD COND SIVAXCRI_OK WDATE',           00690500
//         COND=(4,LT)                                                  00690600
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00690700
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00690800
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00690900
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00691000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00691100
//PRTDBG   DD SYSOUT=*                                                  00691200
//SYSPRINT DD DUMMY                                                     00691300
//SYSUDUMP DD DUMMY                                                     00691400
//DAPRINT  DD SYSOUT=*                                                  00691500
//DACNDIN  DD DDNAME=SYSIN                                              00691600
//*                                                                     00691700
//**********************************************************************00700000
//*          F I N      Z M J L P E 6 6                                *00710001
//**********************************************************************00720000
