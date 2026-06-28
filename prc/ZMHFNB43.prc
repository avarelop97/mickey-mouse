//ZMHFNB43  PROC                                                        00000101
//**********************************************************************00000200
//* OBJETIVO       :  REALIZA CAMBIO DE LIQUIDACION POR LAS PETICIONES *00001301
//*                   QUE LLEGARON DESDE GL (MUV)                      *00001401
//*                                                                    *00001500
//**********************************************************************00003400
//*                      LOG DE MODIFICACIONES                         *00003700
//**********************************************************************00003800
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00003900
//*--------------------------------------------------------------------*00004000
//**********************************************************************00007800
//*                            (ZM4DH520)                              *00007901
//* OBJETIVO : REALIZA CAMBIO DE LIQUIDACION                           *00008201
//**********************************************************************00008700
//PHNB4301 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008801
//*                                                                     00008900
//SYSIN    DD DUMMY                                                     00009600
//SYSTSPRT DD SYSOUT=*                                                  00009700
//SYSPRINT DD SYSOUT=*                                                  00009800
//SYSOUT   DD SYSOUT=*                                                  00009900
//SYSDBOUT DD SYSOUT=*                                                  00010000
//SYSABOUT DD DUMMY                                                     00010100
//SYSUDUMP DD DUMMY                                                     00010200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHNB4301),DISP=SHR                   00010301
//*                                                                     00010400
