//ZMHCPE80 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *00050000
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *00060000
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *00070000
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *00080000
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *00090000
//*                                                                    *00100000
//**********************************************************************00110000
//**********************************************************************00120000
//*                                                                    *00130000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00140000
//*                   CAPITALES                                        *00150000
//*                                                                    *00160000
//* PROCESO        :  ZMHCPE80                                         *00170001
//*                                                                    *00180000
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE ASIGNACIONES Y   *00190000
//*                   ORDENES DE CAPITALES.                            *00200000
//* CORRE                                                              *00210000
//* ANTES DE       :  XXXXXXXX                                         *00220000
//*                                                                    *00230000
//* A PARTIR DE    : XX:XX HRS.                                        *00240000
//* HASTA          : XX:XX HSR.                                        *00250000
//*                                                                    *00260000
//* REALIZO        :  J. JAIME FLORES ESTRADA     -   ASATECK   -      *00270000
//* FECHA          :  AGOSTO 2002.                                     *00280000
//*                                                                    *00290000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EVENTUALMENTE      *00300001
//*                                                                    *00310000
//**********************************************************************00320000
//*                                                                     00330000
//********************************************************************* 00331002
//*                                                                   * 00332002
//*  PASO: 06    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  * 00333009
//*              EN ARCHIVO SECUENCIAL                                * 00334002
//*                                                                   * 00335002
//*  SECUENCIA: 1                                           ZM3DG001  * 00336003
//*                                                                   * 00337002
//********************************************************************* 00338002
//PHC80P06 EXEC PGM=ZM3DG001,                                           00339014
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00339102
//*                                                                     00339202
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..PATR,                       00339513
//            DISP=(NEW,CATLG,DELETE),                                  00339602
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00339702
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00339802
//SYSTSPRT DD SYSOUT=*                                                  00339902
//SYSPRINT DD SYSOUT=*                                                  00340002
//SYSOUT   DD SYSOUT=*                                                  00340102
//SYSDBOUT DD SYSOUT=*                                                  00340202
//SYSABOUT DD SYSOUT=*                                                  00340302
//SYSUDUMP DD SYSOUT=*                                                  00340402
//*                                                                     00340502
//**********************************************************************00341000
//*                        -- ZM3DG010--                               *00350009
//* PASO 05 SECUENCIA 02                                               *00360009
//* OBJETIVO       :  GENERA CODIGO DE RETORNO DE ACUERDO A LA EMPRESA *00370009
//*                   CBP ==> RC=1 OTRA ==> RC=2                       *00380009
//**********************************************************************00410000
//PHC80P05 EXEC PGM=ZM3DG010,COND=(4,LT)                                00420014
//*                                                                     00421002
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..PATR,DISP=SHR               00431013
//*                                                                     00432002
//SYSTSPRT DD  SYSOUT=*                                                 00540014
//SYSPRINT DD  SYSOUT=*                                                 00550014
//SYSOUT   DD  SYSOUT=*                                                 00560014
//SYSDBOUT DD  SYSOUT=*                                                 00570014
//SYSABOUT DD  DUMMY                                                    00580000
//SYSUDUMP DD  DUMMY                                                    00590000
//*                                                                     00601003
//**********************************************************************00602009
//*                        -- ZM4DHU8A--                               *00603009
//* PASO 04 SECUENCIA 03                                               *00604009
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE OPERACIONES Y    *00605009
//*                   ORDENES DE CAPITALES.                            *00606009
//**********************************************************************00607009
//PHC80P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00608014
//*                                                                     00609009
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..PATR,DISP=SHR               00609313
//*                                                                     00609409
//VOBU80A1 DD DSN=MXCP.ZM.FIX.E&EMP..ASIGN.CNBV,                        00609513
//           DISP=(NEW,CATLG,DELETE),                                   00609609
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=300,BLKSIZE=0),              00609709
//           UNIT=3390,                                                 00609809
//           SPACE=(CYL,(10,5),RLSE)                                    00609909
//*                                                                     00610009
//VOBU80A2 DD DSN=MXCP.ZM.FIX.E&EMP..ORDEN.CNBV,                        00610113
//           DISP=(NEW,CATLG,DELETE),                                   00610209
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=310,BLKSIZE=0),              00610309
//           UNIT=3390,                                                 00610409
//           SPACE=(CYL,(10,5),RLSE)                                    00610509
//*                                                                     00610609
//SYSTSPRT DD  SYSOUT=*                                                 00610714
//SYSPRINT DD  SYSOUT=*                                                 00610814
//SYSOUT   DD  SYSOUT=*                                                 00610914
//SYSDBOUT DD  SYSOUT=*                                                 00611014
//SYSABOUT DD  DUMMY                                                    00611109
//SYSUDUMP DD  DUMMY                                                    00611209
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHC80P04),DISP=SHR                   00611313
//*                                                                     00611409
//**********************************************************************00612009
//*        AVISO EN CASO DE ERROR A LA CONSOLA                         *00620003
//**********************************************************************00630003
// IF PHC80P04.RC GE 4 THEN                                             00640012
//PHC80P03 EXEC PGM=MAILOPER,                                           00650012
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00660012
//             ' PROCESO GEN CNBV TERMINO MAL.CONTESTAR SI ',           00670012
//             'PARA TERMINAR')                                         00680012
// ENDIF                                                                00690012
//**********************************************************************00700003
//* PROGRAMA: DMBATCH PARA TRANSFERIR ARCHIVOS BCM                     *00710004
//**********************************************************************00720003
// IF  PHC80P05.RC EQ 2 & PHC80P04.RC LT 4 THEN                         00721011
//PHC80P02 EXEC PGM=DMBATCH,COND=(4,LT)                                 00730004
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00740003
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00750003
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00760003
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00770003
//DMPRINT   DD SYSOUT=*                                                 00780003
//SYSPRINT  DD SYSOUT=*                                                 00790003
//NDMCMDS   DD SYSOUT=*                                                 00800003
//SYSUDUMP  DD DUMMY                                                    00810003
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(PHC80P02),DISP=SHR                  00830013
// ENDIF                                                                00831005
//**********************************************************************00840004
//* PROGRAMA: DMBATCH PARA TRANSFERIR ARCHIVOS CBP                     *00850004
//**********************************************************************00860004
// IF  PHC80P05.RC EQ 1 & PHC80P04.RC LT 4 THEN                         00861011
//PHC80P01 EXEC PGM=DMBATCH,COND=(4,LT)                                 00870004
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00880004
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00890004
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00900004
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00910004
//DMPRINT   DD SYSOUT=*                                                 00920004
//SYSPRINT  DD SYSOUT=*                                                 00930004
//NDMCMDS   DD SYSOUT=*                                                 00940004
//SYSUDUMP  DD DUMMY                                                    00950004
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(PHC80P01),DISP=SHR                  00970013
// ENDIF                                                                00980005
