//ZMHCNE05  PROC                                                        00010002
//**********************************************************************00020000
//*                                                                    *00030000
//*                   C A S A   D E  B O L S A                         *00031000
//*                   ========================                         *00032000
//*                   <<  M E R C A D O   D E   C A P I T A L E S  >>  *00033000
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130000
//*                                                                    *00140000
//* PROCESO        :  ZMHCNE05.                                        *00150001
//*                                                                    *00170000
//* OBJETIVO       :  GENERA ARCHIVO DE TENENCIA ACCIONARIA PARA LA BMV*00180003
//*                                                                    *00200000
//* CORRE                                                              *00210000
//* ANTES DE       :  ES EVENTUAL Y SE PROCESA DE ACUERDO A LA FECHA   *00220000
//*                   QUE SE SOLICITE.                                 *00230000
//*                                                                    *00231000
//* DESPUES DE     :  EN CUALQUIER MOMENTO.                            *00240000
//*                                                                    *00250000
//* PERIODICIDAD   :  EVENTUAL.                                        *00260000
//*                                                                    *00270000
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00280000
//*                                                                    *00290000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA EVENTUAL. *00320000
//*                                                                    *00340000
//**********************************************************************00481000
//*                      LOG DE MODIFICACIONES                         *00482000
//**********************************************************************00483000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00484000
//*--------------------------------------------------------------------*00485000
//*      |          |       |        |                                 *00486000
//**********************************************************************00487000
//*                                                                    *00488000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00489000
//*  PHC05P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00489103
//*                                                         ZM3DH001   *00489200
//**********************************************************************00489300
//*                     ===   INICIO DE     ===                        *00489400
//*                     ===   CAPITALES     ===                        *00489500
//**********************************************************************00489600
//PHC05P02 EXEC PGM=ZM3DG001,                                           00489703
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00489800
//PF601765  DD DUMMY                                                    00489900
//*                                                                     00490000
//ZMG001A1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCNE05,                  00491007
//            DISP=(NEW,CATLG,DELETE),                                  00492000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00493000
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00494008
//*                                                                     00496000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00497008
//SYSPRINT DD SYSOUT=*                                                  00498008
//SYSOUT   DD SYSOUT=*                                                  00499008
//SYSDBOUT DD SYSOUT=*                                                  00499108
//SYSABOUT DD DUMMY                                                     00499200
//SYSUDUMP DD DUMMY                                                     00499300
//*                                                                     00499400
//**********************************************************************00499500
//*                       -- ZM4DHE05 --                               *00499602
//* OBJETIVO : GENERA ARCHIVO DE TENENCIA ACCIONARIA PARA LA BMV.      *00499704
//*                                                                    *00499804
//**********************************************************************00499900
//PHC05P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00500004
//PF601765  DD DUMMY                                                    00500100
//*                                                                     00500200
//ZM4DHEP1 DD DSN=SIVA.MDC.WKF.E&EMP..S&SUC..ZMHCNE05,DISP=SHR          00500307
//*                                                                     00500400
//ZM4DHEA1 DD DSN=SIVA.MDC.FIX.PARAMS1,DISP=SHR                         00500507
//*                                                                     00500605
//ZM4DHEA2 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..PARAMS.SALIDA.ZM,          00500707
//        DISP=(NEW,CATLG,DELETE),                                      00500805
//        DCB=(LRECL=076,BLKSIZE=0,RECFM=FB),                           00500905
//        UNIT=3390,                                                    00501005
//        SPACE=(CYL,(5,1),RLSE)                                        00501105
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00501208
//SYSPRINT DD SYSOUT=*                                                  00501308
//SYSOUT   DD SYSOUT=*                                                  00501408
//SYSDBOUT DD SYSOUT=*                                                  00501508
//SYSABOUT DD DUMMY                                                     00501605
//SYSUDUMP DD DUMMY                                                     00501705
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC01T05),DISP=SHR                   00501808
//*                                                                     00502700
