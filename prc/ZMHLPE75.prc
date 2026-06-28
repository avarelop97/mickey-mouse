//ZMHLPE75 PROC                                                         00010001
//**********************************************************************00120000
//*                                                                    *00130000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00140000
//*                   CAPITALES                                        *00150000
//*                                                                    *00160000
//* PROCESO        :  ZMHLPE75                                         *00170001
//*                                                                    *00180000
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE ASIGNACIONES Y   *00190000
//*                   ORDENES DE CAPITALES.                            *00200000
//* CORRE                                                              *00210000
//* ANTES DE       :  A PETICION DEL USUARIO OPCION 169.               *00220001
//*                                                                    *00230000
//* A PARTIR DE    : XX:XX HRS.                                        *00240000
//* HASTA          : XX:XX HSR.                                        *00250000
//*                                                                    *00260000
//* REALIZO        :  AZERTIA(F.V.C.).                                 *00270001
//* FECHA          :  JULIO 2005.                                      *00280001
//*                                                                    *00290000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EVENTUALMENTE A PE-*00300001
//*                   TICION DEL USUARIO.                              *00310001
//*                                                                    *00311001
//**********************************************************************00320000
//*                  BITACORA DE MODIFICACIONES.                       *00330001
//**********************************************************************00331001
//*                                                                    *00332001
//*                                                                    *00332101
//**********************************************************************00332201
//*                                                                    *00332301
//*  PASO: 06    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA   *00333001
//*              EN ARCHIVO SECUENCIAL                                 *00334001
//*                                                                    *00335001
//*  SECUENCIA: 1                                           ZM3DG001   *00336001
//*                                                                    *00337001
//**********************************************************************00338001
//PHL75P06 EXEC PGM=ZM3DG001,                                           00339001
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00339100
//*                                                                     00339200
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..PATR,                       00339500
//            DISP=(NEW,CATLG,DELETE),                                  00339600
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00339700
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00339800
//SYSTSPRT DD SYSOUT=*                                                  00339900
//SYSPRINT DD SYSOUT=*                                                  00340000
//SYSOUT   DD SYSOUT=*                                                  00340100
//SYSDBOUT DD SYSOUT=*                                                  00340200
//SYSABOUT DD SYSOUT=*                                                  00340300
//SYSUDUMP DD SYSOUT=*                                                  00340400
//*                                                                     00340500
//**********************************************************************00341000
//*                        -- ZM3DG010--                               *00350000
//* PASO 05 SECUENCIA 02                                               *00360000
//* OBJETIVO       :  GENERA CODIGO DE RETORNO DE ACUERDO A LA EMPRESA *00370000
//*                   CBP ==> RC=1 OTRA ==> RC=2                       *00380000
//**********************************************************************00410000
//PHL75P05 EXEC PGM=ZM3DG010,COND=(4,LT)                                00420001
//*                                                                     00421000
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..PATR,DISP=SHR               00431000
//*                                                                     00432000
//SYSTSPRT DD  SYSOUT=*                                                 00540000
//SYSPRINT DD  SYSOUT=*                                                 00550000
//SYSOUT   DD  SYSOUT=*                                                 00560000
//SYSDBOUT DD  SYSOUT=*                                                 00570000
//SYSABOUT DD  DUMMY                                                    00580000
//SYSUDUMP DD  DUMMY                                                    00590000
//*                                                                     00601000
//**********************************************************************00602000
//*                        -- ZM4EGU78--                               *00603001
//* PASO 04 SECUENCIA 03                                               *00604000
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE OPERACIONES Y    *00605000
//*                   ORDENES DE CAPITALES.                            *00606000
//**********************************************************************00607000
//PHL75P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00608001
//*                                                                     00609000
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..PATR,DISP=SHR               00609300
//*                                                                     00609400
//VOBU78A1 DD DSN=MXCP.ZM.FIX.E&EMP..OPERACS.CNBV,                      00609501
//           DISP=(NEW,CATLG,DELETE),                                   00609600
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=370,BLKSIZE=0),              00609701
//           UNIT=3390,                                                 00609800
//           SPACE=(CYL,(10,5),RLSE)                                    00609900
//*                                                                     00610000
//VOBU78A2 DD DSN=MXCP.ZM.FIX.E&EMP..ORDENE.CNBV,                       00610101
//           DISP=(NEW,CATLG,DELETE),                                   00610200
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=283,BLKSIZE=0),              00610301
//           UNIT=3390,                                                 00610400
//           SPACE=(CYL,(10,5),RLSE)                                    00610500
//*                                                                     00610600
//SYSTSPRT DD  SYSOUT=*                                                 00610700
//SYSPRINT DD  SYSOUT=*                                                 00610800
//SYSOUT   DD  SYSOUT=*                                                 00610900
//SYSDBOUT DD  SYSOUT=*                                                 00611000
//SYSABOUT DD  DUMMY                                                    00611100
//SYSUDUMP DD  DUMMY                                                    00611200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL75P04),DISP=SHR                   00611301
//*                                                                     00611400
//**********************************************************************00612000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                         *00620000
//**********************************************************************00630000
// IF PHL75P04.RC GE 4 THEN                                             00640001
//PHL75P03 EXEC PGM=MAILOPER,                                           00650001
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00660000
//             ' PROCESO GEN CNBV TERMINO MAL.CONTESTAR SI ',           00670000
//             'PARA TERMINAR')                                         00680000
// ENDIF                                                                00690000
//**********************************************************************00700000
//* PROGRAMA: DMBATCH PARA TRANSFERIR ARCHIVOS BCM                     *00710000
//**********************************************************************00720000
// IF  PHL75P05.RC EQ 2 & PHL75P04.RC LT 4 THEN                         00721001
//PHL75P02 EXEC PGM=DMBATCH,COND=(4,LT)                                 00730001
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00740003
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00750003
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00760000
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00770003
//DMPRINT   DD SYSOUT=*                                                 00780000
//SYSPRINT  DD SYSOUT=*                                                 00790000
//NDMCMDS   DD SYSOUT=*                                                 00800000
//SYSUDUMP  DD DUMMY                                                    00810000
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(PHL75P02),DISP=SHR                  00830001
// ENDIF                                                                00831000
//**********************************************************************00840000
//* PROGRAMA: DMBATCH PARA TRANSFERIR ARCHIVOS CBP                     *00850000
//**********************************************************************00860000
// IF  PHL75P05.RC EQ 1 & PHL75P04.RC LT 4 THEN                         00861001
//PHL75P01 EXEC PGM=DMBATCH,COND=(4,LT)                                 00870001
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00880002
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00890002
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00900000
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00910002
//DMPRINT   DD SYSOUT=*                                                 00920000
//SYSPRINT  DD SYSOUT=*                                                 00930000
//NDMCMDS   DD SYSOUT=*                                                 00940000
//SYSUDUMP  DD DUMMY                                                    00950000
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(PHL75P01),DISP=SHR                  00970001
// ENDIF                                                                00980000
