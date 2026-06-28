//ZMPECN12  PROC                                                        00010000
//**********************************************************************00020000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *00030000
//* OBJETIVO       :  GENERACIóN DE INFORMACIóN COMPLEMENTARIA PARA GL.*00040000
//* JCL            :  CBHECN12.                                        *00070000
//* CORRE ANTES DE :  SIVAXC12 (OPCION EN LINEA H51-12).               *00080000
//* REALIZO        :  DAMIAN LUNA PE¦A.                                *00090000
//* FECHA          :  01 - NOVIEMBRE - 2010                            *00100000
//**********************************************************************00110000
//*--------------------------------------------------------------------*00120000
//*                  LOG DE MODIFICACIONES                             *00121000
//*--------------------------------------------------------------------*00122000
//* MARCA   AUTOR   FECHA      DESCRIPCION                             *00123000
//* ------- ------- ---------- ----------------------------------------*00124000
//* SWF@01  XM09412 21-12-2010 SE MODIFICA LA SALIDA DEL PASO PHC12P01 *00125000
//*                            CAMBIANDO LA ETIQUETA ZMH00AR1 POR      *00126000
//*                            ZMFH0201.                               *00127000
//**********************************************************************00130000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00140000
//**********************************************************************00150000
//PHC12P02 EXEC PGM=ZM3DG001,                                           00160000
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
//*  PASO: 01  GENERACIóN DE INFORMACIóN COMPLEMENTARIA PARA GL.       *00630000
//*  PROGRAMA: ZM4MH015                                                *00640000
//**********************************************************************00650000
//PHC12P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00660000
//*SWF@01-INI                                                           00670000
//*ZMH00AR1 DD SYSOUT=*                                                 00671000
//ZMFH0201 DD DSN=MXCP.ZM.FIX.CNBV.COMISION,                            00672000
//            DISP=(NEW,CATLG,DELETE),                                  00673000
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=096,BLKSIZE=0),              00675000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=106,BLKSIZE=0),              00675100
//            UNIT=3390,                                                00676000
//            SPACE=(CYL,(4,2),RLSE)                                    00676100
//*SWF@01-FIN                                                           00677000
//SYSTSPRT DD SYSOUT=*                                                  00680000
//SYSPRINT DD SYSOUT=*                                                  00690000
//SYSOUT   DD SYSOUT=*                                                  00700000
//SYSDBOUT DD SYSOUT=*                                                  00710000
//SYSABOUT DD SYSOUT=*                                                  00720000
//SYSUDUMP DD DUMMY                                                     00730000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHECNT12),DISP=SHR                   00740000
//*                                                                     00750000
//*********** FIN ******************************************************00760000
