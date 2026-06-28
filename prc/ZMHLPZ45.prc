//ZMHLPZ45 PROC                                                         00001000
//**********************************************************************00001100
//*                                                                    *00001200
//*                     C A S A   D E   B O L S A                      *00001300
//*                     =========================                      *00001400
//*                     <<  MERCADO DE VALORES >>                      *00001500
//*                                                                    *00001600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00001700
//*                                                                    *00001800
//*   PROCEDIMI.:  ZMHLPZ45                                            *00001900
//*                                                                    *00002000
//*   OBJETIVO  :  PRELIMINAR DE CORTE DE CUPON DE RENTA VARIABLE      *00002100
//*                (OPCION 777)                                        *00002200
//*                                                                    *00002300
//*   CORRE ANTES DE  :  NINGUNO                                       *00002400
//*                                                                    *00002500
//*   CORRE DESPUES DE:  NINGUNO                                       *00002600
//*                                                                    *00002700
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00002800
//*                                                                    *00002900
//*   FECHA     :  JUNIO 23, 2003                                      *00003000
//*                                                                    *00003100
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *00003200
//*                                                                    *00003300
//**********************************************************************00003400
//**********************************************************************00008100
//* PROGRAMA: ZM4EH926                                                 *00008200
//* FUNCION:  PRELIMINAR DE CORTE DE CUPON RENTA VARIABLE              *00008300
//**********************************************************************00008400
//PHL45P05 EXEC PGM=IKJEFT01,DYNAMNBR=20                                00008500
//ZMH926A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE45,                     00008800
//            DISP=(OLD,PASS)                                           00008900
//ZMH926R1 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.REPORTE,                      00009110
//            DISP=(NEW,CATLG),                                         00009120
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),              00009130
//            UNIT=3390,                                                00009140
//            SPACE=(CYL,(2,1),RLSE)                                    00009150
//ZMH926R2 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.REPFIDE,                      00009160
//            DISP=(NEW,CATLG),                                         00009170
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),              00009180
//            UNIT=3390,                                                00009190
//            SPACE=(CYL,(2,1),RLSE)                                    00009191
//*                                                      ANS-1.1.0-INI  00009192
//ZMH926A3 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.PZ45.ARCH03,                  00009193
//            DISP=(NEW,DELETE,DELETE),                                 00009194
//            DCB=(LRECL=195,RECFM=FB,BLKSIZE=0,DSORG=PS),              00009195
//            UNIT=3390,                                                00009196
//            SPACE=(CYL,(100,50),RLSE)                                 00009197
//*                                                      ANS-1.1.0-FIN  00009198
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00014000
//SYSPRINT DD SYSOUT=*                                                  00015000
//SYSOUT   DD SYSOUT=*                                                  00016000
//SYSDBOUT DD SYSOUT=*                                                  00017000
//SYSABOUT DD SYSOUT=*                                                  00018000
//SYSUDUMP DD DUMMY                                                     00018100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL45T01),DISP=SHR                   00018300
//*                                                                     00018400
//********************************************************************  00018600
//* OBJETIVO : SORTEAR ARCHIVO                                       *  00018700
//* PROGRAMA : ICEMAN                                                *  00018800
//********************************************************************  00018900
//PHL45P04 EXEC PGM=ICEMAN,COND=(4,LT)                                  00019000
//SYSOUT   DD SYSOUT=*                                                  00019100
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.REPFIDE,DISP=SHR              00019200
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.REPSORT,                      00019400
//            DISP=(NEW,CATLG,DELETE),                                  00019500
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),              00019600
//            UNIT=3390,                                                00019700
//            SPACE=(CYL,(4,2),RLSE)                                    00019800
//*                                                                     00019900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL45T02),DISP=SHR                   00020000
//*                                                                     00020010
//********************************************************************  00020100
//* OBJETIVO : SEPARA LAS CUENTAS DE FIDEICOMISO DEL RESTO              00020200
//* PROGRAMA : ZM4CFID8                                                 00020300
//********************************************************************  00020400
//PHL45P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00020500
//*                                                                     00020600
//ZMH992A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE45,DISP=(OLD,PASS)      00020700
//*                                                                     00020900
//ZMH992A2 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.REPSORT,DISP=SHR              00021000
//*                                                                     00021100
//ZMH926R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00021710
//ZMH926RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00021720
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00021900
//SYSPRINT DD SYSOUT=*                                                  00022000
//SYSOUT   DD SYSOUT=*                                                  00022100
//SYSDBOUT DD SYSOUT=*                                                  00022200
//SYSABOUT DD SYSOUT=*                                                  00022300
//SYSUDUMP DD DUMMY                                                     00022400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL45T03),DISP=SHR                   00022500
//*                                                                     00022600
