//ZMLCPA97 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                     C A S A   D E  B O L S A                       *00000400
//*                     ========================                       *00000500
//*                     <<  MERCADO DE DINERO >>                       *00000600
//*                                                                    *00000700
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *00000800
//*                                                                    *00000900
//*   PROCEDIM. :  BCLCCD97  INICIO DE DIA DEL SIVA.                   *00001000
//*                                                                    *00001100
//*   OBJETIVO  :  REPORTES DE REDENCIONES.                            *00001200
//*                                                                    *00001300
//*   CORRE DESPUES DE:                                                *00001400
//*                                                                    *00001500
//*   CORRE ANTES DE  :                                                *00001600
//*                                                                    *00001700
//*   PERIODICIDAD    :  DIARIO                                        *00001800
//*                                                                    *00001900
//*   ELABORADO POR   :  LALO VILLAFUERTE                              *00002000
//*                                                                    *00002100
//*   FECHA:  NOVIEMBRE  2007.                                         *00002200
//*                                                                    *00002300
//**********************************************************************00002400
//**********************************************************************00002700
//*                                                                    *00002800
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00002900
//*               GRABA EN ARCHIVO SECUENCIAL.                         *00003000
//*                                                         ZM3DG001   *00003100
//**********************************************************************00003200
//PLC96P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)      00003300
//*                                                                     00003400
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPA97,               00003500
//            DISP=(NEW,CATLG,DELETE),                                  00003600
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00003700
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00003800
//*                                                                     00003900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00004000
//SYSPRINT DD SYSOUT=*                                                  00004100
//SYSOUT   DD SYSOUT=*                                                  00004200
//SYSDBOUT DD SYSOUT=*                                                  00004300
//SYSABOUT DD DUMMY                                                     00004400
//SYSUDUMP DD DUMMY                                                     00004500
//*                                                                     00004600
//**********************************************************************00004700
//*                <<<   PASO REINICIABLE POR RESTART  >>>             *00004800
//*  PASO:  1     PREPARAR REPORTOS A PLAZO.                           *00004900
//*               ACTUALIZA :REDAUXI                        ZM4DLH58   *00005000
//**********************************************************************00005100
//PLC97P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00005200
//*                                                                     00005300
//ZMLH58A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPA97,DISP=SHR       00005400
//*                                                                     00005500
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00005700
//SYSPRINT DD  SYSOUT=*                                                 00005800
//SYSOUT   DD  SYSOUT=*                                                 00005900
//SYSDBOUT DD  SYSOUT=*                                                 00006000
//SYSABOUT DD  DUMMY                                                    00006100
//SYSUDUMP DD  DUMMY                                                    00006200
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC97A01),DISP=SHR                  00006300
//*                                                                     00006400
//**********************************************************************00006500
//*            F I N      Z M L C P A 9 7                              *00006600
//**********************************************************************00006700
