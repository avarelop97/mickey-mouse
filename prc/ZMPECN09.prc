//ZMPECN09  PROC                                                        00000100
//**********************************************************************00000200
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *00000300
//* OBJETIVO       :  GENERA ARCHIVO MENSUAL DE CLAVES DE OPERACIóN.   *00000400
//* JCL            :  CBHECN09.                                        *00000500
//* CORRE ANTES DE :  SIVAXCN9 (OPCION EN LINEA H51-9).                *00000600
//* REALIZO        :  DAMIAN LUNA PE¦A.                                *00000700
//* FECHA          :  01 - NOVIEMBRE - 2010                            *00000800
//**********************************************************************00000900
//*--------------------------------------------------------------------*00001000
//*                  LOG DE MODIFICACIONES                             *00001100
//*--------------------------------------------------------------------*00001200
//* MARCA   AUTOR   FECHA      DESCRIPCION                             *00001300
//* ------- ------- ---------- ----------------------------------------*00001400
//* SWF@01  XM09412 21-12-2010 SE MODIFICA LA SALIDA DEL PASO PHC09P01 *00001500
//*                            CAMBIANDO LA ETIQUETA ZMH00AR1 POR      *00001600
//*                            ZMFH0103.                               *00001700
//**********************************************************************00001800
//**********************************************************************00001900
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00002000
//**********************************************************************00002100
//PHC09P02 EXEC PGM=ZM3DG001,                                           00002200
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00002300
//PI601765 DD DUMMY                                                     00002400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00002500
//SYSPRINT DD SYSOUT=*                                                  00002600
//SYSOUT   DD SYSOUT=*                                                  00002700
//SYSDBOUT DD SYSOUT=*                                                  00002800
//SYSABOUT DD DUMMY                                                     00002900
//SYSUDUMP DD DUMMY                                                     00003000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMPECNBV,               00003100
//            DISP=(NEW,CATLG,DELETE),                                  00003200
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00003300
//            UNIT=3390,                                                00003400
//            SPACE=(CYL,(1,1),RLSE)                                    00003500
//*                                                                     00003600
//**********************************************************************00003700
//*  PASO: 01  GENERA ARCHIVO MENSUAL DE CLAVES DE OPERACIóN.          *00003800
//*  PROGRAMA: ZM4MH012                                                *00003900
//**********************************************************************00004000
//PHC09P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00004100
//*SWF@01-INI                                                           00004200
//*ZMH00AR1 DD SYSOUT=*                                                 00004300
//ZMFH0103 DD DSN=MXCP.ZM.FIX.CNBV.CVESOPE,                             00004400
//            DISP=(NEW,CATLG,DELETE),                                  00004500
//            SPACE=(CYL,(20,10),RLSE),                                 00004600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00004700
//            UNIT=3390                                                 00004800
//*SWF@01-FIN                                                           00004900
//SYSTSPRT DD SYSOUT=*                                                  00005000
//SYSPRINT DD SYSOUT=*                                                  00005100
//SYSOUT   DD SYSOUT=*                                                  00005200
//SYSDBOUT DD SYSOUT=*                                                  00005300
//SYSABOUT DD SYSOUT=*                                                  00005400
//SYSUDUMP DD DUMMY                                                     00005500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHECNT09),DISP=SHR                   00005600
//*                                                                     00005700
//*********** FIN ******************************************************00005800
