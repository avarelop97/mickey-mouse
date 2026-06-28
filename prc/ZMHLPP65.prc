//ZMHLPP65 PROC                                                         00010000
//**********************************************************************00020000
//* PROGRAMA: ZM3DG001                                                * 00040000
//* FUNCION:  ARMAR SECUENCIAL CON PARAMETROS DEL SUBMITIDOR          * 00050000
//* NO ACTUALIZA TABLAS.                                              * 00060000
//**********************************************************************00061000
//PHL65P02 EXEC PGM=ZM3DG001,                                           00062000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00063000
//PI601765 DD DUMMY                                                     00064000
//ZMG001A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE65.BXICO.OPC,               00065000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00066000
//            SPACE=(CYL,(20,10),RLSE),                                 00067000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)                00068000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00069000
//SYSPRINT DD SYSOUT=*                                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00080000
//SYSDBOUT DD SYSOUT=*                                                  00090000
//SYSABOUT DD SYSOUT=*                                                  00100000
//SYSUDUMP DD DUMMY                                                     00110000
//*                                                                     00120000
//****************************************************************      00130000
//*                SE ADICIONA CONDICION                         *      00140000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00150000
//****************************************************************      00160000
//PHL65P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXBX6_IN_OK WDATE',       00170001
//         COND=(4,LT)                                                  00180000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00190000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00200000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00210000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00220000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00230000
//PRTDBG   DD SYSOUT=*                                                  00240000
//SYSPRINT DD DUMMY                                                     00250000
//SYSUDUMP DD DUMMY                                                     00260000
//DAPRINT  DD SYSOUT=*                                                  00270000
//DACNDIN  DD DDNAME=SYSIN                                              00280000
//*                                                                     00290000
//****************************************************************      00300000
//*        TERMINA PROCESO ZMHLPP65 SIVA MULTIEMPRESA            *      00310000
//****************************************************************      00320000
