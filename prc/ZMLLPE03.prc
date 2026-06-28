//ZMLLPE03 PROC                                                         00011000
//**********************************************************************00020000
//*                                                                    *00030000
//*                  MODULO DE MERCADO DE DINERO                       *00040000
//*                  JUNIO,             03, 2003                       *00050000
//*                                                                    *00060000
//**********************************************************************00070000
//*                                                                     00080000
//**********************************************************************00081000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00082000
//**********************************************************************00083000
//PJL03P04 EXEC PGM=ZM3DG001,REGION=0M,                                 00084000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00085000
//PI601765 DD DUMMY                                                     00086000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00087000
//SYSPRINT DD SYSOUT=*                                                  00088000
//SYSOUT   DD SYSOUT=*                                                  00089000
//SYSDBOUT DD SYSOUT=*                                                  00089100
//SYSABOUT DD DUMMY                                                     00089200
//SYSUDUMP DD DUMMY                                                     00089300
//*                                                                     00089400
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE03,               00089500
//            DISP=(NEW,CATLG,DELETE),                                  00089600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00089700
//            UNIT=3390,                                                00089800
//            SPACE=(CYL,(2,1),RLSE)                                    00089900
//*                                                                     00090000
//*******************************************************************   00100000
//* PROGRAMA:  ZM4DLC92                                                 00110000
//* OBJETIVO:  OPERACIONES DEL DIA DE MERCADO DE DINERO                 00120000
//*******************************************************************   00130000
//PJL03P03 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00140000
//*                                                                     00150000
//ZMGC92A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE03,               00160000
//            DISP=SHR                                                  00170000
//*                                                                     00180000
//ZMGC92R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00190000
//ZMGC92RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00200000
//*                                                                     00210000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00220000
//SYSPRINT DD SYSOUT=*                                                  00230000
//SYSOUT   DD SYSOUT=*                                                  00240000
//SYSDBOUT DD SYSOUT=*                                                  00250000
//SYSABOUT DD SYSOUT=*                                                  00260000
//SYSUDUMP DD DUMMY                                                     00270000
//*                                                                     00280000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL03T01),DISP=SHR                   00290000
//*                                                                     00300000
//****************************************************************      00310000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00320000
//****************************************************************      00330000
//PJL03P02 EXEC PGM=MAILOPER,COND=(4,GE),                               00340000
//         PARM=('/SR OPERADOR.AVISAR A SOPROD QUE',                    00350000
//             ' PROCESO ZMLLPE03 TERMINO MAL.CONTESTAR SI',            00360000
//             'PARA TERMINAR')                                         00370000
//****************************************************************      00380000
//*                SE ADICIONA CONDICION                         *      00390000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00400000
//****************************************************************      00410000
//PJL03P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXROD_IN_SEP_OK WDATE',   00420000
//         COND=(4,LT)                                                  00430000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00440000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00450000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00460000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00470000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00480000
//PRTDBG   DD SYSOUT=*                                                  00490000
//SYSPRINT DD DUMMY                                                     00500000
//SYSUDUMP DD DUMMY                                                     00510000
//DAPRINT  DD SYSOUT=*                                                  00520000
//DACNDIN  DD DDNAME=SYSIN                                              00530000
//SYSIN    DD DUMMY                                                     00531000
//*                                                                     00540000
