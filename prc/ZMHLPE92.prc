//ZMHLPE92 PROC                                                         00010000
//*--------------------------------------------------------------------*00020300
//*                                                                    *00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                     <<     HOST TO HOST    >>                      *00060000
//*                                                                    *00080000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00090000
//*                                                                    *00100000
//*   PROCEDIMIENTO    : ZMHLPE92.                                     *00110000
//*                                                                    *00120000
//*   JCL              : CBHLPD92.                                     *00130000
//*                      SIVAXCIH.                                     *00130100
//*                                                                    *00140000
//*   LO EJECUTA       : A SOLICITUD DE DYD EN CASO DE CONTIGENCIA.    *00150000
//*                                                                    *00160000
//*   OBJETIVO         : GENERAR ARCHIVO DE LA TABLA DE ENVIO A PLUS   *00170000
//*                      (ZMDT765) EN FORMATO TXT.                     *00180000
//*                                                                    *00210000
//*   FECHA            : 20/NOVIEMBRE/09.                              *00220000
//*                                                                    *00230000
//*   PERIODICIDAD     : EVENTUALMENTE.                                *00240000
//*                                                                    *00250000
//*   AUTOR            : DAMIAN LUNA PE#A.                             *00260000
//*                                                                    *00270000
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUATAR MAS DE  *00280000
//*                      UNA VEZ DURANTE EL DIA.                       *00290000
//*                                                                    *00300000
//*--------------------------------------------------------------------*00300100
//* PROGRAMA: ZM3DG001                                                  00300200
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR          00300300
//* NO ACTUALIZA TABLAS.                                                00300400
//*-------------------------------------------------------------------- 00300500
//PHL04P02 EXEC PGM=ZM3DG001,                                           00300600
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00300700
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE92,                   00300800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00300900
//            SPACE=(CYL,(20,10),RLSE),                                 00301000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)                00301100
//SYSTSPRT DD SYSOUT=*                                                  00301200
//SYSPRINT DD SYSOUT=*                                                  00301300
//SYSOUT   DD SYSOUT=*                                                  00301400
//SYSDBOUT DD SYSOUT=*                                                  00301500
//SYSABOUT DD SYSOUT=*                                                  00301600
//SYSUDUMP DD DUMMY                                                     00301700
//*                                                                     00301800
//*-------------------------------------------------------------------- 00510000
//* PROGRAMA: ZM4OHG92                                                  00520000
//* FUNCION : GENERA ARCHIVO PARA SE ENVIADO A PLUS.                    00530000
//*-------------------------------------------------------------------- 00560000
//PHL04P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00570000
//PI601765  DD DUMMY                                                    00580000
//*                                                                     00590000
//ZMOH75P1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE92,DISP=SHR           00600000
//ZMOH75R1 DD DSN=MXCP.ZM.FIX.ARCHIVO.PLUS,                             00610000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00610100
//            SPACE=(CYL,(2,1),RLSE),                                   00620000
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=198,DSORG=PS)               00630000
//*                                                                     00640000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00650000
//SYSPRINT DD SYSOUT=*                                                  00660000
//SYSOUT   DD SYSOUT=*                                                  00670000
//SYSDBOUT DD SYSOUT=*                                                  00680000
//SYSABOUT DD SYSOUT=*                                                  00690000
//SYSUDUMP DD DUMMY                                                     00700000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL92T01),DISP=SHR                   00710000
//*                                                                     00720000
//**********************************************************************01150000
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROLM QUE TERMINO             *01160000
//*            GENERACION DE ARCHIVO PARA TRANSFERENCIA.               *01170000
//**********************************************************************01180000
//*PHP04P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCIH_IN_OK WDATE',      01190000
//*         COND=(4,LT)                                                 01200000
//*STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.MEX1.TGT.LOAD                     01210100
//*DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.MEXC.TGT.PARM                     01220000
//*         DD DISP=SHR,DSN=SYS3.IOAI.MEXC.TGT.IOAENV                   01230000
//*DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSCBBV.DATA.LOG                  01240000
//*DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSCBBV.DATA.NRS                  01250000
//**                                                                    01260000
//*PRTDBG   DD SYSOUT=*                                                 01270000
//*SYSPRINT DD DUMMY                                                    01280000
//*SYSUDUMP DD DUMMY                                                    01290000
//*DAPRINT  DD SYSOUT=*                                                 01300000
//*DACNDIN  DD DDNAME=SYSIN                                             01310000
//**                                                                    01320000
