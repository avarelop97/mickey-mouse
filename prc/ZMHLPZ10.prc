//ZMHLPZ10 PROC                                                         00001100
//**********************************************************************00001200
//*                                                                    *00002000
//*                     C A S A   D E   B O L S A                      *00002100
//*                     =========================                      *00002200
//*                     <<  MERCADO DE VALORES >>                      *00002300
//*                                                                    *00002400
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00002500
//*                                                                    *00003100
//*   PROCEDIMI.:  ZMHLPZ10                                            *00003200
//*                                                                    *00003600
//*   OBJETIVO  :  REPORTE DE EMISORAS CON CORTE DE CUPON ENTRE LAS    *00003700
//*                FECHAS PROPORCIONADAS POR USUARIO (OPCION 794).     *00003800
//*                                                                    *00003900
//*   CORRE ANTES DE  :  NINGUNO                                       *00004000
//*                                                                    *00004100
//*   CORRE DESPUES DE:  NINGUNO                                       *00004200
//*                                                                    *00004300
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00004400
//*                                                                    *00004500
//*   FECHA     :  NOVIEMBRE  11, 2002                                 *00004600
//*                                                                    *00004700
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *00004800
//*                                                                    *00004900
//**********************************************************************00005000
//*                                                                     00008000
//**********************************************************************00017000
//* PROGRAMA: ZM4EH985                                                 *00018000
//* FUNCION:  REPORTE DE PROXIMOS CORTES DE CUPON                      *00019000
//**********************************************************************00020000
//PHL10P03 EXEC PGM=IKJEFT01                                            00030000
//*                                                                     00050000
//PI601765 DD DUMMY                                                     00051000
//ZMH985A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE10,DISP=SHR             00060000
//ZMH985T1 DD DSN=MXCP.ZM.WKF.VAL.EMP.SUC.ZMHLPE10,                     00061000
//            DISP=(NEW,CATLG,DELETE),                                  00062000
//            DCB=(RECFM=FB,LRECL=93,BLKSIZE=0),                        00063000
//            UNIT=3390,                                                00064000
//            SPACE=(CYL,(10,10),RLSE)                                  00065000
//ZMH985R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00065100
//ZMH985RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00065200
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00065300
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00065400
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00065500
//*                                                                     00080000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00081000
//SYSPRINT DD SYSOUT=*                                                  00082000
//SYSOUT   DD SYSOUT=*                                                  00083000
//SYSDBOUT DD SYSOUT=*                                                  00084000
//SYSABOUT DD SYSOUT=*                                                  00085000
//SYSUDUMP DD DUMMY                                                     00086000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL10T01),DISP=SHR                   00088000
//*                                                                     00102000
