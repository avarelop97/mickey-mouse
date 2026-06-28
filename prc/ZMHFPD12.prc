//ZMHFPD12 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//**********************************************************************00000310
//*                     C A S A   D E  B O L S A                       *00000400
//*                     ========================                       *00000500
//*                    <<SOCIEDADES DE INVERSION>>                     *00000600
//*                                                                    *00000700
//*   APLICACION:  ZM GENERADOR DE ARCHIVO DE WARRANTS                 *00000800
//*                                                                    *00000900
//*   OBJETIVO  :  GENERACION DE ARCHIVO DE WARRANTS CON NOMBRE DE     *00001000
//*                CLIENTE Y RFC                                       *00001100
//*                                                                    *00001200
//*   REALIZACION : CDA INFORMATICA                                    *00001300
//*                                                                    *00001400
//*   FECHA:  NOVIEMBRE 2009                                           *00001500
//*                                                                    *00001600
//**********************************************************************00001700
//*                      LOG DE MODIFICACIONES                         *00001800
//**********************************************************************00001900
//**********************************************************************00002000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002100
//*--------------------------------------------------------------------*00002200
//*      |          |       |        |                                 *00002300
//**********************************************************************00002400
//* ------- ------- ---------- ----------------------------------------*00002410
//* JGF01   XME1788 20200603  -SE MIGRAN LAS TRANSFERENCIAS DEL        *00002420
//*                            SERVIDOR PUBLIC.                        *00002430
//*                           -SE CREA UN PASO POR TRANSFERENCIA.      *00002440
//* ------- ------- ---------- ----------------------------------------*00002450
//**********************************************************************00002600
//* PASO:        PHF03P02                                              *00002700
//* DESCRIPCION: SORTEA LA INFORMACION POR ITIPOVAL 55 Y 56 DEL ARCHIVO*00002800
//*              EDITADO DE LA INTERFAZ CONTABLE                       *00002900
//**********************************************************************00003000
//*                                                                     00003100
//PHF03P02 EXEC PGM=SYNCSORT                                            00003200
//SYSOUT   DD SYSOUT=*                                                  00003300
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.INEDIT.ACECMV2,DISP=SHR           00003400
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.INEDIT.ACECMV2.WARPREV,           00003500
//            DISP=(NEW,CATLG,DELETE),                                  00003600
//            DCB=(DSORG=PS,LRECL=450,RECFM=FBA,BLKSIZE=0),             00003700
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)                      00003800
//SYSTSPRT DD SYSOUT=*                                                  00003900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF12T02),DISP=SHR                   00004000
//*                                                                     00004100
//**********************************************************************00004200
//* PASO:        PHF03P01                                              *00004300
//* DESCRIPCION: GENERACION DE ARCHIVO DE WARRANTS CON DATOS DE CLIENTE*00004400
//*              Y RFC                                                 *00004500
//**********************************************************************00004600
//*                                                                     00004700
//PHF03P01 EXEC PGM=ZM3DU834,COND=(4,LT)                                00004800
//ARCHSAL  DD DSN=MXC&AMB..ZM.FIX.ECO.INEDIT.ACECMV2.WARRANT,           00004900
//            DISP=(NEW,CATLG,DELETE),                                  00005000
//            DCB=(DSORG=PS,LRECL=515,RECFM=FBA,BLKSIZE=0),             00005100
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)                      00005200
//*                                                                     00005300
//SYSTSPRT DD SYSOUT=*                                                  00005400
//SYSPRINT DD SYSOUT=*                                                  00005500
//SYSOUT   DD SYSOUT=*                                                  00005600
//SYSDBOUT DD SYSOUT=*                                                  00005700
//SYSABOUT DD DUMMY                                                     00005800
//SYSUDUMP DD DUMMY                                                     00005900
//*                                                                     00006000
//AIC001   DD DSN=MXC&AMB..ZM.FIX.ECO.INEDIT.ACECMV2.WARPREV,           00006100
//            DISP=SHR                                                  00006200
//AMCP001  DD DSN=MXC&AMB..ZM.FIX.CON.AMCP,                             00006300
//            DISP=SHR                                                  00006400
//*                                                                     00006500
//*---------------------------------------------------------------------00006600
//* OBJETIVO: COPIA DEL ARCHIVO MXCP.ZM.FIX.ECO.INEDIT.ACECMV2.WARRANT  00006700
//*           A                 MXCP.ZM.FIX.ECO.INEDIT.ACECMV2.WARRANT1 00006800
//*---------------------------------------------------------------------00006900
//PHF03P1A EXEC PGM=ICEGENER,COND=(4,LT)                                00007000
//SYSUT1   DD  DSN=MXC&AMB..ZM.FIX.ECO.INEDIT.ACECMV2.WARRANT,DISP=SHR  00007100
//SYSUT2   DD  DSN=MXC&AMB..ZM.FIX.ECO.INEDIT.ACECMV2.WARRANT1,         00007200
//             DISP=(NEW,CATLG,DELETE),                                 00007300
//             DCB=(DSORG=PS,RECFM=FBA,LRECL=515,BLKSIZE=0),            00007400
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE)                       00007500
//SYSIN    DD  DUMMY                                                    00007600
//SYSTSPRT DD SYSOUT=*                                                  00007700
//SYSPRINT DD SYSOUT=*                                                  00007800
//SYSOUT   DD SYSOUT=*                                                  00007900
//SYSDBOUT DD SYSOUT=*                                                  00008000
//SYSABOUT DD SYSOUT=*                                                  00008100
//SYSUDUMP DD DUMMY                                                     00008200
//*                                                                     00008300
//*JGF INI                                                              00008310
//**********************************************************************00008400
//* PASO:        PHF03P00                                              *00008500
//* DESCRIPCION: TRANFERENCIA AL \\PLAFS02\B_PLA006\MM_BPIGO           *00008600
//**********************************************************************00008700
//**                                                                    00008800
//*PHF03P00 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)                 00008906
//**                                                                    00009000
//*STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                   00009100
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                 00009200
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                           00009300
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                    00009400
//*DMPRINT   DD SYSOUT=*                                                00009500
//*SYSDUMP   DD SYSOUT=*                                                00009600
//*SYSPRINT  DD SYSOUT=*                                                00009700
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHF12T00),DISP=SHR                 00009800
//*                                                                     00009900
//*--------------------------------------------------------------------*00009910
//* PASO     : PHF03P00                                                *00009920
//* PROGRAMA : DMBATCH                                                 *00009930
//* OBJETIVO : TRANSFERENCIA DE ARCHIVOS                               *00009940
//*--------------------------------------------------------------------*00009950
//PHF03P00 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)                  00009960
//*                                                                     00009970
//STEPLIB  DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                     00009980
//DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                   00009990
//DMPUBLIB DD DISP=SHR,DSN=SIVA.NDM.PROCESS                             00009991
//DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                      00009992
//DMPRINT  DD SYSOUT=*                                                  00009993
//SYSDUMP  DD SYSOUT=*                                                  00009994
//SYSPRINT DD SYSOUT=*                                                  00009995
//NDMCMDS  DD SYSOUT=*                                                  00009996
//SYSIN    DD *                                                         00009997
  SIGNON CASE(YES) ESF=NO                                               00009998
  SUBMIT PROC=MSAHDDX1                                -                 00009999
  &HOST=SYSP.PROP.HOST1                               -                 00010000
  &DIST=CDWVPCDTXREPOMX0                              -                 00010001
  &DSNI='MXCP.ZM.FIX.ECO.INEDIT.ACECMV2.WARRANT1'     -                 00010002
  &DSNO='\\NASBBVAMXP\B_PLA006\MM_BPIGO\MV2WARR.TXT'  -                 00010003
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'                            00010004
  SIGNOFF                                                               00010005
//*                                                                     00010006
//*JGF FIN                                                              00010007
//**********************************************************************00010010
//* PASO:        PHF03P0A                                              *00010100
//* DESCRIPCION: TRANFERENCIA AL SERVIDOR \\CBNOCFS03\C_CB003\         *00010200
//**********************************************************************00010300
//*                                                                     00010400
//PHF03P0A EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)                  00010506
//*                                                                     00010600
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                    00010700
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP                     00010800
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS                       00010900
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG                        00011000
//DMPRINT   DD SYSOUT=*                                                 00011100
//SYSDUMP   DD SYSOUT=*                                                 00011200
//SYSPRINT  DD SYSOUT=*                                                 00011300
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHF12T0A),DISP=SHR                  00011400
//*                                                                     00011500
//**********************************************************************00011600
//*                 FIN DE PROCEDIMIENTO ZMHFPD12                      *00011700
//**********************************************************************00011800
