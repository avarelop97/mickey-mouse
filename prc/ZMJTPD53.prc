//ZMJTPD53 PROC                                                         00010000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                                                                    *00150015
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00160015
//*                                                                    *00170015
//*   OBJETIVO  :  GENERA ARCHVIO EN FORMATO DAT CON LOS PRECIOS       *00180015
//*                DE SIEFORES Y LO TRANSFIERE AL SERVIDOR NT.         *00190015
//*                                                                    *00200015
//*   ESTE PROC CORRESPONDE A LA OPCION 3 DE LA TRANSACCION Z110.      *00201017
//*                                                                    *00202017
//**********************************************************************00280000
//*                                                                    *00290000
//*  PASO 4: GENERA ARCHIVO CON PARAMETROS DE LA LINEA.                *00300003
//*                                                                    *00340000
//**********************************************************************00350000
//PJL53P04 EXEC PGM=ZM3DG000,                                           00360003
//         PARM=('&EMP','&SUC','&INT1','&INT2','&FEC',)                 00370000
//*                                                                     00380000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJTPD53,                   00410000
//            DISP=(NEW,CATLG,DELETE),                                  00420000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00430000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00440000
//*                                                                     00380000
//SYSTSPRT DD SYSOUT=*,                                                 00450000
//            DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*                                                  00470000
//SYSOUT   DD SYSOUT=*                                                  00480000
//SYSDBOUT DD SYSOUT=*                                                  00490000
//SYSABOUT DD DUMMY                                                     00500000
//SYSUDUMP DD DUMMY                                                     00510000
//*                                                                     00520000
//**********************************************************************00880000
//*                                                                    *00890000
//*  PASO 3: GENERA ARCHIVO CON PRECIOS DE AFORES.                     *00900003
//*                                                                    *00910000
//**********************************************************************00940000
//PJL53P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00950003
//*                                                                     00970000
//S1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PREC.SFTRHISD,              00990006
//            DISP=(NEW,CATLG,DELETE),                                  01000005
//            SPACE=(CYL,(2,1),RLSE),                                   01001005
//            DCB=(DSORG=PS,RECFM=FB,LRECL=211,BLKSIZE=0),              01002005
//            UNIT=3390                                                 01003005
//*                                                                     01010000
//SYSTSPRT DD SYSOUT=*,                                                 01020000
//            DCB=BLKSIZE=0                                             01030000
//SYSPRINT DD SYSOUT=*                                                  01040000
//SYSOUT   DD SYSOUT=*                                                  01050000
//SYSDBOUT DD SYSOUT=*                                                  01060000
//SYSABOUT DD DUMMY                                                     01070000
//SYSUDUMP DD DUMMY                                                     01080000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL53T03),DISP=SHR                   01090003
//*                                                                     01100000
//**********************************************************************01110000
//*                                                                    *01120000
//*  PASO 2: GENERA SYSIN PARA TRANSFERENCIA DE ARCHIVO HISTORICO.     *01130003
//*                                                                    *01140000
//**********************************************************************01150000
//PJL53P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                01160003
//*                                                                     01180000
//E1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJTPD53,DISP=SHR           01190000
//S1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJTPD53.SYSIN,             01191000
//            DISP=(NEW,CATLG,DELETE),                                  01192000
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),               01193004
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          01194000
//*                                                                     01200000
//SYSTSPRT DD SYSOUT=*,                                                 01210000
//            DCB=BLKSIZE=0                                             01220000
//SYSPRINT DD SYSOUT=*                                                  01230000
//SYSOUT   DD SYSOUT=*                                                  01240000
//SYSDBOUT DD SYSOUT=*                                                  01250000
//SYSABOUT DD DUMMY                                                     01260000
//SYSUDUMP DD DUMMY                                                     01270000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL53T02),DISP=SHR                   01280003
//*                                                                     01290000
//**********************************************************************01300003
//*                                                                    *01310003
//*  PASO 1: REALIZA LA TRANSFERENCIA DEL ARCHIVO HISTORICO.           *01320003
//*                                                                    *01330003
//**********************************************************************01340003
//PJL53P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)                  01350003
//*                                                                     01360003
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSIN     DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJTPD53.SYSIN,DISP=SHR    01450003
//*
//******************************************************************
//*
//*  PASO 0: BORRA ZMDT900.
//*
//******************************************************************
//PJL53P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,
//            DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL53T00),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*  ACTUALIZA CTLPROC                                                 *
//*                                                                    *
//**********************************************************************
//PJL53P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,
//            DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL53T0A),DISP=SHR
//*
