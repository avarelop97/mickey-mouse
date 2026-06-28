//ZMGFPV03 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00021000
//*                     C A S A   D E  B O L S A                       *00021101
//*                     ========================                       *00021201
//*                     <<    P    L    D     >>                       *00021301
//*                                                                    *00021401
//*   SISTEMA         :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00021502
//*                                                                    *00021602
//*   APLICACION      :  MODULO DE PREVENSION LAVADO DE DINERO         *00023202
//*                      (CONTRALORIA)                                 *00023300
//*                                                                    *00027000
//*   OBJETIVO        :  CARGA INFORMACION A LA TABLA ZMDT647 SDP      *00028003
//*                                                                    *00029200
//*   CORRE ANTES DE  :  NINGUNO                                       *00029300
//*                                                                    *00029400
//*   CORRE DESPUES DE:  NINGUNO                                       *00029500
//*                                                                    *00029700
//*   PERIODICIDAD    :  CORRE POR UNICA VEZ                           *00029800
//*                                                                    *00030100
//**********************************************************************00030200
//*                      LOG DE MODIFICACIONES                         *00030300
//**********************************************************************00030400
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00030500
//*--------------------------------------------------------------------*00030600
//*      |          |       |        |                                 *00030700
//**********************************************************************00030800
//*                          -- ZM4VG047 --                            *00034903
//*                                                                    *00035002
//* OBJETIVO    :  INSERTA REGISTRO EN LA HISTORICA ZMDT647.           *00035103
//*                                                                    *00035202
//* PASO REINICIABLE POR RESTART                 ***PROC. PLD.         *00035302
//**********************************************************************00035402
//PGF03P01 EXEC PGM=IKJEFT01                                            00035503
//SYSTSPRT DD  SYSOUT=*                                                 00035602
//SYSPRINT DD  SYSOUT=*                                                 00035702
//SYSOUT   DD  SYSOUT=*                                                 00035802
//SYSDBOUT DD  SYSOUT=*                                                 00035902
//SYSABOUT DD  DUMMY                                                    00036002
//SYSUDUMP DD  DUMMY                                                    00036102
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGF03T01),DISP=SHR                  00036204
//**********************************************************************00036302
//*                      F I N   Z M G F P V 0 3                       *00036403
//**********************************************************************00036503
