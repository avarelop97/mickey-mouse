//ZMJLPP33 PROC                                                         00020000
//**********************************************************************00030000
//*                                                                    *00050000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS EN LINEA Y LOS GRABA  *00060000
//*               EN ARCHIVO SEC. ARCHIVO.                             *00070000
//*                                                          ZM3DG001  *00080000
//**********************************************************************00090000
//PJL33P02 EXEC PGM=ZM3DG001,                                           00100000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00110000
//*                                                                     00120000
//SYSTSPRT DD SYSOUT=*                                                  00130000
//SYSPRINT DD SYSOUT=*                                                  00140000
//SYSOUT   DD SYSOUT=*                                                  00150000
//SYSDBOUT DD SYSOUT=*                                                  00160000
//SYSABOUT DD DUMMY                                                     00170000
//SYSUDUMP DD DUMMY                                                     00180000
//*                                                                     00190000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE33,                     00200000
//            DISP=(NEW,CATLG,CATLG),                                   00210000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00220000
//            UNIT=3390,                                                00230000
//            SPACE=(CYL,(1,1),RLSE)                                    00240000
//*                                                                     00240100
//****************************************************************      00250000
//*                SE ADICIONA CONDICION                         *      00260000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00270000
//****************************************************************      00280000
//PJL33P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXICT_IN_OK WDATE',        00290000
//         COND=(4,LT)                                                  00300000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00310000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00320000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00330000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00340000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00350000
//PRTDBG   DD SYSOUT=Z                                                  00360000
//SYSPRINT DD DUMMY                                                     00370000
//SYSUDUMP DD DUMMY                                                     00380000
//DAPRINT  DD SYSOUT=Z                                                  00390000
//DACNDIN  DD DDNAME=SYSIN                                              00400000
//*                                                                     00410000
//**********************************************************************00420000
//*                   F I N     Z M J L P P 3 3                        *00430000
//**********************************************************************00440000
