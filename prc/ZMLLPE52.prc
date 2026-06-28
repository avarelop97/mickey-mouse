//ZMLLPE52 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     ZM-ODT1 CARGA DE SPREADS                       *00040000
//*                     ========================                       *00050000
//*                                                                    *00060000
//*   APLICACION:  API. PROCESO DE EJECUCIóN. CARGA DE ARCHIVO DE      *00070000
//*                SPREADS PARA DISTRIBUCIóN                           *00080000
//*                                                                    *00090000
//*   PROCEDIM. :  ZMLLPE52                                            *00100000
//*                                                                    *00110000
//*   OBJETIVO  :  EJECUCION DEL PROGRAMA ZM4EL001 PARA REALIZAR LA    *00120000
//*                CARGA DE SPREADS DE DISTRIBUCION EN LA BASE DE      *00130000
//*                DATOS DESDE EL ARCHIVO DE HOST:                     *00140000
//*                MXCP.ZM.FIX.E&EMP..MDD.SPREADS.PLANO                *00150000
//*                                                                    *00160000
//*   CORRE ANTES DE  :  NINGUNO                                       *00170000
//*                                                                    *00180000
//*   CORRE DESPUES DE:  NINGUNO                                       *00190000
//*                                                                    *00200000
//*   PERIODICIDAD    :  EVENTUAL                                      *00210000
//*                                                                    *00220000
//*   ELABORADO POR: CDA INFORMATICA.                                  *00230000
//*                                                                    *00240000
//*   FECHA:  FEBRERO 2014.                                            *00250000
//*                                                                    *00260000
//**********************************************************************00270000
//*                      LOG DE MODIFICACIONES                         *00280000
//**********************************************************************00290000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00300000
//*--------------------------------------------------------------------*00310000
//*      |          |       |        |                                 *00320000
//**********************************************************************00330000
//**********************************************************************00340000
//*                                                                    *00350000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS Y LOS GRABA EN ARCHIVO*00360000
//*               SECUENCIAL.                                          *00370000
//*                                                         ZM3DG001   *00380000
//**********************************************************************00390000
//PLL52P03 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)      00400000
//*                                                                     00410000
//PI601765  DD DUMMY                                                    00420000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00430000
//SYSPRINT DD SYSOUT=*                                                  00440000
//SYSOUT   DD SYSOUT=*                                                  00450000
//SYSDBOUT DD SYSOUT=*                                                  00460000
//SYSABOUT DD DUMMY                                                     00470000
//SYSUDUMP DD DUMMY                                                     00480000
//*                                                                     00490000
//ZMG001A1 DD DSN=MXCP.ZM.WKF.MDD.E&EMP..S&SUC..ZMLLPE52,               00500000
//            DISP=(NEW,CATLG,DELETE),                                  00510000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00520000
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),                       00530000
//            BUFNO=30                                                  00540000
//*                                                                     00550000
//**********************************************************************00560000
//*                                                                    *00570000
//*  PASO:  2     EJECUTA PROGRAMA QUE REALIZA LA CARGA DE LA TABLA    *00580000
//*               ZMDT102, TOMANDO LOS REGISTROS QUE SE ENCUENTRAN EN  *00590000
//*               EL ARCHIVO DE ENTRADA ZML001A1:                      *00600000
//*               MXCP.ZM.FIX.E&EMP..MDD.SPREADS.PLANO                 *00610000
//*                                                          ZM4EL001  *00620000
//**********************************************************************00630000
//PLL52P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00640000
//*                                                                     00650000
//ZML001A1 DD DSN=MXCP.ZM.FIX.E&EMP..MDD.SPREADS.PLANO,DISP=SHR         00660000
//*                                                                     00670000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00680001
//SYSPRINT DD SYSOUT=*                                                  00690001
//SYSOUT   DD SYSOUT=*                                                  00700001
//SYSDBOUT DD SYSOUT=*                                                  00710001
//SYSABOUT DD DUMMY                                                     00720000
//SYSUDUMP DD DUMMY                                                     00730000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL52T02),DISP=SHR                   00740000
//*                                                                     00750000
//**********************************************************************00760000
//*               F I N      Z M L L P E 5 2                           *00770000
//**********************************************************************00780000
