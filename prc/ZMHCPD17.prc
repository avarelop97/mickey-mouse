//**********************************************************************00010000
//ZMHCPD17  PROC                                                        00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                   C A S A   D E  B O L S A                         *00050000
//*                   ========================                         *00060000
//*                                                                    *00070000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00080000
//*                                                                    *00090000
//* PROCESO        :  ZMHCPD17 (JCL-CBHCPD17)                          *00100000
//*                   GENERA ARCHIVOS CON OPERACIONES POSICION PROPIA  *00110000
//*                                                                    *00120000
//* OBJETIVO       :  GENERA ARCHIVOS CON OPERACIONES DEL DIA DE       *00130000
//*                   POSICION PROPIA DE BANCA PATRIMONIAL Y REALIZA   *00140000
//*                   TRANSFERENCIA AL AS/400 (INTERNACIONAL)          *00150000
//*                   GFBAS02.                                         *00160000
//*                                                                    *00170000
//* CORRE                                                              *00180000
//*                                                                    *00190000
//* ANTES DE       :  NINGUNO                                          *00200000
//*                                                                    *00210000
//* DESPUES DE     :  CBHCCD03                                         *00220000
//*                   CIERRE DE VALORES BCM.                           *00230000
//*                                                                    *00240000
//* PERIODICIDAD   :  DIARIO                                           *00250000
//*                                                                    *00260000
//* ELABORADO POR  :  H. ABRAHAM JUAREZ PI#ON (GETRONICS) - 18/ABR/2005*00270000
//**********************************************************************00280000
//* MODIFICO : MARCO A. MORALES GERMAN (GETRONICS) - 20/SEP/2005       *00310004
//*                                                                    *00320000
//* OBJETIVO : CAMBIOS EN LONGITUD DE LOS ARCHIVOS                     *00330004
//**********************************************************************00340000
//**********************************************************************00350000
//* OBJETIVO : GENERA ARCHIVOS PARA SISTEMA PERLA CON OPERACIONES DE   *00360000
//*            POSICION PROPIA                                         *00370000
//*         -- ZM4DHU92 --                                             *00380000
//**********************************************************************00390000
//PHC17P02 EXEC PGM=IKJEFT01                                            00400000
//*                                                                     00410000
//ZMHU92A1 DD DSN=MXCP.ZM.FIX.VAL.EBCM.ZM4DHU92.T001,                   00420002
//            DISP=(NEW,CATLG,CATLG),                                   00430000
//            DCB=(LRECL=595,RECFM=FB,BLKSIZE=0,DSORG=PS),              00440004
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00450000
//ZMHU92A2 DD DSN=MXCP.ZM.FIX.VAL.EBCM.ZM4DHU92.C001,                   00460002
//            DISP=(NEW,CATLG,CATLG),                                   00470000
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),              00480000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00490000
//ZMHU92A3 DD DSN=MXCP.ZM.FIX.VAL.EBCM.ZM4DHU92.P001,                   00500002
//            DISP=(NEW,CATLG,CATLG),                                   00510000
//            DCB=(LRECL=336,RECFM=FB,BLKSIZE=0,DSORG=PS),              00520004
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00530000
//*                                                                     00540000
//SYSTSPRT DD SYSOUT=*                                                  00550000
//SYSPRINT DD SYSOUT=*                                                  00560000
//SYSOUT   DD SYSOUT=*                                                  00570000
//SYSDBOUT DD SYSOUT=*                                                  00580000
//SYSABOUT DD DUMMY                                                     00590000
//SYSUDUMP DD DUMMY                                                     00600000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC17T02),DISP=SHR                   00610000
//**********************************************************************00620000
//* OBJETIVO : TRANSFERENCIA DE ARCHIVOS HOST AL AS/400 SISTEMA        *00630001
//*            INTERNACIONAL, GFBAS02.                                 *00640000
//*         -- DMBATCH --                                              *00650000
//**********************************************************************00660000
//PHC17P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00670000
//*                                                                     00680000
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00690003
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00700003
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00710003
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00720003
//DMPRINT   DD SYSOUT=*                                                 00730000
//SYSPRINT  DD SYSOUT=*                                                 00740000
//NDMCMDS   DD SYSOUT=*                                                 00750000
//SYSUDUMP  DD DUMMY                                                    00760000
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHC17T01),DISP=SHR                  00770000
//**********************************************************************00780000
//*                 F I N   Z M H C P D 1 7                            *00790004
//**********************************************************************00800000
