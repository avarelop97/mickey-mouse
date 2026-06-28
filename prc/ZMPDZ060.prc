//ZMPDZ060 PROC                                                         00010000
//********************************************************************* 00020000
//*                     C A S A   D E   B O L S A                     * 00030000
//*                     =========================                     * 00040000
//*                    << SOCIEDAD DE INVERSIONES >>                  * 00050000
//*                                                                   * 00060000
//*   APLICACION       :  MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO   * 00070000
//*                                                                   * 00080000
//*   JCL              :  SIVAXAP1                                    * 00090000
//*                                                                   * 00100000
//*   CADENA           :  OPCION FC1 -> JCL SIVAXAPM -> PRC ZMPDZ060  * 00110000
//*                                                                   * 00120000
//*   OBJETIVO         :  RECOLECCION DE INFORMACION DE ACCIONES      * 00130000
//*                       PROPIAS DE DIFERENTES MODULOS               * 00140000
//*                                                                   * 00160000
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION FC1 P/USUARIO     * 00170000
//*                                                                   * 00180000
//*   CORRE ANTES   DE :  NINGUNO                                     * 00190000
//*                                                                   * 00200000
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00210000
//*                                                                   * 00220000
//*   ELABORADO POR    :  ACCENTURE.                                  * 00230000
//*                                                                   * 00240000
//*   FECHA            :  JULIO / 2017.                               * 00250000
//*                                                                   * 00260000
//********************************************************************* 00261004
//*  PASO: 01    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  * 00270004
//*              EN ARCHIVO SECUENCIAL                                * 00280004
//*                                                                   * 00290004
//*  SECUENCIA: 1                                           ZM3DG001  * 00300004
//*                                                                   * 00310004
//********************************************************************* 00320004
//PJLA3P01 EXEC PGM=ZM3DG001,                                           00330011
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00330012
//*                                                                     00350004
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMPDZ060,                   00360012
//            DISP=(NEW,CATLG,DELETE),                                  00370010
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00380010
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00390010
//SYSTSPRT DD SYSOUT=*                                                  00400004
//SYSPRINT DD SYSOUT=*                                                  00410004
//SYSOUT   DD SYSOUT=*                                                  00420004
//SYSDBOUT DD SYSOUT=*                                                  00430004
//SYSABOUT DD SYSOUT=*                                                  00440004
//SYSUDUMP DD SYSOUT=*                                                  00450004
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJLA3P0A EXEC  PGM=CTMCND,PARM='ADD COND SIVAXOPER_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
