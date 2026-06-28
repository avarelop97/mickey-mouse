//ZMHCNE06  PROC                                                        00010000
//**********************************************************************00020000
//*                                                                    *00030000
//*                   C A S A   D E  B O L S A                         *00031000
//*                   ========================                         *00032000
//*                   <<  M E R C A D O   D E   C A P I T A L E S  >>  *00033000
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130000
//*                                                                    *00140000
//* PROCESO        :  ZMHCNE06.                                        *00150000
//*                                                                    *00170000
//* OBJETIVO       :  ACTUALIZA LA VIGENCIA DE UNA ORDEN EN LA TABLA   *00180001
//*                   ORDCAPI, PARA LOS REGISTROS QUE TENGAN VIGENCIA  *00200001
//*                   '00'.                                            *00201001
//*                                                                    *00210001
//* CORRE          :  ES EVENTUAL Y SE PROCESA DE ACUERDO A LA FECHA   *00220001
//* ANTES DE          QUE SE SOLICITE.                                 *00230001
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
//*                       -- ZM4DHW46 --                               *00499601
//* OBJETIVO : ACTUALIZA ORDCAPI (IDURAC = '00').                      *00499701
//*                                                                    *00499800
//**********************************************************************00499900
//PHE06P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00500001
//PF601765  DD DUMMY                                                    00500100
//*                                                                     00500200
//SYSTSPRT DD SYSOUT=*                                                  00501201
//SYSPRINT DD SYSOUT=*                                                  00501300
//SYSOUT   DD SYSOUT=*                                                  00501400
//SYSDBOUT DD SYSOUT=*                                                  00501500
//SYSABOUT DD DUMMY                                                     00501600
//SYSUDUMP DD DUMMY                                                     00501700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE01T01),DISP=SHR                   00501801
//*                                                                     00502700
