//ZMHLPZ42 PROC                                                         00010000
//**********************************************************************00010100
//*                                                                    *00010200
//*                     C A S A   D E   B O L S A                      *00010300
//*                     =========================                      *00010400
//*                     <<  MERCADO DE VALORES >>                      *00010500
//*                                                                    *00010600
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00010700
//*                                                                    *00010800
//*   PROCEDIMIENTO    : ZMHLPZ42                                      *00010900
//*                                                                    *00011000
//*   OBJETIVO         : MOSTRAR EL RESULTADO DEFINITIVO DE            *00011100
//*                      AMORTIZACION DE OBLIGACIONES                  *00011200
//*                                                                    *00011300
//*   CORRE ANTES DE   : NINGUNO                                       *00011400
//*                                                                    *00011500
//*   CORRE DESPUES DE : NINGUNO                                       *00011600
//*                                                                    *00011700
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *00011800
//*                                                                    *00011900
//*   FECHA            : MAYO     21, 2003                             *00012000
//*                                                                    *00012100
//*   AUTOR            : FERNANDO CABALLERO ROMAN (ASATECK)            *00012200
//*                                                                    *00012300
//*                                                                    *00012400
//**********************************************************************00012500
//*                                                                    *00012600
//**********************************************************************00014600
//* PROGRAMA: ZM4EHA11                                                 *00014700
//* FUNCION:  ACTUALIZAR LAS TABLAS Y REPORTAR EL PROCESO PREVIO Y     *00014800
//*           DEFINITIVO DE AMORTIZACION DE OBLIGACIONES O DE PETROBONO*00014900
//**********************************************************************00015000
//PHL42P05 EXEC PGM=IKJEFT01                                            00015100
//ZMHA11A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE42,DISP=SHR             00015200
//ZMHA11R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015400
//SYSTSPRT DD SYSOUT=*                                                  00015700
//SYSPRINT DD SYSOUT=*                                                  00015800
//SYSOUT   DD SYSOUT=*                                                  00015900
//SYSDBOUT DD SYSOUT=*                                                  00016000
//SYSABOUT DD SYSOUT=*                                                  00016100
//SYSUDUMP DD DUMMY                                                     00016200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL42T01),DISP=SHR                   00016300
//*                                                                     00016400
//**********************************************************************00016500
//* PROGRAMA: ZM4EJ104                                                 *00016600
//* FUNCION:  COMPRA AUTOMATICA SOBRE UN FONDO DE SOC. DE INV.         *00016700
//*           SOBRE LA BONIFICACION HECHA DEL EJERCICIO DE DERECHO:    *00016800
//*                    DIVIDENDOS, INTERESES Y AMORTIZACIONES.         *00016900
//**********************************************************************00017000
//PHL42P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00017100
//ZMJ104A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE42,DISP=SHR             0017200
//ZMJ104R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00017400
//SYSTSPRT DD SYSOUT=*                                                  00017700
//SYSPRINT DD SYSOUT=*                                                  00017800
//SYSOUT   DD SYSOUT=*                                                  00017900
//SYSDBOUT DD SYSOUT=*                                                  00018000
//SYSABOUT DD SYSOUT=*                                                  00018100
//SYSUDUMP DD DUMMY                                                     00018200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL42T02),DISP=SHR                   00018300
//*                                                                     00018400
