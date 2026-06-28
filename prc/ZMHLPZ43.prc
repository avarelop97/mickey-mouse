//ZMHLPZ43 PROC                                                         00001000
//*--------------------------------------------------------------------*00002000
//*                                                                    *00003000
//*                     C A S A   D E   B O L S A                      *00004000
//*                     =========================                      *00005000
//*                     <<  MERCADO DE VALORES >>                      *00006000
//*                                                                    *00007000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00008000
//*                                                                    *00009000
//*   PROCEDIMIENTO    : ZMHLPZ43                                      *00009100
//*                                                                    *00009200
//*   OBJETIVO         : REPORTE PREVIO DE EJERCICIO DE TITULOS        *00009300
//*                      OPCIONALES ( WARRANTS ) ( OPCION 805 )        *00009400
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
//*--------------------------------------------------------------------*00014200
//* PROGRAMA: ZM4DGJ79                                                 *00014300
//* FUNCION:  REPORTE PRELIMINAR DE WARRANTS                           *00014400
//*--------------------------------------------------------------------*00014500
//PHL43P03 EXEC PGM=IKJEFT01                                            00014600
//*                                                                     00014700
//ZMGJ79A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE43,DISP=(OLD,PASS)      00014800
//*                                                                     00014900
//ZMGJ79R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00015200
//SYSPRINT DD SYSOUT=*                                                  00015300
//SYSOUT   DD SYSOUT=*                                                  00015400
//SYSDBOUT DD SYSOUT=*                                                  00015500
//SYSABOUT DD SYSOUT=*                                                  00015600
//SYSUDUMP DD DUMMY                                                     00015700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL43T01),DISP=SHR                   00015800
//*                                                                     00030000
