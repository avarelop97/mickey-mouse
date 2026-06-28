//ZMHLPE38  PROC                                                        00010000
//**********************************************************************00020000
//*                     C A S A   D E  B O L S A                       *00030000
//*                     ========================                       *00040000
//*                     <<  C A P I T A L E S >>                       *00050000
//*                                                                    *00060000
//*                                                                    *00070000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES.(HOST TO HOST).      *00080000
//*                                                                    *00090000
//* PROCESO        :  SIVAXE05, INFO DE LA OPERACION DE CTA.PROPIA.    *00100000
//*                                                                    *00110000
//* OBJETIVO       :  GENERAR EXTRACCION DE LA OPERACION DE CTA.       *00120000
//*                   PROPIA.                                          *00130000
//*                                                                    *00140000
//* GRUPO          :  05         CONTRATOS DE POSICION PROPIA.         *00150000
//*                                                                    *00160000
//* DESPUES DE     :  CORRE A PETICION DEL USUARIO, OPC. H55,          *00170000
//*                   ANTES 989.                                       *00180000
//*                                                                    *00190000
//* PERIODICIDAD   :  DIARIO, DE LUNES A VIERNES.                      *00200000
//*                                                                    *00210000
//* ELABORADO POR  :  EQUIPO DE HOST TO HOST.                          *00220000
//*                                                                    *00230000
//**********************************************************************00240000
//*                                                                    *00250000
//**********************************************************************00260000
//*                      LOG DE MODIFICACIONES                         *00270000
//**********************************************************************00280000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00290000
//*--------------------------------------------------------------------*00300000
//* FECHA    :                                                         *00310000
//*                                                                    *00320000
//* MODIFICO :                                                         *00330000
//*                                                                    *00340000
//* OBJETIVO :                                                         *00350000
//*                                                                    *00360000
//**********************************************************************00370000
//*                                                                    *00380000
//*  PASO:  0     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00390000
//*  PHF40P13     GRABA EN UN ARCHIVO SECUENCIAL.                      *00400000
//*                                                         ZM3DH001   *00410000
//**********************************************************************00420000
//PHL38P02 EXEC PGM=ZM3DG001,                                           00430000
//         PARM=('&EMP','&SUC')                                         00440000
//*        PARM=('&EMP','&SUC','&INT1','&INT2',)                        00450000
//*                                                                     00460000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHLPE38,               00470000
//            DISP=(NEW,CATLG,DELETE),                                  00480000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00490000
//            UNIT=3390,                                                00500000
//            SPACE=(CYL,(4,2),RLSE)                                    00510000
//*                                                                     00520000
//SYSTSPRT DD SYSOUT=*                                                  00530000
//SYSPRINT DD SYSOUT=*                                                  00540000
//SYSOUT   DD SYSOUT=*                                                  00550000
//SYSDBOUT DD SYSOUT=*                                                  00560000
//SYSABOUT DD DUMMY                                                     00570000
//SYSUDUMP DD DUMMY                                                     00580000
//*                                                                     00590000
//**********************************************************************00600000
//*                            (ZM4DHH24)                              *00610000
//* PASO     : 1/1                                                     *00620000
//* PHL38P01                                                           *00630000
//* OBJETIVO : GENERA EXTRACCION PARA CONTRATOS DE POSICION PROPIA.    *00640000
//*                                                                    *00650000
//**********************************************************************00660000
//PHL38P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00670000
//*                                                                     00680000
//SYSIN    DD DUMMY                                                     00690000
//SYSTSPRT DD SYSOUT=*                                                  00700000
//SYSPRINT DD SYSOUT=*                                                  00710000
//SYSOUT   DD SYSOUT=*                                                  00720000
//SYSDBOUT DD SYSOUT=*                                                  00730000
//SYSABOUT DD DUMMY                                                     00740000
//SYSUDUMP DD DUMMY                                                     00750000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL38T01),DISP=SHR                   00760000
//*                                                                     00770000
