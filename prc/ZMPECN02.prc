//ZMPECN02  PROC                                                        00010000
//**********************************************************************00020000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *00030000
//* OBJETIVO       :  GENERA ARCHIVO MENSUAL DE MOVIMIENTOS DE         *00040000
//*                   SOCIEDADES DE INVERSION.                         *00050000
//* JCL            :  CBHECN02.                                        *00070000
//* CORRE ANTES DE :  SIVAXCN2 (OPCION EN LINEA H51-2).                *00080000
//* REALIZO        :  DAMIAN LUNA PE¦A.                                *00090000
//* FECHA          :  01 - NOVIEMBRE - 2010                            *00100000
//**********************************************************************00110000
//*--------------------------------------------------------------------*00121000
//*                  LOG DE MODIFICACIONES                             *00122000
//*--------------------------------------------------------------------*00123000
//* MARCA   AUTOR   FECHA      DESCRIPCION                             *00124000
//* ------- ------- ---------- ----------------------------------------*00125000
//* SWF@01  XM09412 21-12-2010 SE MODIFICA LA SALIDA DEL PASO PHC02P01 *00126000
//*                            CAMBIANDO LA ETIQUETA ZMH00AR1 POR      *00127000
//*                            ZMFH0110.                               *00128000
//**********************************************************************00130000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00140000
//**********************************************************************00150000
//PHC02P02 EXEC PGM=ZM3DG001,                                           00160000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00170000
//PI601765 DD DUMMY                                                     00180000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00190000
//SYSPRINT DD SYSOUT=*                                                  00200000
//SYSOUT   DD SYSOUT=*                                                  00210000
//SYSDBOUT DD SYSOUT=*                                                  00220000
//SYSABOUT DD DUMMY                                                     00230000
//SYSUDUMP DD DUMMY                                                     00240000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMPECNBV,               00250000
//            DISP=(NEW,CATLG,DELETE),                                  00260000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00270000
//            UNIT=3390,                                                00280000
//            SPACE=(CYL,(1,1),RLSE)                                    00290000
//*                                                                     00300000
//**********************************************************************00620000
//*  PASO: 01  GENERA ARCHIVO MENSUAL DE MOVIMIENTOS DE SOCIEDADES DE  *00630000
//*            INVERSION.                                              *00640000
//*  PROGRAMA: ZM4MH005                                                *00641000
//**********************************************************************00650000
//PHC02P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00660000
//*SWF@01-INI                                                           00661000
//*ZMH00AR1 DD SYSOUT=*                                                 00662000
//ZMFH0110 DD DSN=MXCP.ZM.FIX.CNBV.SOCINV,                              00663000
//            DISP=(NEW,CATLG,DELETE),                                  00664000
//            SPACE=(CYL,(20,10),RLSE),                                 00665000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=165,BLKSIZE=0),              00666000
//            UNIT=3390                                                 00667000
//*SWF@01-FIN                                                           00668000
//SYSTSPRT DD SYSOUT=*                                                  00680000
//SYSPRINT DD SYSOUT=*                                                  00690000
//SYSOUT   DD SYSOUT=*                                                  00700000
//SYSDBOUT DD SYSOUT=*                                                  00710000
//SYSABOUT DD SYSOUT=*                                                  00720000
//SYSUDUMP DD DUMMY                                                     00730000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHECNT02),DISP=SHR                   00740000
//*                                                                     00750000
//*********** FIN ******************************************************00760000
