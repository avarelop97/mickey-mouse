//ZMHIPD06 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E  B O L S A                       *00030000
//*                     ========================                       *00040000
//*                                                                    *00050000
//*                                                                    *00060000
//*   OBJETIVO  :  INSERTA EN LA TABLA CTLPROC EL EVENTO               *00070000
//*                IAPLICA = 'SKT'                                     *00080000
//*                                                                    *00090000
//**********************************************************************00100000
//*                      LOG DE MODIFICACIONES                         *00110000
//**********************************************************************00120000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00130000
//*--------------------------------------------------------------------*00140000
//*      |          |       |        |                                 *00150000
//**********************************************************************00160000
//* PROGRAMA: ZM4DHW73                                                 *00170003
//* OBJETIVO: INSERTA EL EVENTO 'SKT' EN TABLA CTLPROC.                *00180000
//*           SI EL EVENTO SE INSERTA INDICA QUE YA CORRIO EL PROGRAMA *00190001
//*           QUE ACTUALIZA LA FECHA DE PROCESO "P05".                 *00200001
//* PASO REINICIABLE POR RESTART                                       *00210000
//**********************************************************************00220000
//PHI06P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00230001
//SYSTSPRT DD SYSOUT=*                                                  00240000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00260000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI06T01),DISP=SHR                   00300000
//*                                                                     00310000
