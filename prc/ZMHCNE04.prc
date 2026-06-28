//ZMHCNE04  PROC                                                        00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                                                                    *00000400
//*                   C A S A   D E  B O L S A                         *00000500
//*                   ========================                         *00000600
//*                   <<  M E R C A D O   D E   C A P I T A L E S  >>  *00000700
//*                                                                    *00000800
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000900
//*                                                                    *00001000
//* PROCESO        :  ZMHCNE04.                                        *00001100
//*                                                                    *00001200
//* OBJETIVO       :  GENERA ARCHIVO DE HECHOS DE MERCADO              *00001300
//*                   DE CAPITALES, PARA LA AUDITORIA DE LA CNBV.      *00001400
//*                                                                    *00001500
//*                                                                    *00001600
//* CORRE                                                              *00001700
//* ANTES DE       :  SE PROCESA CADA FIN DE MES.                      *00001800
//*                                                                    *00001900
//* DESPUES DE     :  AL FINALIZAR EL JOB CBHFND33.                    *00002000
//*                                                                    *00002100
//* PERIODICIDAD   :  MENSUAL.                                         *00002200
//*                                                                    *00002300
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00002400
//*                                                                    *00002500
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN EL FIN DE CADA  *00002600
//*                   MES.                                             *00002700
//**********************************************************************00002800
//*                      LOG DE MODIFICACIONES                         *00002900
//**********************************************************************00003000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00003100
//*--------------------------------------------------------------------*00003200
//*      |          |       |        |                                 *00003300
//**********************************************************************00003400
//*                                                                    *00003500
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00003600
//*  PHC04P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00003700
//*                                                         ZM3DH001   *00003800
//**********************************************************************00003900
//*                     ===   INICIO DE     ===                        *00004000
//*                     ===   CAPITALES     ===                        *00004100
//**********************************************************************00004200
//PHC04P02 EXEC PGM=ZM3DG001,                                           00004300
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004400
//PI601765  DD DUMMY                                                    00004500
//*                                                                     00004600
//ZMG001A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCNE04,                  00004700
//            DISP=(NEW,CATLG,DELETE),                                  00004800
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00004900
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00005000
//*                                                                     00005100
//SYSTSPRT DD SYSOUT=*                                                  00005200
//SYSPRINT DD SYSOUT=*                                                  00005300
//SYSOUT   DD SYSOUT=*                                                  00005400
//SYSDBOUT DD SYSOUT=*                                                  00005500
//SYSABOUT DD DUMMY                                                     00005600
//SYSUDUMP DD DUMMY                                                     00005700
//*                                                                     00005800
//**********************************************************************00005900
//*                       -- ZM4DHE04 --                               *00006000
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO DE HECHOS DE MERCADO        *00006100
//*            DE CAPITALES, PARA LA AUDITORIA DE LA CNBV.             *00006200
//**********************************************************************00006300
//PHC04P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006400
//PI601765  DD DUMMY                                                    00006500
//*                                                                     00006600
//ZM4DHEP4 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCNE04,DISP=SHR          00006700
//*                                                                     00006800
//ZM4DHEA4 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..HECHOS.CNBV,               00006900
//        DISP=(NEW,CATLG,DELETE),                                      00007000
//        DCB=(LRECL=100,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00007100
//        UNIT=3390,                                                    00007200
//        SPACE=(CYL,(4,2),RLSE)                                        00007300
//SYSTSPRT DD SYSOUT=*                                                  00007400
//SYSPRINT DD SYSOUT=*                                                  00007500
//SYSOUT   DD SYSOUT=*                                                  00007600
//SYSDBOUT DD SYSOUT=*                                                  00007700
//SYSABOUT DD DUMMY                                                     00007800
//SYSUDUMP DD DUMMY                                                     00007900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T04),DISP=SHR                   00008000
//*                                                                     00008100
