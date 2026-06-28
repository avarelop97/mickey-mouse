//ZMPECN10  PROC                                                        00010000
//**********************************************************************00020000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *00030000
//* OBJETIVO       :  GENERA ARCHIVO MENSUAL DE VALORES EN PRESTAMO.   *00040000
//* JCL            :  CBHECN10.                                        *00070000
//* CORRE ANTES DE :  SIVAXC10 (OPCION EN LINEA H51-10).               *00080000
//* REALIZO        :  DAMIAN LUNA PE¦A.                                *00090000
//* FECHA          :  01 - NOVIEMBRE - 2010                            *00100000
//**********************************************************************00110000
//*--------------------------------------------------------------------*00120000
//*                  LOG DE MODIFICACIONES                             *00121000
//*--------------------------------------------------------------------*00122000
//* MARCA   AUTOR   FECHA      DESCRIPCION                             *00123000
//* ------- ------- ---------- ----------------------------------------*00124000
//* SWF@01  XM09412 21-12-2010 SE MODIFICA LA SALIDA DEL PASO PHC10P01 *00125000
//*                            CAMBIANDO LA ETIQUETA ZMH00AR1 POR      *00126000
//*                            ZMFH0102.                               *00127000
//**********************************************************************00128000
//**********************************************************************00130000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00140000
//**********************************************************************00150000
//PHC10P02 EXEC PGM=ZM3DG001,                                           00160000
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
//*  PASO: 01  GENERA ARCHIVO MENSUAL DE VALORES EN PRESTAMO.          *00630000
//*  PROGRAMA: ZM4MH013                                                *00640000
//**********************************************************************00650000
//PHC10P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00660000
//*SWF@01-INI                                                           00670000
//*ZMH00AR1 DD SYSOUT=*                                                 00671000
//ZMFH0102 DD DSN=MXCP.ZM.FIX.CNBV.PRESVA1,                             00672000
//            DISP=(NEW,CATLG,DELETE),                                  00673000
//            SPACE=(CYL,(20,10),RLSE),                                 00674000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00675000
//            UNIT=3390                                                 00676000
//*SWF@01-FIN                                                           00677000
//SYSTSPRT DD SYSOUT=*                                                  00680000
//SYSPRINT DD SYSOUT=*                                                  00690000
//SYSOUT   DD SYSOUT=*                                                  00700000
//SYSDBOUT DD SYSOUT=*                                                  00710000
//SYSABOUT DD SYSOUT=*                                                  00720000
//SYSUDUMP DD DUMMY                                                     00730000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHECNT10),DISP=SHR                   00740000
//*                                                                     00750000
//**********************************************************************00750100
//* PASO        : PHC10P00                                             *00750200
//* PROGRAMA    : ICEMAN                                               *00750300
//* DESCRIPCION : REALIZA SORT PARA ARCHIVO DE PRESTAMOS,              *00750400
//*               MXCP.ZM.FIX.CNBV.PRESVAL.A&FECHA                     *00750500
//**********************************************************************00750600
//*-------------------------------------------------------------------- 00750700
//* FUNCION:  REALIZA SORT PARA ARCHIVO DE PRESTAMOS                    00750800
//*-------------------------------------------------------------------- 00750900
//PHC10P00 EXEC PGM=ICEMAN,COND=(0,GT)                                  00751000
//*                                                                     00751100
//SORTIN   DD DSN=MXCP.ZM.FIX.CNBV.PRESVA1,DISP=SHR                     00751200
//*                                                                     00751300
//SORTOUT  DD DSN=MXCP.ZM.FIX.CNBV.PRESVAL,                             00751400
//            DISP=(NEW,CATLG,DELETE),                                  00751500
//            SPACE=(CYL,(20,10),RLSE),                                 00751600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),              00751700
//            UNIT=3390                                                 00751800
//*                                                                     00751900
//SYSOUT   DD  SYSOUT=*                                                 00752000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T00),DISP=SHR                  00752100
//*                                                                     00752200
//*********** FIN ******************************************************00760000
