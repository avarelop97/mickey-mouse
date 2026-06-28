//ZMHLPE57  PROC                                                        00000100
//**********************************************************************00000200
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000300
//* OBJETIVO       :  EJECUTA PROGRAMA ZM4DGF60 PARA CORRECCION DE     *00000400
//*                   TABLAS OPERABA Y CARTERA                         *00000500
//*                   DISPARADO DESDE LA OPCION 6 DE VECTOR DE PRECIOS *00000600
//* JCL            :  SIVAXVEA (OPCION EN LINEA 951-6)                 *00000700
//* CORRE ANTES DE :  NINGUNO                                          *00000800
//* REALIZO        :  ALBERTO ADUNA G. (GETRONICS)                     *00000900
//* FECHA          :  20 - NOVIEMBRE- 2007                             *00001000
//**********************************************************************00001100
//*                                                                     00001200
//**********************************************************************00001300
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00001400
//**********************************************************************00001500
//PHL57P03 EXEC PGM=ZM3DG001,                                           00001600
//         PARM=('&EMP','&SUC','&INT1','&INT2')                         00001700
//PI601765 DD DUMMY                                                     00001800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00001900
//SYSPRINT DD SYSOUT=*                                                  00002000
//SYSOUT   DD SYSOUT=*                                                  00002100
//SYSDBOUT DD SYSOUT=*                                                  00002200
//SYSABOUT DD DUMMY                                                     00002300
//SYSUDUMP DD DUMMY                                                     00002400
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE57,               00002500
//            DISP=(NEW,CATLG,DELETE),                                  00002600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00002700
//            UNIT=3390,                                                00002800
//            SPACE=(CYL,(1,1),RLSE)                                    00002900
//*                                                                     00003000
//**********************************************************************00003100
//*PHL57P02 : EJECUTA PROGRAMA ZM4DGF60                                *00003200
//**********************************************************************00003300
//PHL57P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00003400
//S1DLINC0 DD SYSOUT=*                                                  00003500
//SYSOUT   DD SYSOUT=*                                                  00003600
//SYSPRINT DD SYSOUT=*                                                  00003700
//SYSABOUT DD SYSOUT=*                                                  00003800
//SYSDBOUT DD SYSOUT=*                                                  00003900
//SYSTSPRT DD SYSOUT=*                                                  00004000
//QRLSDB2  DD SYSOUT=*                                                  00004100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC57ET1),DISP=SHR                   00004200
//*                                                                     00004300
//**********************************************************************00004400
