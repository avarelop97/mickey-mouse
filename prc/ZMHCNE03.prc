//ZMHCNE03  PROC                                                        00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                                                                    *00000400
//*                   C A S A   D E  B O L S A                         *00000500
//*                   ========================                         *00000600
//*                   <<  M E R C A D O   D E   C A P I T A L E S  >>  *00000700
//*                                                                    *00000800
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000900
//*                                                                    *00001000
//* PROCESO        :  ZMHCNE03.                                        *00001100
//*                                                                    *00001200
//* OBJETIVO       :  GENERA ARCHIVO DE ASIGNACIONES DE MERCADO        *00001300
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
//*  PHC03P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00003600
//*                                                         ZM3DH001   *00003700
//**********************************************************************00003800
//* USUARIO :  SOFTWARE FACTORY MEXICO  ACCENTURE  (XM09016)          * 00003900
//*  PASO:        CAMBIO:                                              *00004000
//*  PHC03P01     MODIFICACION DE LONGITUD DE ARCHIVOS DE 157 A 170    *00004100
//**********************************************************************00004400
//*                     ===   INICIO DE     ===                        *00004500
//*                     ===   CAPITALES     ===                        *00004600
//**********************************************************************00004700
//PHC03P02 EXEC PGM=ZM3DG001,                                           00004800
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004900
//PI601765  DD DUMMY                                                    00005000
//*                                                                     00005100
//ZMG001A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCNE03,                  00005200
//            DISP=(NEW,CATLG,DELETE),                                  00005300
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00005400
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00005500
//*                                                                     00005600
//SYSTSPRT DD SYSOUT=*                                                  00005700
//SYSPRINT DD SYSOUT=*                                                  00005800
//SYSOUT   DD SYSOUT=*                                                  00005900
//SYSDBOUT DD SYSOUT=*                                                  00006000
//SYSABOUT DD DUMMY                                                     00006100
//SYSUDUMP DD DUMMY                                                     00006200
//*                                                                     00006300
//**********************************************************************00006400
//*                       -- ZM4DHE03 --                               *00006500
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO DE ASIGNACIONES DE MERCADO  *00006600
//*            DE CAPITALES, PARA LA AUDITORIA DE LA CNBV.             *00006700
//**********************************************************************00006800
//PHC03P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006900
//PI601765  DD DUMMY                                                    00007000
//*                                                                     00007100
//ZM4DHEP3 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCNE03,DISP=SHR          00007200
//*                                                                     00007300
//ZM4DHEA3 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..ASIGNA.CNBV,               00007400
//        DISP=(NEW,CATLG,DELETE),                                      00007500
//        DCB=(LRECL=170,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00007600
//        UNIT=3390,                                                    00007700
//        SPACE=(CYL,(4,2),RLSE)                                        00007800
//SYSTSPRT DD SYSOUT=*                                                  00007900
//SYSPRINT DD SYSOUT=*                                                  00008000
//SYSOUT   DD SYSOUT=*                                                  00008100
//SYSDBOUT DD SYSOUT=*                                                  00008200
//SYSABOUT DD DUMMY                                                     00008300
//SYSUDUMP DD DUMMY                                                     00008400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T03),DISP=SHR                   00008500
//*                                                                     00009000
