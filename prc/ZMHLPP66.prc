//ZMHLPP66 PROC                                                         00010000
//**********************************************************************00020000
//* PROGRAMA: ZM3DG001                                                * 00040000
//* FUNCION:  ARMAR SECUENCIAL CON PARAMETROS DEL SUBMITIDOR          * 00050000
//* NO ACTUALIZA TABLAS.                                              * 00060000
//**********************************************************************00061000
//PHL66P02 EXEC PGM=ZM3DG001,                                           00080000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00090000
//PI601765 DD DUMMY                                                     00100000
//ZMG001A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHLPE66.BXICO.OPC,               00110000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00120000
//            SPACE=(CYL,(20,10),RLSE),                                 00130000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)                00140000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00150000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSOUT   DD SYSOUT=*                                                  00161000
//SYSDBOUT DD SYSOUT=*                                                  00162000
//SYSABOUT DD SYSOUT=*                                                  00163000
//SYSUDUMP DD DUMMY                                                     00164000
//*                                                                     00165000
//****************************************************************      00166000
//*                SE ADICIONA CONDICION                         *      00167000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00168000
//****************************************************************      00169000
//PHL66P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXBX7_IN_OK WDATE',       00170000
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
//*          TERMINA PROCESO  Z M H L P P 6 6                    *      00310000
//****************************************************************      00320000
