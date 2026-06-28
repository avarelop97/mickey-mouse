//ZMHLPE13 PROC                                                         00001100
//*--------------------------------------------------------------------*00001200
//*                                                                    *00002000
//*                     C A S A   D E   B O L S A                      *00002100
//*                     =========================                      *00002200
//*                     <<  MERCADO DE VALORES >>                      *00002300
//*                                                                    *00002400
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00002500
//*                                                                    *00003100
//*   PROCEDIMIENTO    : ZMHLPE13                                      *00003200
//*                                                                    *00003600
//*   OBJETIVO         : CREACION DE REGISTRO DE SUSCRIPTORES POR      *00003700
//*                      CORTE DE CUPON ( OPCION 779 )                 *00003800
//*                                                                    *00003900
//*   CORRE ANTES DE   : NINGUNO                                       *00004000
//*                                                                    *00004100
//*   CORRE DESPUES DE : NINGUNO                                       *00004200
//*                                                                    *00004300
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00004400
//*                                                                    *00004500
//*   FECHA            : DICIEMBRE  10, 2002                           *00004600
//*                                                                    *00004700
//*   AUTOR            : GETRONICS - MEXICO                            *00004800
//*                                                                    *00004900
//*--------------------------------------------------------------------*00005000
//*--------------------------------------------------------------------*00005100
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00005300
//*--------------------------------------------------------------------*00005400
//PJH13P03 EXEC PGM=ZM3DG001,REGION=0M,                                 00005500
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00005600
//*                                                                     00005702
//PI601765 DD DUMMY                                                     00005800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00005900
//SYSPRINT DD SYSOUT=*                                                  00006000
//SYSOUT   DD SYSOUT=*                                                  00006100
//SYSDBOUT DD SYSOUT=*                                                  00006200
//SYSABOUT DD DUMMY                                                     00006300
//SYSUDUMP DD DUMMY                                                     00006400
//*                                                                     00006500
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE13,               00006603
//            DISP=(NEW,CATLG,DELETE),                                  00006803
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00006900
//            UNIT=3390,                                                00007000
//            SPACE=(CYL,(2,1),RLSE)                                    00007100
//*                                                                     00008000
//*--------------------------------------------------------------------*00017000
//* PROGRAMA: ZM4EH991                                                 *00018000
//* FUNCION:  CREACION DE REGISTRO DE SUSCRIPTORES POR CORTE DE CUPON  *00019000
//*--------------------------------------------------------------------*00020000
//PJH13P02 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00030000
//*                                                                     00050000
//ZMH991A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE13,               00060003
//         DISP=SHR                                                     00070003
//*                                                                     00080000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00081000
//SYSPRINT DD SYSOUT=*                                                  00082000
//SYSOUT   DD SYSOUT=*                                                  00083000
//SYSDBOUT DD SYSOUT=*                                                  00084000
//SYSABOUT DD SYSOUT=*                                                  00085000
//SYSUDUMP DD DUMMY                                                     00086000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL13T02),DISP=SHR                   00088000
//*                                                                     00088100
//*---------------------------------------------------------------------00088200
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00088300
//*---------------------------------------------------------------------00088400
//PJH13P01 EXEC PGM=MAILOPER,COND=(4,GE,PJH13P02),                      00088500
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE PROCESO ',          00088600
//             'SIVAXRS2(REGSUSDF)TERMINO MAL.CONTESTAR SI',            00088700
//             'PARA TERMINAR')                                         00088800
