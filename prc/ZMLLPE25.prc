//ZMLLPE25 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<< MERCADO DE DINERO >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMLLPE25                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  CARGAR LA MATRIZ DE INVENTARIOS (OPCION: 934)       *00110000
//*                                                                    *00120000
//*   CORRE ANTES DE  :  NINGUNO                                       *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE:  NINGUNO                                       *00150000
//*                                                                    *00160000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00170000
//*                                                                    *00180000
//**********************************************************************00190000
//*                                                                    *00200000
//********************************************************************* 00210000
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO   00220000
//********************************************************************* 00230000
//PLL25P04  EXEC PGM=ZM3DG001,REGION=0M,                                00240000
//          PARM=('&EMP','&SUC','&INT1','&INT2',)                       00250000
//PI601765 DD DUMMY                                                     00280000
//*                                                                     00281000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE25,               00282000
//           DISP=(NEW,CATLG,DELETE),                                   00283000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00284000
//           UNIT=3390,                                                 00285000
//           SPACE=(CYL,(2,1),RLSE)                                     00286000
//*                                                                     00287000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00290000
//SYSPRINT DD SYSOUT=*                                                  00300000
//SYSOUT   DD SYSOUT=*                                                  00310000
//SYSDBOUT DD SYSOUT=*                                                  00320000
//SYSABOUT DD DUMMY                                                     00330000
//SYSUDUMP DD DUMMY                                                     00340000
//*                                                                     00341000
//*                                                                     00391000
//**********************************************************************00400000
//*                   -- ZM4DLE11 --                                    00410000
//*  FUNCION:  ACTUALIZA EL INICIO DEL PROCESO DE MATRIZ DEL INVENTARIO 00420000
//*            (ACT EN "I" EL EVENTO PD2).                              00430000
//*                                                                     00440000
//**********************************************************************00450000
//PLL25P03 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00470000
//*                                                                     00480000
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE25,DISP=SHR       00481003
//*                                                                     00482000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00490000
//SYSPRINT DD  SYSOUT=*                                                 00500000
//SYSOUT   DD  SYSOUT=*                                                 00510000
//SYSDBOUT DD  SYSOUT=*                                                 00520000
//SYSABOUT DD  DUMMY                                                    00530000
//SYSUDUMP DD  DUMMY                                                    00540000
//*                                                                     00541000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL25T03),DISP=SHR                  00560002
//*                                                                     00570000
//**********************************************************************00580000
//*                  --- ZM4DLD30 ---                                   00590000
//* OBJETIVO : ACTUALIZA LAS EMISORAS DE LA TABLA MDDCART               00600000
//*            A LA TABLA MTZINV                                        00610000
//**********************************************************************00620000
//PLL25P02 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00640000
//*                                                                     00650000
//ZMLD30P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE25,DISP=SHR       00651000
//*                                                                     00652000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00660000
//SYSPRINT DD  SYSOUT=*                                                 00670000
//SYSOUT   DD  SYSOUT=*                                                 00680000
//SYSDBOUT DD  SYSOUT=*                                                 00690000
//SYSABOUT DD  DUMMY                                                    00700000
//SYSUDUMP DD  DUMMY                                                    00710000
//*                                                                     00711000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL25T02),DISP=SHR                  00730000
//*                                                                     00740000
//**********************************************************************00750000
//*                   -- ZM4DLE11 --                                    00760000
//*  FUNCION:  ACTUALIZA LA FINALIZACION DEL PROCESO DE LA MATRIZ       00770000
//*            DEL INVENTARIO  (ACT EN "F" EL EVENTO PD2).              00780000
//*                                                                     00790000
//**********************************************************************00800000
//PLL25P01 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00820000
//*                                                                     00830000
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE25,DISP=SHR       00831001
//*                                                                     00832000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00840000
//SYSPRINT DD  SYSOUT=*                                                 00850000
//SYSOUT   DD  SYSOUT=*                                                 00860000
//SYSDBOUT DD  SYSOUT=*                                                 00870000
//SYSABOUT DD  DUMMY                                                    00880000
//SYSUDUMP DD  DUMMY                                                    00890000
//*                                                                     00891000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL25T01),DISP=SHR                  00910002
//*                                                                     00920000
