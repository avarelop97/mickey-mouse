//ZMHTNE78 PROC                                                         00060000
//**********************************************************************00150000
//*                                                                    *00160000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00170000
//*                                                                    *00180000
//* PROCESO        :  ZMHTNE78 (JCL-CBHTNE78).                         *00190000
//*                                                                    *00220000
//* OBJETIVO       :  TRANSFIERE ARCHIVO DE VECTOR DE PRECIOS DE       *00230000
//*                   ASSET CONTROL.                                   *00240000
//* CORRE                                                              *00260000
//* ANTES DE       :  NINGUNO.                                         *00280000
//*                                                                    *00290000
//* DESPUES DE     :  SIVAXQAC (ZMASPD04)                              *00300000
//*                   GENERA QUERY DE VECTOR DE PRECIOS DE LA CARGA DE *00310000
//*                   ARCHIVO DE ASSET CONTROL.                        *00320000
//*                                                                    *00321000
//* PERIODICIDAD   :  CICLICO                                          *00330000
//*                                                                    *00340000
//* ELABORADO POR  :  DAMIAN LUNA PE¦A.                                *00350000
//*                                                                    *00350100
//**********************************************************************00360000
//*                                                                    *00370000
//* REGION DE OVERRIDES EN CASO DE CONTINGENCIA :                      *00380000
//*                                                                    *00390000
//**********************************************************************00410000
//* OBJETIVO : TRANSFERENCIA DE ARCHIVO CON QUERY DE LA CARGA DE       *00420000
//*            ASSET CONTROL ENVIADO AL SERVIDOR PLAFS02 (PLACOFT02)   *00430000
//*         -- DMBATCH --    SE INCLUYO STEPLIB EN EL PASO - 22/SEP/06 *00440000
//**********************************************************************00450000
//*--------------------------------------------------------------------*00450100
//*        L O G    D E   M O D I F I C A C I O N E S                  *00450200
//*--------------------------------------------------------------------*00450300
//*      MARCA      AUTOR   FECHA  DESCRIPCION                         *00450400
//*   -----------  ------- ------- ----------------------------------- *00450500
//*   @MEX001      XM09584 01FEB12 MODIFICAR TARJETA ZHT78T01          *00450600
//*--------------------------------------------------------------------*00450900
//* ------- ------- ---------- ----------------------------------------*00450910
//* JGF01   XME1788 20200904  -SE MIGRAN LAS TRANSFERENCIAS DEL        *00450920
//*                            SERVIDOR SBBV04 AL NASBBVAMXP.          *00450930
//* ------- ------- ---------- ----------------------------------------*00450940
//*--------------------------------------------------------------------*00451000
//*                                                                     00452000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA   00453000
//*  PHT78P02     EN ARCHIVO SECUENCIAL.                                00454000
//*                                                         ZM3DG001    00455000
//*-------------------------------------------------------------------- 00456000
//PHT78P02 EXEC PGM=ZM3DG001,                                           00457000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00458000
//PI601778  DD DUMMY                                                    00459000
//*                                                                     00459100
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHTNE78,               00459200
//            DISP=(NEW,CATLG,DELETE),                                  00459300
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00459400
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00459500
//*                                                                     00459600
//SYSTSPRT DD SYSOUT=*                                                  00459700
//SYSPRINT DD SYSOUT=*                                                  00459800
//SYSOUT   DD SYSOUT=*                                                  00459900
//SYSDBOUT DD SYSOUT=*                                                  00460000
//SYSABOUT DD DUMMY                                                     00460100
//SYSUDUMP DD DUMMY                                                     00460200
//*                                                                     00460300
//*--------------------------------------------------------------------*00460400
//*                                                                     00460500
//*  PASO:  2     REALIZA LA TRANSFERENCIA DEL ARCHIVO CON QUERY DE LA  00460600
//*  PHT78P01     CARGA DE PRECIOS DE ASSET CONTROL.                    00460700
//*                                                                     00460800
//*--------------------------------------------------------------------*00460900
//PHT78P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)                  00462000
//*                                                                     00470000
//STEPLIB  DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                     00480100
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00490100
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00500000
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00500100
//*                                                                     00500200
//DMPRINT   DD SYSOUT=*                                                 00500300
//SYSPRINT  DD SYSOUT=*                                                 00500400
//NDMCMDS   DD SYSOUT=*                                                 00500500
//SYSUDUMP  DD DUMMY                                                    00500600
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT78T01),DISP=SHR                  00500800
//*                                                                     00500900
//*@DTS01-I                                                             00500910
//*--------------------------------------------------------------------*00500911
//*                                                                     00500912
//*  PASO:  3     REALIZA LA TRANSFERENCIA DEL ARCHIVO CON QUERY DE LA  00500913
//*  PHT78P00     CARGA DE PRECIOS                                      00500914
//*                                                                     00500915
//*--------------------------------------------------------------------*00500916
//*PHT78P00 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)                 00500917
//**                                                                    00500918
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                   00500919
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                 00500920
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                           00500921
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                    00500922
//**                                                                    00500923
//*DMPRINT   DD SYSOUT=*                                                00500924
//*SYSPRINT  DD SYSOUT=*                                                00500925
//*NDMCMDS   DD SYSOUT=*                                                00500926
//*SYSUDUMP  DD DUMMY                                                   00500927
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT78T00),DISP=SHR                 00500928
//**                                                                    00500929
//*@DTS01-F                                                             00500930
//*--------------------------------------------------------------------*00500940
//*                                                                    *00500950
//*  PASO:  3     REALIZA LA TRANSFERENCIA DEL ARCHIVO CON QUERY DE LA *00500960
//*  PHT78P00     CARGA DE PRECIOS                                     *00500970
//*  NO SE TIENE CONOCIMIENTO DE USUARIOS QUE OCUPEN ESTE ARCHIVO      *00500980
//*  ABRIL 2025 -  OTM                                                 *00500990
//*                                                                    *00500991
//*--------------------------------------------------------------------*00500992
//*PHT78P00 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)                 00500993
//*                                                                     00500994
//*STEPLIB  DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                    00500995
//*DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00500996
//*DMPUBLIB DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00500997
//*DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00500998
//*DMPRINT  DD SYSOUT=*                                                 00500999
//*SYSDUMP  DD SYSOUT=*                                                 00501000
//*SYSPRINT DD SYSOUT=*                                                 00501001
//*NDMCMDS  DD SYSOUT=*                                                 00501002
//*SYSIN    DD *                                                        00501003
//*  SIGNON CASE(YES) ESF=NO                                            00501004
//*  SUBMIT PROC=MSAHDDX1                                             - 00501005
//*  &HOST=SYSP.PROP.HOST1                                            - 00501006
//*  &DIST=CDWVPCDTXREPOMX0                                           - 00501007
//*  &DSNI='MXCP.ZM.FIX.PRECIOS.CAPDIN'                               - 00501008
//*  &DSNO='\\NASBBVAMXP\PUBLIC\VALORES\PRECIOS\PCIOSIVA.TXT'         - 00501009
//*  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'                         00501010
//*  SIGNOFF                                                            00501011
//*                                                                     00501020
//*JGF01 FIN                                                            00501022
//*--------------------------------------------------------------------*00501030
//*                 F I N   Z M H T P E 6 5                             00501100
//*-------------------------------------------------------------------- 00501200
