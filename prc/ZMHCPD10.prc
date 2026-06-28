//**********************************************************************00010000
//ZMHCPD10  PROC                                                        00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                   C A S A   D E  B O L S A                         *00050000
//*                   ========================                         *00060000
//*                                                                    *00070000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00080000
//*                                                                    *00090000
//* PROCESO        :  ZMHCPD10 (JCL-CBHCPD10)                          *00100000
//*                   GENERA ARCHIVOS CON OPERACIONES POSICION PROPIA  *00110000
//*                                                                    *00120000
//* OBJETIVO       :  GENERA ARCHIVOS CON OPERACIONES DEL DIA DE       *00130000
//*                   POSICION PROPIA DE BANCA PATRIMONIAL Y REALIZA   *00140000
//*                   TRANSFERENCIA AL SISTEMA PERLA                   *00150000
//*                                                                    *00160000
//* CORRE                                                              *00170000
//*                                                                    *00180000
//* ANTES DE       :  NINGUNO                                          *00190000
//*                                                                    *00200000
//* DESPUES DE     :  CBHCND09 Y CBHCCD03                              *00210000
//*                   CIERRE DE CAPITALES BCM Y CIERRE DE VALORES      *00220000
//*                                                                    *00230000
//* PERIODICIDAD   :  DIARIO                                           *00240000
//*                                                                    *00250000
//* ELABORADO POR  :  MARCO A. MORALES GERMAN (GETRONICS) - 09/FEB/2005*00260000
//**********************************************************************00270000
//* MODIFICO : MARCO A. MORALES GERMAN (GETRONICS) - 20/SEP/2005       *00280007
//*                                                                    *00290000
//* OBJETIVO : CAMBIOS EN LONGITUD DE LOS ARCHIVOS                     *00300007
//**********************************************************************00310000
//**********************************************************************00320000
//* OBJETIVO : GENERA ARCHIVOS PARA SISTEMA PERLA CON OPERACIONES DE   *00330000
//*            POSICION PROPIA                                         *00340000
//*         -- ZM4DHU92 --                                             *00350000
//**********************************************************************00360000
//PHC10P02 EXEC PGM=IKJEFT01                                            00370000
//*                                                                     00380000
//ZMHU92A1 DD DSN=MXCP.ZM.FIX.MDC.EBCM.ZM4DHU92.T001,                   00390000
//            DISP=(NEW,CATLG,CATLG),                                   00400000
//            DCB=(LRECL=595,RECFM=FB,BLKSIZE=0,DSORG=PS),              00410006
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00420000
//ZMHU92A2 DD DSN=MXCP.ZM.FIX.MDC.EBCM.ZM4DHU92.C001,                   00430000
//            DISP=(NEW,CATLG,CATLG),                                   00440000
//            DCB=(LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),              00450000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00460000
//ZMHU92A3 DD DSN=MXCP.ZM.FIX.MDC.EBCM.ZM4DHU92.P001,                   00470000
//            DISP=(NEW,CATLG,CATLG),                                   00480000
//            DCB=(LRECL=336,RECFM=FB,BLKSIZE=0,DSORG=PS),              00490006
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00500000
//*                                                                     00510000
//SYSTSPRT DD SYSOUT=*                                                  00520000
//SYSPRINT DD SYSOUT=*                                                  00530000
//SYSOUT   DD SYSOUT=*                                                  00540000
//SYSDBOUT DD SYSOUT=*                                                  00550000
//SYSABOUT DD DUMMY                                                     00560000
//SYSUDUMP DD DUMMY                                                     00570000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC10T02),DISP=SHR                   00580000
//**********************************************************************00590000
//* OBJETIVO : TRANSFERENCIA DEL ARCHIVOS HOST A SERVIDOR              *00600000
//*         -- DMBATCH --                                              *00610000
//**********************************************************************00620000
//PHC10P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00630000
//*                                                                     00640000
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00650000
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP                     00660000
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00670000
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG                        00680000
//DMPRINT   DD SYSOUT=*                                                 00690000
//SYSPRINT  DD SYSOUT=*                                                 00700000
//NDMCMDS   DD SYSOUT=*                                                 00710000
//SYSUDUMP  DD DUMMY                                                    00720000
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHC10T01),DISP=SHR                  00730000
//**********************************************************************00740000
//*                 F I N   Z M H C P D 1 0                            *00750000
//**********************************************************************00760000
