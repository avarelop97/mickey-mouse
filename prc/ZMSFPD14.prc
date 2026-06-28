//ZMSFPD14 PROC                                                         00010800
//*                                                                     00020000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                       <<  RENDIMIENTOS  >>                         *
//*                                                                    *
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *
//*                                                                    *
//*   PROCEDIM. :  ZMSFPD14.- ENVIADO POR PROGRAMA LINEA               *
//*                                                                    *
//*   OBJETIVO  :  ADICIONAR LA CONDICION PARA QUE PUEDA SER ENVIADO   *
//*                A EJECUCION EL PROCESO BCSFCD13.- QUE GENERA LOS    *
//*                ARCHIVOS QUE CALCULAN LOS RENDIMIENTOS.             *
//*                                                                    *
//*   CORRE     :  SIVAXSPR                                            *
//*                                                                    *
//*   CORRE ANTES DE  :  BCSFCD13                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   ELABORADO POR   :  MARTIN SANTOS GONZALEZ                        *
//*                                                                    *
//*   FECHA           :  JUNIO 2008.                                   *
//*                                                                    *
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*               GRABA EN ARCHIVO SECUENCIAL.                         *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PSF14P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZMSFPD14,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************00410000
//*                         -- CTMCND --                               *00420000
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "BCSFCD13_IN" PARA QUE SE  *00430000
//*           EJECUTEN EL PROCESO QUE GENERA ARCHIVOS DE RENDIMIENTOS. *00440000
//*                                                                    *00450000
//* PASO REINICIABLE POR RESTART                                       *00460000
//**********************************************************************00470000
//PSF14P01 EXEC PGM=CTMCND,                                             00480000
//         PARM='ADD COND BCSFCD13_IN_PR_OK WDATE',COND=(4,LT)          00490000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00500000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00510000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00520000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00530000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00540000
//PRTDBG   DD SYSOUT=*                                                  00550000
//SYSPRINT DD DUMMY                                                     00560000
//SYSUDUMP DD DUMMY                                                     00570000
//DAPRINT  DD SYSOUT=*                                                  00580000
//DACNDIN  DD DDNAME=SYSIN                                              00590000
//*                                                                     00600000
