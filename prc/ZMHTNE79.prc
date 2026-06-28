//ZMHTNE79 PROC                                                         00060000
//**********************************************************************00150100
//*                                                                    *00160000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00170000
//*                                                                    *00180000
//* PROCESO        :  ZMHTNE79 (JCL-CBHTNE79).                         *00190000
//*                                                                    *00220000
//* OBJETIVO       :  TRANSFIERE ARCHIVO PLANO CON LA INFORMACION QUE  *00230000
//*                   FUE EXTRAIDA DE LA BASE DE DATOS DE SIVA.        *00240000
//* CORRE                                                              *00260000
//* ANTES DE       :  NINGUNO.                                         *00280000
//*                                                                    *00290000
//* DESPUES DE     :  SIVAXAH2 (ZMHLPE92)                              *00300000
//*                   GENERA ARCHIVO PLANO 'MXCP.ZM.FIX.ARCHIVO.PLUS'  *00310000
//*                   CON INFORMACION A ENVIAR A PLUS.                 *00320000
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
//* OBJETIVO : TRANSFERENCIA DE ARCHIVO CON LA INFORMACION EXTRAIDA    *00420000
//*            DE LA TABLA ZMDT765 PARA ENVIO A PLUS.                  *00430000
//*         -- DMBATCH --    SE INCLUYO STEPLIB EN EL PASO - 22/SEP/06 *00440000
//**********************************************************************00450000
//*--------------------------------------------------------------------*00451000
//*                                                                     00452000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA   00453000
//*  PHT79P02     EN ARCHIVO SECUENCIAL.                                00454000
//*                                                         ZM3DG001    00455000
//*-------------------------------------------------------------------- 00456000
//PHT79P02 EXEC PGM=ZM3DG001,                                           00457000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00458000
//PI601779  DD DUMMY                                                    00459000
//*                                                                     00459100
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHTNE79,               00459200
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
//*  PASO:  2     REALIZA LA TRANSFERENCIA DEL ARCHIVO CON INFORMACION  00460600
//*  PHT79P01     EXTRAIDA PARA ENVIO A PLUS.                           00460700
//*                                                                     00460800
//*--------------------------------------------------------------------*00460900
//PHT79P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00462000
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
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT79T01),DISP=SHR                  00500800
//*                                                                     00500900
//*--------------------------------------------------------------------*00501000
//*                 F I N   Z M H T P E 6 5                             00501100
//*-------------------------------------------------------------------- 00501200
