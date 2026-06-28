//**********************************************************************00010000
//ZMHCPD16  PROC                                                        00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                   C A S A   D E  B O L S A                         *00050000
//*                   ========================                         *00060000
//*                                                                    *00070000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00080000
//*                                                                    *00090000
//* PROCESO        :  ZMHCPD16 (JCL-CBHCPD16)                          *00100000
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
//* DESPUES DE     :  CBHCND09                                         *00220000
//*                   CIERRE DE CAPITALES BCM.                         *00230000
//*                                                                    *00240000
//* PERIODICIDAD   :  DIARIO                                           *00250000
//*                                                                    *00260000
//* ELABORADO POR  :  H. ABRAHAM JUAREZ PI#ON (GETRONICS) - 18/ABR/2005*00270000
//**********************************************************************00280000
//* MODIFICO : MARCO A. MORALES GERMAN (GETRONICS) - 20/SEP/2005       *00290003
//*                                                                    *00300000
//* OBJETIVO : CAMBIOS EN LONGITUD DE LOS ARCHIVOS                     *00310003
//**********************************************************************00320000
//**********************************************************************00330000
//* OBJETIVO : GENERA ARCHIVOS PARA SISTEMA PERLA CON OPERACIONES DE   *00340000
//*            POSICION PROPIA                                         *00350000
//*         -- ZM4DHU92 --                                             *00360000
//**********************************************************************00370000
//PHC16P02 EXEC PGM=IKJEFT01                                            00380000
//*                                                                     00390000
//ZMHU92A1 DD DSN=MXCP.ZM.FIX.MDC.EBCM.ZM4DHU92.T001,                   00400000
//            DISP=(NEW,CATLG,CATLG),                                   00410000
//            DCB=(LRECL=595,RECFM=FB,BLKSIZE=0,DSORG=PS),              00420003
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00430000
//ZMHU92A2 DD DSN=MXCP.ZM.FIX.MDC.EBCM.ZM4DHU92.C001,                   00440000
//            DISP=(NEW,CATLG,CATLG),                                   00450000
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),              00460000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00470000
//ZMHU92A3 DD DSN=MXCP.ZM.FIX.MDC.EBCM.ZM4DHU92.P001,                   00480000
//            DISP=(NEW,CATLG,CATLG),                                   00490000
//            DCB=(LRECL=336,RECFM=FB,BLKSIZE=0,DSORG=PS),              00500003
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00510000
//*                                                                     00520000
//SYSTSPRT DD SYSOUT=*                                                  00530000
//SYSPRINT DD SYSOUT=*                                                  00540000
//SYSOUT   DD SYSOUT=*                                                  00550000
//SYSDBOUT DD SYSOUT=*                                                  00560000
//SYSABOUT DD DUMMY                                                     00570000
//SYSUDUMP DD DUMMY                                                     00580000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC16T02),DISP=SHR                   00590000
//**********************************************************************00600000
//* OBJETIVO : TRANSFERENCIA DE ARCHIVOS HOST AL AS/400 SISTEMA        *00610001
//*            INTERNACIONAL, GFBAS02.                                 *00620000
//*         -- DMBATCH --                                              *00630000
//**********************************************************************00640000
//PHC16P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00650000
//*                                                                     00660000
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00670002
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00680002
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00690000
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00700002
//DMPRINT   DD SYSOUT=*                                                 00710000
//SYSPRINT  DD SYSOUT=*                                                 00720000
//NDMCMDS   DD SYSOUT=*                                                 00730000
//SYSUDUMP  DD DUMMY                                                    00740000
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHC16T01),DISP=SHR                  00750000
//**********************************************************************00760000
//*                 F I N   Z M H C P D 1 6                            *00770000
//**********************************************************************00780000
