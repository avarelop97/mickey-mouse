//ZMHLPZ26 PROC                                                         00001400
//**********************************************************************00001700
//*                                                                    *00002000
//*                     C A S A   D E   B O L S A                      *00002100
//*                     =========================                      *00002200
//*                     <<  MERCADO DE VALORES >>                      *00002300
//*                                                                    *00002400
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00002500
//*                                                                    *00003100
//*   PROCEDIMIENTO    : ZMHLPZ26                                      *00003200
//*                                                                    *00003600
//*   OBJETIVO         : MOSTRAR EL RESULTADO PRELIMINAR DE            *00003700
//*                      AMORTIZACION DE ACCIONES                      *00003800
//*                                                                    *00003900
//*   CORRE ANTES DE   : NINGUNO                                       *00004000
//*                                                                    *00004100
//*   CORRE DESPUES DE : NINGUNO                                       *00004200
//*                                                                    *00004300
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *00004400
//*                                                                    *00004500
//*   FECHA            : AGOSTO 2003                                   *00004600
//*                                                                    *00004700
//*   AUTOR            : OSCAR URBANO F. (GETRONICS).                  *00004800
//*                                                                    *00004900
//*                                                                    *00005000
//**********************************************************************00005100
//*                                                                    *00005200
//**********************************************************************00088300
//* PROGRAMA: ZM4EHA15                                                 *00088400
//* FUNCION:  MOSTRAR EL RESULTADO PRELIMINAR O DEFINITIVO             *00088500
//*           (SEGUN SEA EL CASO)  DE UNA CONVERSION DE OBLIGACIONES   *00088600
//**********************************************************************00088800
//PHL26P02 EXEC PGM=IKJEFT01                                            00088900
//ZMHA15A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMHLPE26,                     00089001
//            DISP=(OLD,PASS)                                           00089100
//ZMHA15R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00089200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00089600
//SYSPRINT DD SYSOUT=*                                                  00089700
//SYSOUT   DD SYSOUT=*                                                  00089800
//SYSDBOUT DD SYSOUT=*                                                  00089900
//SYSABOUT DD SYSOUT=*                                                  00090000
//SYSUDUMP DD DUMMY                                                     00090100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL26T01),DISP=SHR                   00090200
//*                                                                     00090300
