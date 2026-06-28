//ZMGLPE02 PROC                                                         00010001
//*                                                                     00020001
//********************************************************************* 00030001
//*                     C A S A   D E   B O L S A                     * 00040005
//*                     =========================                     * 00050005
//*                    << MERCADO DE CAPITALES >>                     * 00060001
//*                                                                   * 00070001
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (SIVA)          * 00080001
//*                                                                   * 00090001
//*   JCL              :  SIVAXROG                                    * 00100004
//*                                                                   * 00110004
//*   CADENA           :  OPCION 72 -> JCL SIVAXROG -> PRC ZMGLPE02   * 00120009
//*                                                                   * 00130011
//*   OBJETIVO         :  GRABAR PARAMETROS EN ARCHIVO SECUENCIAL     * 00140011
//*                       GENERAR REPORTE DE LA ESTRUCTURA DE UNA     * 00150011
//*                          ORDEN GLOBAL                             * 00160011
//*                                                                   * 00170011
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION 72 POR USUARIO    * 00180011
//*                                                                   * 00190011
//*   CORRE ANTES   DE :  NINGUNO                                     * 00200011
//*                                                                   * 00210011
//*   PERIODICIDAD     :  EVENTUAL                                    * 00220011
//*                                                                   * 00230011
//*   ELABORADO POR    :  MARCO A. MORALES GERMAN (GETRONICS)         * 00240011
//*                                                                   * 00250011
//*   FECHA            :  16/OCT/2003                                 * 00260011
//*                                                                   * 00270011
//********************************************************************* 00280001
//********************************************************************* 00290004
//*                                                                   * 00300004
//*  PASO:  3    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  * 00310011
//*              EN ARCHIVO SECUENCIAL                                * 00320006
//*                                                                   * 00330004
//*  SECUENCIA: 1                                           ZM3DG001  * 00340004
//*                                                                   * 00350004
//********************************************************************* 00360004
//PGL02P03 EXEC PGM=ZM3DG001,REGION=0M,                                 00370011
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00380004
//PI601765 DD DUMMY                                                     00390004
//ZMG001A1 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ZMGLPE02,               00400011
//            DISP=(NEW,CATLG,DELETE),                                  00410004
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00420004
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00430004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00440004
//SYSPRINT DD SYSOUT=*                                                  00450004
//SYSOUT   DD SYSOUT=*                                                  00460004
//SYSDBOUT DD SYSOUT=*                                                  00470004
//SYSABOUT DD DUMMY                                                     00480004
//SYSUDUMP DD DUMMY                                                     00490004
//*                                                                     00500004
//********************************************************************* 00510011
//*                                                                   * 00520011
//*  PASO:  2    EJECUTA PROGRAMA QUE GENERA REPORTE:                 * 00530011
//*                                                                   * 00540011
//*  SECUENCIA: 2   ESTRUCTURA DE UNA ORDEN GLOBAL          ZM4EG591  * 00550011
//*                                                                   * 00560011
//********************************************************************* 00570011
//PGL02P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00580011
//*                                                                     00590011
//ZMG591A1 DD DISP=SHR,DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ZMGLPE02       00600011
//*                                                                     00610011
//ZMG591R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00620011
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00630011
//SYSPRINT DD SYSOUT=*                                                  00640011
//SYSOUT   DD SYSOUT=*                                                  00650011
//SYSDBOUT DD SYSOUT=*                                                  00660011
//SYSABOUT DD DUMMY                                                     00670011
//SYSUDUMP DD DUMMY                                                     00680011
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL02T02),DISP=SHR                   00690011
//*                                                                     00700011
//********************************************************************* 00710011
//*                                                                   * 00720011
//*  PASO:  1    ADICIONA CONDICION FIN DE PROCESO, INICIO SEPARACION * 00730011
//*                                                                   * 00740011
//*  SECUENCIA: 3                                           CTMCND    * 00750011
//*                                                                   * 00760011
//********************************************************************* 00770011
//PGL02P01 EXEC  PGM=CTMCND,                                            00780011
//         PARM='ADD COND SIVAXROG_&EMP_SEP_OK WDATE',COND=(4,LT)       00790011
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00800011
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00810011
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00820011
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00830011
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00840011
//PRTDBG   DD SYSOUT=*                                                  00850011
//SYSPRINT DD DUMMY                                                     00860011
//SYSUDUMP DD DUMMY                                                     00870011
//DAPRINT  DD SYSOUT=*                                                  00880011
//DACNDIN  DD DDNAME=SYSIN                                              00890011
//********************************************************************* 00900001
//*                           FIN ZMGLPE02                            * 00910001
//********************************************************************* 00920001
