//ZMLLPP25 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<< MERCADO DE DINERO >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMLLPP25                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  CARGAR LA MATRIZ DE INVENTARIOS (OPCION: 934)       *00110000
//*                                                                    *00120000
//*   CORRE ANTES DE  :  CBLLPZ25                                      *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE:  NINGUNO                                       *00150000
//*                                                                    *00160000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00170000
//*                                                                    *00180000
//*--------------------------------------------------------------------*00181000
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *00182000
//* FECHA          :  NOVIEMBRE 2008. CONVERSION DE SUBMITIDORES       *00183000
//*-------------------------------------------------------------------**00184000
//**********************************************************************00190000
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO   00220000
//********************************************************************* 00230000
//PLL25P02  EXEC PGM=ZM3DG001,                                          00240000
//          PARM=('&EMP','&SUC','&INT1','&INT2',)                       00250000
//*                                                                     00281000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE25,                     00282000
//           DISP=(NEW,CATLG,DELETE),                                   00283000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00284000
//           UNIT=3390,                                                 00285000
//           SPACE=(CYL,(2,1),RLSE)                                     00286000
//SYSTSPRT DD SYSOUT=*                                                  00290000
//SYSPRINT DD SYSOUT=*                                                  00300000
//SYSOUT   DD SYSOUT=*                                                  00310000
//SYSDBOUT DD SYSOUT=*                                                  00320000
//SYSABOUT DD DUMMY                                                     00330000
//SYSUDUMP DD DUMMY                                                     00340000
//*                                                                     00341000
//****************************************************************      00342000
//*                SE ADICIONA CONDICION                         *      00343000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00344000
//****************************************************************      00345000
//PLL25P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXMTV_IN_OK WDATE',        00346000
//         COND=(4,LT)                                                  00347000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00348000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00349000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00350000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00360000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00370000
//PRTDBG   DD   SYSOUT=Z                                                00380000
//SYSPRINT DD   DUMMY                                                   00390000
//SYSUDUMP DD   DUMMY                                                   00400000
//DAPRINT  DD   SYSOUT=Z                                                00410000
//DACNDIN  DD   DDNAME=SYSIN                                            00420000
//*                                                                     00430000
