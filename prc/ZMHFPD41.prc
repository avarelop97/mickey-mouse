//ZMHFPD41  PROC                                                        00000100
//**********************************************************************00000200
//*                     C A S A   D E  B O L S A                       *00000300
//*                     ========================                       *00000400
//*                     <<  C A P I T A L E S >>                       *00000500
//*                                                                    *00000600
//*                                                                    *00000700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES.(HOST TO HOST).      *00000800
//*                                                                    *00000900
//* PROCESO        :  CBHFND41                                         *00001000
//*                                                                    *00001200
//* OBJETIVO       :  PRENDE CONDICION PARA EJECUCION DE EXTRACTORES   *00001300
//*                   PARA ENVIO A PLUS                                *00001400
//*                                                                    *00001500
//**********************************************************************00003400
//*                      LOG DE MODIFICACIONES                         *00003700
//**********************************************************************00003800
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00003900
//*--------------------------------------------------------------------*00004000
//**********************************************************************00007800
//*                            (ZM4DHH40)                              *00007900
//* OBJETIVO : PRENDE CONDICION PARA EJECUCION DE EXTRACTOR DE         *00008200
//*            OPERACION DEL DIA                                       *00008300
//**********************************************************************00008700
//PHF41P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008800
//*                                                                     00008900
//SYSIN    DD DUMMY                                                     00009600
//SYSTSPRT DD SYSOUT=*                                                  00009700
//SYSPRINT DD SYSOUT=*                                                  00009800
//SYSOUT   DD SYSOUT=*                                                  00009900
//SYSDBOUT DD SYSOUT=*                                                  00010000
//SYSABOUT DD DUMMY                                                     00010100
//SYSUDUMP DD DUMMY                                                     00010200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF41T14),DISP=SHR                   00010300
//*                                                                     00010400
