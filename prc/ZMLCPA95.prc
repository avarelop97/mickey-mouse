//ZMLCPA95 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                     <<  MERCADO DE DINERO >>                       *00060000
//*                                                                    *00070000
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *00080000
//*                                                                    *00090000
//*   PROCEDIM. :  ZMLCPA95  INICIO DE DIA DEL SIVA.                   *00090100
//*                                                                    *00091000
//*   OBJETIVO  :  INICIO DE DIA DE MERCADO DE DINERO.                 *00100000
//*                                                                    *00101000
//*   CORRE DESPUES DE:  SIVAXMTB                                      *00102000
//*                                                                    *00130000
//*   CORRE ANTES DE  :                                                *00140000
//*                                                                    *00150000
//*   PERIODICIDAD    :  DIARIO                                        *00160000
//*                                                                    *00170000
//*   ELABORADO POR   :  J. JAIME FLORES ESTRADA                       *00180000
//*                                                                    *00181000
//*   FECHA:  NOVIEMBRE  2006.                                         *00181100
//*                                                                    *00181200
//**********************************************************************00181300
//*                      LOG DE MODIFICACIONES                         *00181400
//**********************************************************************00183000
//**********************************************************************00220000
//*                                                                    *00230000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00240000
//*               GRABA EN ARCHIVO SECUENCIAL.                         *00290000
//*                                                         ZM3DG001   *00300000
//**********************************************************************00300100
//PLC95P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)      00300201
//*                                                                     00300401
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPA95,               00300501
//            DISP=(NEW,CATLG,DELETE),                                  00300701
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00300801
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00300901
//*                                                                     00301001
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00302001
//SYSPRINT DD SYSOUT=*                                                  00310000
//SYSOUT   DD SYSOUT=*                                                  00320000
//SYSDBOUT DD SYSOUT=*                                                  00330000
//SYSABOUT DD DUMMY                                                     00340000
//SYSUDUMP DD DUMMY                                                     00350000
//*                                                                     00360000
//**********************************************************************00370000
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00380000
//*  PASO:  1     PREPARAR REPORTOS A PLAZO.                           *00380100
//*               ACTUALIZA :REDAUXI                        ZM4DLH54   *00380200
//**********************************************************************00380300
//PLC95P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00380400
//*                                                                     00380500
//ZMLH54A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPA95,DISP=SHR       00380601
//*                                                                     00380801
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00380901
//SYSPRINT DD  SYSOUT=*                                                 00381101
//SYSOUT   DD  SYSOUT=*                                                 00381201
//SYSDBOUT DD  SYSOUT=*                                                 00381301
//SYSABOUT DD  DUMMY                                                    00381401
//SYSUDUMP DD  DUMMY                                                    00381501
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC95T01),DISP=SHR                  00381601
//*                                                                     00381801
//**********************************************************************00381901
//*            F I N      Z M L C P A 9 5                              *00382001
//**********************************************************************00383001
