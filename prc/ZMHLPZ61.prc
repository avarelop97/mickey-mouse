//ZMHLPZ61 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                   <<   V A L O R E S   >>                          *00050000
//*                                                                    *00060000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00070000
//*                                                                    *00080000
//* PROCESO        :  SIVAXCSR                                         *00090000
//*                   CANJE, SPLIT Y REVERSPLIT DE CUSTODIA            *00100000
//*                                                                    *00110000
//* OBJETIVO       :  APLICAR EL CANJE, SPLIT Y/O REVERSPLIT A CON-    *00120000
//*                   TRATOS DE CUSTODIA. SE PALICAN 48 HORAS DESPUES  *00130000
//*                   DE LO QUE LO HACEN LAS DEMAS EMPRESAS.           *00140000
//*                                                                    *00150000
//* CORRE          :  LO SUBMITE EL USUARIO POR LA APLICACION 814      *00160000
//*                                                                    *00170000
//* REALIZO        :  DAVID GUTIERREZ CASILLAS     (GETRONICS MEX)     *00180000
//* FECHA          :  MARZO 2005                                       *00190000
//*                                                                    *00200000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00210000
//*                                                                    *00220000
//**********************************************************************00230000
//*                       ¢¢¢  ZM4DH030  !!!                           *00490000
//* PASO  02 : PHL61P02                                                *00500000
//* OBJETIVO : PREVIO CANJE/SPLIT/REVERSPLIT DE CUSTODIA               *00510000
//* PASO REINICIABLE POR RESTART                                       *00520000
//**********************************************************************00530000
//PHL61P02 EXEC PGM=IKJEFT01                                            00540000
//ZMH030A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE61,DISP=SHR             00550000
//SYSTSPRT DD SYSOUT=*                                                  00560000
//ZMH030R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00580002
//SYSPRINT DD SYSOUT=*                                                  00600000
//SYSOUT   DD SYSOUT=*                                                  00610000
//SYSDBOUT DD SYSOUT=*                                                  00620000
//SYSABOUT DD DUMMY                                                     00630000
//SYSUDUMP DD DUMMY                                                     00640000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL61T02),DISP=SHR                   00650000
//*                                                                     00650100
