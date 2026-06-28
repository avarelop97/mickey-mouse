//ZMHLPZ44 PROC                                                         00001000
//*--------------------------------------------------------------------*00002000
//*                                                                    *00003000
//*                     C A S A   D E   B O L S A                      *00004000
//*                     =========================                      *00005000
//*                     <<  MERCADO DE VALORES >>                      *00006000
//*                                                                    *00007000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00008000
//*                                                                    *00009000
//*   PROCEDIMIENTO    : ZMHLPZ44                                      *00009100
//*                                                                    *00009200
//*   OBJETIVO         : REPORTE DEFINITIVO DE EJERCICIO DE TITULOS    *00009300
//*                      OPCIONALES ( WARRANTS ) ( OPCION 810 )        *00009400
//*                                                                    *00009700
//*   CORRE ANTES DE   : NINGUNO                                       *00009800
//*                                                                    *00009900
//*   CORRE DESPUES DE : NINGUNO                                       *00010000
//*                                                                    *00010100
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00010200
//*                                                                    *00010300
//*   FECHA            : JUNIO 03, 2003                                *00010400
//*                                                                    *00010500
//*   AUTOR            : GETRONICS - MEXICO                            *00010600
//*                                                                    *00010700
//*--------------------------------------------------------------------*00010800
//* PROGRAMA: ZM4DGJ79                                                 *00014300
//* FUNCION:  REPORTE DEFINITIVO DE WARRANTS                           *00014400
//*--------------------------------------------------------------------*00014500
//PHL44P03 EXEC PGM=IKJEFT01                                            00014600
//*                                                                     00014700
//ZMGJ79A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE44,DISP=(OLD,PASS)      00014800
//*                                                                     00015000
//ZMGJ79R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015100
//ZMGA52R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00015300
//SYSPRINT DD SYSOUT=*                                                  00015400
//SYSOUT   DD SYSOUT=*                                                  00015500
//SYSDBOUT DD SYSOUT=*                                                  00015600
//SYSABOUT DD SYSOUT=*                                                  00015700
//SYSUDUMP DD DUMMY                                                     00015800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL43T01),DISP=SHR                   00015900
//*                                                                     00016000
//CHNGDUMP DD SYSOUT=*                                                  00019100
//*                                                                     00100000
