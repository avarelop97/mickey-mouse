//ZMGFPD03 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                    << MERCADO DE CAPITALES >>                      *00060000
//*                                                                    *00070000
//*   APLICACION   : SISTEMA INTEGRAL DE VALORES (SIVA)                *00080000
//*                                                                    *00090000
//*   JCL          : BCGFCD03                                          *00100000
//*                                                                    *00110000
//*   OBJETIVO     : REALIZAR LA GENERACION DE CUATRO ARCHIVOS DE      *00120000
//*                  CONCILIACIóN CON LA INFORMACIóN DE LOS CONTRATOS  *00130000
//*                  QUE OPERAN EN DECALOG                             *00140000
//*                                                                    *00150000
//*   ELABORADO POR: CDA INFORMATICA                                   *00160000
//*                                                                    *00170000
//*   FECHA        : 17/MAR/2014                                       *00180000
//*                                                                    *00190000
//**********************************************************************00200000
//**********************************************************************00210000
//*  PASO    : 07                                                      *00220001
//*  PROGRAMA: ZM3DG001                                                *00230000
//*  OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS Y LOS GRABA EN ARCHIVO   *00240000
//*            SECUENCIAL                                              *00250000
//**********************************************************************00260000
//PGF03P07 EXEC PGM=ZM3DG001,                                           00270001
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00280000
//*                                                                     00290000
//PI601765 DD DUMMY                                                     00300000
//*                                                                     00310000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMGFPD03,               00320000
//            DISP=(NEW,CATLG,DELETE),                                  00330000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00340000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00350000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00360000
//SYSPRINT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//SYSDBOUT DD SYSOUT=*                                                  00390000
//SYSABOUT DD DUMMY                                                     00400000
//SYSUDUMP DD DUMMY                                                     00410000
//*                                                                     00420000
//**********************************************************************00430000
//*  PASO    : 06                                                      *00440001
//*  PROGRAMA: ZM4DG025                                                *00450000
//*  OBJETIVO: ACCESA A DATOS DE CONTRATOS Y LOS GRABA EN ARCHIVO      *00460000
//*            SECUENCIAL                                              *00470000
//**********************************************************************00480000
//PGF03P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00490001
//*                                                                     00500000
//ZMG025A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DG025.CONTRATO,                 00510000
//            DISP=(NEW,CATLG,DELETE),                                  00520000
//            DCB=(LRECL=013,RECFM=FB,BLKSIZE=0,DSORG=PS),              00530000
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00540000
//*                                                                     00550000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00560000
//SYSPRINT DD SYSOUT=*                                                  00570000
//SYSOUT   DD SYSOUT=*                                                  00580000
//SYSDBOUT DD SYSOUT=*                                                  00590000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI03T05),DISP=SHR                   00600000
//*                                                                     00610000
//**********************************************************************00620000
//*  PASO    : 05                                                      *00630001
//*  PROGRAMA: ZM4DG026                                                *00640000
//*  OBJETIVO: ACCESA A DATOS DE MOVIMIENTOS Y LOS GRABA EN ARCHIVO    *00650000
//*            SECUENCIAL                                              *00660000
//**********************************************************************00670000
//PGF03P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00680001
//*                                                                     00690000
//ZMG026A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DG026.SALDOS,                   00700000
//            DISP=(NEW,CATLG,DELETE),                                  00710000
//            DCB=(LRECL=291,RECFM=FB,BLKSIZE=0,DSORG=PS),              00720000
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00730000
//*                                                                     00740000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00750000
//SYSPRINT DD SYSOUT=*                                                  00760000
//SYSOUT   DD SYSOUT=*                                                  00770000
//SYSDBOUT DD SYSOUT=*                                                  00780000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI03T04),DISP=SHR                   00790000
//*                                                                     00800000
//**********************************************************************00810000
//*  PASO    : 04                                                      *00820001
//*  PROGRAMA: ZM4DG027                                                *00830000
//*  OBJETIVO: ACCESA A DATOS DE POSICION Y LOS GRABA EN ARCHIVO       *00840000
//*            SECUENCIAL                                              *00850000
//**********************************************************************00860000
//PGF03P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00870001
//*                                                                     00880000
//ZMG027A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DG027.POSICION,                 00890000
//            DISP=(NEW,CATLG,DELETE),                                  00900000
//            DCB=(LRECL=224,RECFM=FB,BLKSIZE=0,DSORG=PS),              00910000
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00920000
//*                                                                     00930000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00940000
//SYSPRINT DD SYSOUT=*                                                  00950000
//SYSOUT   DD SYSOUT=*                                                  00960000
//SYSDBOUT DD SYSOUT=*                                                  00970000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI03T03),DISP=SHR                   00980000
//*                                                                     00990000
//**********************************************************************01000000
//*  PASO    : 03                                                      *01010001
//*  PROGRAMA: ZM4DG028                                                *01020000
//*  OBJETIVO: ACCESA A DATOS DE SALDOS Y LOS GRABA EN ARCHIVO         *01030000
//*            SECUENCIAL                                              *01040000
//**********************************************************************01050000
//PGF03P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                01060001
//*                                                                     01070000
//ZMG028A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DG028.MOVTOS,                   01080000
//            DISP=(NEW,CATLG,DELETE),                                  01090000
//            DCB=(LRECL=404,RECFM=FB,BLKSIZE=0,DSORG=PS),              01100000
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        01110000
//*                                                                     01120000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01130000
//SYSPRINT DD SYSOUT=*                                                  01140000
//SYSOUT   DD SYSOUT=*                                                  01150000
//SYSDBOUT DD SYSOUT=*                                                  01160000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI03T02),DISP=SHR                   01170000
//*                                                                     01180000
//**********************************************************************01190000
//*  PASO    : 02                                                      *01200001
//*  PROGRAMA: CTMCND                                                  *01210000
//*  OBJETIVO: ADICIONA CONDICION PARA EJECUTAR SIGUIENTE JCL          *01220000
//**********************************************************************01230000
//PGF03P02 EXEC PGM=CTMCND,PARM='ADD COND BCGTCD04_IN_OK WDATE',        01240001
//         COND=(4,LT)                                                  01250000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01260000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01270000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01280000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01290000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01300000
//PRTDBG   DD SYSOUT=*                                                  01310000
//SYSPRINT DD DUMMY                                                     01320000
//SYSUDUMP DD DUMMY                                                     01330000
//DAPRINT  DD SYSOUT=*                                                  01340000
//DACNDIN  DD DDNAME=SYSIN                                              01350000
//**********************************************************************01360001
//*  PASO    : 01                                                      *01370001
//*  PROGRAMA: CTMCND                                                  *01380001
//*  OBJETIVO: ADICIONA CONDICION PARA EJECUTAR SIGUIENTE JCL          *01390001
//**********************************************************************01400001
//PGF03P01 EXEC PGM=CTMCND,PARM='ADD COND BCGTCD05_IN_OK WDATE',        01410002
//         COND=(4,LT)                                                  01420001
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01430001
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01440001
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01450001
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01460001
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01470001
//PRTDBG   DD SYSOUT=*                                                  01480001
//SYSPRINT DD DUMMY                                                     01490001
//SYSUDUMP DD DUMMY                                                     01500001
//DAPRINT  DD SYSOUT=*                                                  01510001
//DACNDIN  DD DDNAME=SYSIN                                              01520001
//********************************************************************* 01530000
//*                           FIN ZMGFPD03                            * 01540000
//********************************************************************* 01550000
