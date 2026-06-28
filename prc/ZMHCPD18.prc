//**********************************************************************00010000
//ZMHCPD18  PROC                                                        00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                   C A S A   D E  B O L S A                         *00050000
//*                   ========================                         *00060000
//*                                                                    *00070000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00080000
//*                                                                    *00090000
//* PROCESO        :  ZMHCPD18 (JCL-CBHCPD18)                          *00100000
//*                   TRANSFIERE INFORMACION CON FORMATO TIPO IN       *00110000
//*                   RECIBIDA DE BMV, PARA EL AREA DE CUSTODIA        *00120000
//*                   INTERNACIONAL.                                   *00130000
//*                                                                    *00140000
//* OBJETIVO       :  TRANSFIERE INFORMACION CON FORMATO TIPO IN       *00150000
//*                   RECIBIDA DE BMV, PARA EL AREA DE CUSTODIA        *00160000
//*                   INTERNACIONAL.                                   *00170000
//*                                                                    *00180000
//* CORRE                                                              *00190000
//*                                                                    *00200000
//* ANTES DE       :  NINGUNO                                          *00210000
//*                                                                    *00220000
//* DESPUES DE     :  CBHEND05                                         *00230000
//*                   GENERA INFORMACION CON FORMATO TIPO IN.          *00240000
//*                                                                    *00250000
//* PERIODICIDAD   :  DIARIO                                           *00260000
//*                                                                    *00270000
//* ELABORADO POR  :  H. ABRAHAM JUAREZ PI#ON (GETRONICS) - 19/ABR/2005*00280000
//**********************************************************************00290000
//*                      LOG DE MODIFICACIONES                         *00300000
//**********************************************************************00310000
//* MODIFICO :                                                         *00320000
//*                                                                    *00330000
//* OBJETIVO :                                                         *00340000
//**********************************************************************00350000
//**********************************************************************00360000
//* OBJETIVO : TRANSFERENCIA DEL ARCHIVOS HOST A SERVIDOR              *00370000
//*         -- DMBATCH --                                              *00380000
//**********************************************************************00390000
//PHC18P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00400000
//*                                                                     00410000
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00420001
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00430001
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00440001
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00450001
//DMPRINT   DD SYSOUT=*                                                 00460000
//SYSPRINT  DD SYSOUT=*                                                 00470000
//NDMCMDS   DD SYSOUT=*                                                 00480000
//SYSUDUMP  DD DUMMY                                                    00490000
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHC18T01),DISP=SHR                  00500000
//**********************************************************************00510000
//*                 F I N   Z M H C P D 1 8                            *00520002
//**********************************************************************00530000
