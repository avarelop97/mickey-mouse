//ZMHCPD56 PROC                                                         00000100
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MIGRACION DE SUCURSALES >>                  * 00000500
//*   APLICACION       :  MODULO UNICO DE VALORES CASA BOLSA          * 00000600
//*   JCL              :  SIVAXMIG                                    * 00000700
//*   CADENA           :  ZMJLPD46  --> ZMHCPD56  (REPORTOS)          * 00000800
//*   OBJETIVO         :  REFORMATEA Y ORDENA LOS ARCH. MUV Y AS400   * 00000900
//*                       Y LOS TRANSMITE A UN SERVIDOR               * 00001000
//*   REPORTE          :  NINGUNO                                     * 00001100
//*   CORRE            :  DESPUES DE ZMJLPD46                         * 00001200
//*   CORRE ANTES DE   :  NINGUNO                                     * 00001300
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           * 00001400
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     * 00001500
//*   FECHA            :  ABRIL /2007                                 * 00001600
//********************************************************************* 00001700
//*                                                                     00001800
//**********************************************************************00001900
//*PHC56P04 : EJECUTA PROGRAMA ZM4DH056: REPORTOS                      *00002000
//**********************************************************************00002100
//PHC56P04 EXEC PGM=IKJEFT01                                            00002200
//ZMH56EN1 DD DSN=MXCP.ZM.FIX.MIG061.ACOREP,DISP=SHR                    00002300
//ZMH56EN2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MREPORT,DISP=SHR                 00002400
//ZMH56SA1 DD DSN=MXCP.ZM.FIX.AS400.REPORTOS,                           00002500
//         DISP=(NEW,CATLG,DELETE),                                     00002600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),                 00002700
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00002800
//ZMH56SA2 DD DSN=MXCP.ZM.FIX.MUV.REPORTOS,                             00002900
//         DISP=(NEW,CATLG,DELETE),                                     00003000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=142,BLKSIZE=0),                 00003100
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00003200
//S1DLINC0 DD SYSOUT=*                                                  00003300
//SYSOUT   DD SYSOUT=*                                                  00003400
//SYSPRINT DD SYSOUT=*                                                  00003500
//SYSABOUT DD SYSOUT=*                                                  00003600
//SYSDBOUT DD SYSOUT=*                                                  00003700
//SYSTSPRT DD SYSOUT=*                                                  00003800
//QRLSDB2  DD SYSOUT=*                                                  00003900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC56T01),DISP=SHR                   00004000
//*                                                                     00004100
//**********************************************************************00004200
//*  PHC56P03  ORDENA EL ARCHIVO DE MUV                                *00004300
//*  PROGRAMA:     ICEMAN                                              *00004400
//**********************************************************************00004500
//PHC56P03 EXEC PGM=ICEMAN,COND=(4,LT)                                  00004600
//SYSOUT   DD SYSOUT=*                                                  00004700
//SORTIN   DD DSN=MXCP.ZM.FIX.MUV.REPORTOS,DISP=SHR                     00004800
//SORTOUT  DD DSN=MXCP.ZM.FIX.MUV.REPORTOS.ORDXSUC,                     00004900
//         DISP=(NEW,CATLG,DELETE),                                     00005000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=142,BLKSIZE=0),                 00005100
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00005200
//SYSPRINT DD SYSOUT=*                                                  00005600
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC56T02),DISP=SHR                   00005700
//*                                                                     00005800
//**********************************************************************00005900
//*  PHC56P02  ORDENA EL ARCHIVO DE AS400                              *00006000
//*  PROGRAMA:     ICEMAN                                              *00006100
//**********************************************************************00006200
//PHC56P02 EXEC PGM=ICEMAN,COND=(4,LT)                                  00006300
//SYSOUT   DD SYSOUT=*                                                  00006400
//SORTIN   DD DSN=MXCP.ZM.FIX.AS400.REPORTOS,DISP=SHR                   00006500
//SORTOUT  DD DSN=MXCP.ZM.FIX.AS400.REPORTOS.ORDXSUC,                   00006600
//         DISP=(NEW,CATLG,DELETE),                                     00006700
//         DCB=(DSORG=PS,RECFM=FB,LRECL=214,BLKSIZE=0),                 00006800
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00006900
//SYSPRINT DD SYSOUT=*                                                  00007300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC56T03),DISP=SHR                   00007400
//*                                                                     00007500
//**********************************************************************00007600
//*  PHC56P01: TRANSFIERE LOS 2 ARCHIVOS ORDENADOS                     *00007700
//*            HACIA EL SERVIDOR \\SBBV04\PUBLIC\SOCINV\               *00007800
//**********************************************************************00007900
//PHC56P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00008000
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00008100
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00008200
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00008300
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00008400
//DMPRINT   DD SYSOUT=*                                                 00008500
//SYSPRINT  DD SYSOUT=*                                                 00008600
//NDMCMDS   DD SYSOUT=*                                                 00008700
//SYSUDUMP  DD DUMMY                                                    00008800
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHC56T04),DISP=SHR                  00008900
//*                                                                     00009000
