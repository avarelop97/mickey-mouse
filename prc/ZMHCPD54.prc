//ZMHCPD54 PROC                                                         00000100
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MIGRACION DE SUCURSALES >>                  * 00000500
//*   APLICACION       :  MODULO UNICO DE VALORES CASA BOLSA          * 00000600
//*   JCL              :  SIVAXMIG                                    * 00000700
//*   CADENA           :  ZMJLPD44  --> ZMHCPD54  (CAPAS)             * 00000800
//*   OBJETIVO         :  REFORMATEA Y ORDENA LOS ARCH. MUV Y AS400   * 00000900
//*                       Y LOS TRANSMITE A UN SERVIDOR               * 00001000
//*   REPORTE          :  NINGUNO                                     * 00001100
//*   CORRE            :  DESPUES DE ZMJLPD44                         * 00001200
//*   CORRE ANTES DE   :  NINGUNO                                     * 00001300
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           * 00001400
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     * 00001500
//*   FECHA            :  ABRIL /2007                                 * 00001600
//********************************************************************* 00001700
//*                                                                     00001800
//**********************************************************************00001900
//*PHC54P04 : EJECUTA PROGRAMA ZM4DH054: CAPAS                         *00002000
//**********************************************************************00002100
//PHC54P04 EXEC PGM=IKJEFT01                                            00002200
//ZMH54EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOCAP,DISP=SHR                    00002300
//ZMH54EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MCAPAST,DISP=SHR                 00002400
//ZMH54SA1 DD DSN=MXCP.ZM.FIX.AS400.CAPAS,                              00002500
//         DISP=(NEW,CATLG,DELETE),                                     00002600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=144,BLKSIZE=0),                 00002700
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00002800
//ZMH54SA2 DD DSN=MXCP.ZM.FIX.MUV.CAPAS,                                00002900
//         DISP=(NEW,CATLG,DELETE),                                     00003000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=110,BLKSIZE=0),                 00003100
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00003200
//S1DLINC0 DD SYSOUT=*                                                  00003300
//SYSOUT   DD SYSOUT=*                                                  00003400
//SYSPRINT DD SYSOUT=*                                                  00003500
//SYSABOUT DD SYSOUT=*                                                  00003600
//SYSDBOUT DD SYSOUT=*                                                  00003700
//SYSTSPRT DD SYSOUT=*                                                  00003800
//QRLSDB2  DD SYSOUT=*                                                  00003900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC54T01),DISP=SHR                   00004000
//*                                                                     00004100
//**********************************************************************00004200
//*  PHC54P03  ORDENA EL ARCHIVO DE MUV                                *00004300
//*  PROGRAMA:     ICEMAN                                              *00004400
//**********************************************************************00004500
//PHC54P03 EXEC PGM=ICEMAN,COND=(4,LT)                                  00004600
//SYSOUT   DD SYSOUT=*                                                  00004700
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.CAPAS,DISP=SHR                        00004800
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.CAPAS.ORDXSUC,                        00004900
//         DISP=(NEW,CATLG,DELETE),                                     00005000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=110,BLKSIZE=0),                 00005100
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00005200
//SYSPRINT DD SYSOUT=*                                                  00005600
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC54T02),DISP=SHR                   00005700
//*                                                                     00005800
//**********************************************************************00005900
//*  PHC54P02  ORDENA EL ARCHIVO DE AS400                              *00006000
//*  PROGRAMA:     ICEMAN                                              *00006100
//**********************************************************************00006200
//PHC54P02 EXEC PGM=ICEMAN,COND=(4,LT)                                  00006300
//SYSOUT   DD SYSOUT=*                                                  00006400
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.CAPAS,DISP=SHR                      00006500
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.CAPAS.ORDXSUC,                      00006600
//         DISP=(NEW,CATLG,DELETE),                                     00006700
//         DCB=(DSORG=PS,RECFM=FB,LRECL=144,BLKSIZE=0),                 00006800
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00006900
//SYSPRINT DD SYSOUT=*                                                  00007300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC54T03),DISP=SHR                   00007400
//*                                                                     00007500
//**********************************************************************00007600
//*  PHC54P01: TRANSFIERE LOS 2 ARCHIVOS ORDENADOS                     *00007700
//*            HACIA EL SERVIDOR \\SBBV04\PUBLIC\SOCINV\               *00007800
//**********************************************************************00007900
//PHC54P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00008000
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00008100
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00008200
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00008300
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00008400
//DMPRINT   DD SYSOUT=*                                                 00008500
//SYSPRINT  DD SYSOUT=*                                                 00008600
//NDMCMDS   DD SYSOUT=*                                                 00008700
//SYSUDUMP  DD DUMMY                                                    00008800
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHC54T04),DISP=SHR                  00008900
//*                                                                     00009000
