//ZMHLPZ19 PROC                                                         00001300
//**********************************************************************00001400
//*                                                                    *00001500
//*                     C A S A   D E   B O L S A                      *00001600
//*                     =========================                      *00001700
//*                     <<  MERCADO DE VALORES >>                      *00001800
//*                                                                    *00001900
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00002000
//*                                                                    *00002100
//*   PROCEDIMIENTO    : ZMHLPZ19                                      *00002200
//*                                                                    *00002300
//*   OBJETIVO         : CREACION DE REGISTRO DE SUSCRIPTORES POR      *00002400
//*                      CONVERSION DE OBLIGACIONES ( OPCION 816 )     *00002500
//*                                                                    *00002600
//*   CORRE ANTES DE   : NINGUNO                                       *00002700
//*                                                                    *00002800
//*   CORRE DESPUES DE : NINGUNO                                       *00002900
//*                                                                    *00003000
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *00003100
//*                                                                    *00003200
//*   FECHA            : ENERO  04, 2003                               *00003300
//*                                                                    *00003400
//*   AUTOR     :  MARCOS VARELA PEREZ  (ASATECK)                      *00003500
//*                                                                    *00003600
//*                                                                    *00003700
//**********************************************************************00003800
//* PROGRAMA: ZM4EHA12                                                 *00008400
//* FUNCION:  ACTUALIZACION DE TABLAS PARA LA CONVERSION DE            *00008500
//*           OBLIGACIONES EJERCICIO DE DERECHOS, (MODULO DE VALORES)  *00008600
//**********************************************************************00008700
//PHL19P04 EXEC PGM=IKJEFT01                                            00008800
//ZMHA12A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE19,                     00009001
//            DISP=(OLD,PASS)                                           00009100
//*ZMHA12R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00010000
//*                                                                     00011000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00012000
//SYSPRINT DD SYSOUT=*                                                  00013000
//SYSOUT   DD SYSOUT=*                                                  00014000
//SYSDBOUT DD SYSOUT=*                                                  00015000
//SYSABOUT DD SYSOUT=*                                                  00015100
//SYSUDUMP DD DUMMY                                                     00015200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL19T01),DISP=SHR                   00015300
//*                                                                     00015400
//**********************************************************************00086000
//* PROGRAMA: ZM4EH431                                                 *00087000
//* FUNCION:  REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON     *00088000
//*           MERCADO DE CAPITALES                                     *00088100
//**********************************************************************00088200
//PHL19P03 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)                    00088300
//ZMH431A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE19,                     00088401
//            DISP=(OLD,PASS)                                           00088600
//ZMH431R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00088800
//ZMH431R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00088900
//*                                                                     00089000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00089100
//SYSPRINT DD SYSOUT=*                                                  00089200
//SYSOUT   DD SYSOUT=*                                                  00089300
//SYSDBOUT DD SYSOUT=*                                                  00089400
//SYSABOUT DD SYSOUT=*                                                  00089500
//SYSUDUMP DD DUMMY                                                     00089600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL19T02),DISP=SHR                   00089700
//*                                                                     00089800
