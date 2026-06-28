//ZMHLPP80 PROC                                                         00010000
//**********************************************************************00020000
//* PROGRAMA: ZM3DG001                                                * 00030000
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA      * 00040000
//*           EN ARCHIVO.                                             * 00040000
//* NO ACTUALIZA TABLAS.                                              * 00050000
//**********************************************************************00051000
//PHL80P02 EXEC PGM=ZM3DG001,                                           00070001
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00080000
//PI601765 DD DUMMY                                                     00080000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.EMP.SUC.ZMHLPE80,                     00100000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00110000
//            SPACE=(CYL,(20,10),RLSE),                                 00120000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)                00130000
//SYSTSPRT DD SYSOUT=*                                                  00140000
//SYSPRINT DD SYSOUT=*                                                  00150000
//SYSOUT   DD SYSOUT=*                                                  00160000
//SYSDBOUT DD SYSOUT=*                                                  00170000
//SYSABOUT DD SYSOUT=*                                                  00180000
//SYSUDUMP DD DUMMY                                                     00190000
//*                                                                     00200000
//****************************************************************      00210000
//*                SE ADICIONA CONDICION                         *      00220000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00230000
//****************************************************************      00240000
//PHL80P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXPRV_IN_OK WDATE',       00250000
//         COND=(4,LT)                                                  00260000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00270000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00280000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00290000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00300000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00310000
//PRTDBG   DD SYSOUT=*                                                  00320000
//SYSPRINT DD DUMMY                                                     00330000
//SYSUDUMP DD DUMMY                                                     00340000
//DAPRINT  DD SYSOUT=*                                                  00350000
//*ACNDIN  DD DDNAME=SYSIN                                              00360000
//*                                                                     00370000
//****************************************************************      00380000
//*        TERMINA PROCESO  Z M H L P P 8 0                      *      00390000
//****************************************************************      00400000
