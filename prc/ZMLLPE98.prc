//ZMLLPE98 PROC                                                         00010007
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00050000
//*                                                                    *00060000
//* PROCESO        :  SIVAXRDC                                         *00070007
//*                   DISPARADOR DE REDENCION                          *00080003
//*                                                                    *00100000
//* OBJETIVO       :  DAR DE ALTA CONDICION (1/4) PARA EJECUTAR EL     *00110000
//*                   PROCESO DEL CIERRE DE MDO DINERO POR CTRL-M.     *00120000
//*                                                                    *00130000
//* CORRE                                                              *00140000
//* ANTES DE       :  CIERRE DE MERCADO DE DINERO                      *00150000
//*                                                                    *00160000
//* DESPUES DE     :  PETICION DEL USUARIO                             *00170000
//*                                                                    *00180000
//* REALIZO        :  J. JAIME FLORES ESTRADA                          *00190000
//* FECHA          :  NOVIEMBRE 2006.                                  *00200000
//*                                                                    *00210000
//**********************************************************************00220000
//*                                                                     00230000
//********************************************************************* 00231000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO     00232000
//********************************************************************* 00233000
//*                                                                     00234000
//PLL98P02 EXEC PGM=ZM3DG001,                                           00235007
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00236000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00238000
//SYSPRINT DD SYSOUT=X                                                  00239000
//SYSOUT   DD SYSOUT=X                                                  00239100
//SYSDBOUT DD SYSOUT=X                                                  00239200
//SYSABOUT DD DUMMY                                                     00239300
//SYSUDUMP DD DUMMY                                                     00239400
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE98,               00239507
//           DISP=(NEW,CATLG,DELETE),                                   00239600
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00239700
//           UNIT=3390,                                                 00239800
//           SPACE=(CYL,(2,1),RLSE)                                     00239900
//*                                                                     00240000
//**********************************************************************00241000
//*                         -- CTMCND --                               *00250000
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CBLCCD98_IN" PARA QUE SE  *00260007
//*           EJECUTE LA REDENCION MDO DE DINERO CBLCCD98              *00270007
//*                                                                    *00280000
//* PASO REINICIABLE POR RESTART                                       *00290000
//**********************************************************************00300000
//PLL98P01 EXEC PGM=CTMCND,                                             00310007
//         PARM='ADD COND CBLCCD98_IN_PR_OK WDATE',COND=(4,LT)          00311007
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00320000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00331000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00340000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00350000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00360000
//PRTDBG   DD SYSOUT=*                                                  00370000
//SYSPRINT DD DUMMY                                                     00380000
//SYSUDUMP DD DUMMY                                                     00390000
//DAPRINT  DD SYSOUT=*                                                  00400000
//DACNDIN  DD DDNAME=SYSIN                                              00410000
//*                                                                     00420000
