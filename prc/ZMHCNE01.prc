//ZMHCNE01  PROC                                                        00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                                                                    *00000400
//*                   C A S A   D E  B O L S A                         *00000500
//*                   ========================                         *00000600
//*                   <<  M E R C A D O   D E   C A P I T A L E S  >>  *00000700
//*                                                                    *00000800
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000900
//*                                                                    *00001000
//* PROCESO        :  ZMHCNE01.                                        *00001100
//*                                                                    *00001200
//* OBJETIVO       :  GENERA ARCHIVO DE MOVIMIENTOS DE MERCADO         *00001300
//*                   DE CAPITALES, PARA LA AUDITORIA DE LA CNBV.      *00001400
//*                                                                    *00001500
//* CORRE                                                              *00001600
//* ANTES DE       :  SE PROCESA CADA FIN DE MES.                      *00001700
//*                                                                    *00001800
//* DESPUES DE     :  AL FINALIZAR EL JOB CBHFND33.                    *00001900
//*                                                                    *00002000
//* PERIODICIDAD   :  MENSUAL.                                         *00002100
//*                                                                    *00002200
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00002300
//*                                                                    *00002400
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN EL FIN DE CADA  *00002500
//*                   MES.                                             *00002600
//**********************************************************************00002700
//*                      LOG DE MODIFICACIONES                         *00002800
//**********************************************************************00002900
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00003000
//*--------------------------------------------------------------------*00003100
//*      |          |       |        |                                 *00003200
//**********************************************************************00003300
//*                                                                    *00003400
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00003500
//*  PHC01P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00003600
//*                                                         ZM3DH001   *00003700
//**********************************************************************00003800
//*                     ===   INICIO DE     ===                        *00003900
//*                     ===   CAPITALES     ===                        *00004000
//**********************************************************************00004100
//PHC01P02 EXEC PGM=ZM3DG001,                                           00004200
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004300
//PI601765  DD DUMMY                                                    00004400
//*                                                                     00004500
//ZMG001A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCNE01,                  00004600
//            DISP=(NEW,CATLG,DELETE),                                  00004700
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00004800
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00004900
//*                                                                     00005000
//SYSTSPRT DD SYSOUT=*                                                  00005100
//SYSPRINT DD SYSOUT=*                                                  00005200
//SYSOUT   DD SYSOUT=*                                                  00005300
//SYSDBOUT DD SYSOUT=*                                                  00005400
//SYSABOUT DD DUMMY                                                     00005500
//SYSUDUMP DD DUMMY                                                     00005600
//*                                                                     00005700
//**********************************************************************00005800
//*                       -- ZM4DHE01 --                               *00005900
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO DE MOVIMIENTOS DE MERCADO   *00006000
//*            DE CAPITALES, PARA LA AUDITORIA DE LA CNBV.             *00006100
//**********************************************************************00006200
//PHC01P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006300
//PI601765  DD DUMMY                                                    00006400
//*                                                                     00006500
//ZM4DHEP1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCNE01,DISP=SHR          00006600
//*                                                                     00006700
//ZM4DHEA1 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..MOVTOS.CNBV,               00006800
//        DISP=(NEW,CATLG,DELETE),                                      00006900
//        DCB=(LRECL=132,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00007000
//        UNIT=3390,                                                    00007100
//        SPACE=(CYL,(4,2),RLSE)                                        00007200
//SYSTSPRT DD SYSOUT=*                                                  00007300
//SYSPRINT DD SYSOUT=*                                                  00007400
//SYSOUT   DD SYSOUT=*                                                  00007500
//SYSDBOUT DD SYSOUT=*                                                  00007600
//SYSABOUT DD DUMMY                                                     00007700
//SYSUDUMP DD DUMMY                                                     00007800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T01),DISP=SHR                   00007900
//*                                                                     00008000
