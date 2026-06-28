//ZMJCAP01 PROC                                                         00010000
//*--------------------------------------------------------------------*00020000
//* PROYECTO     : ZM.                                                 *00030000
//* PROCESO      : ZMJCAP01.                                           *00040000
//* OBJETIVO     : HACER DESCARGA DE TABLAS POR UTILERIA               *00050000
//*--------------------------------------------------------------------*00060000
//*             L O G   D E   M O D I F I C A C I O N E S              *00070000
//*--------------------------------------------------------------------*00080000
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *00080100
//* ----------- --------- ------- ------------------------------------ *00080200
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *00080300
//*--------------------------------------------------------------------*00080400
//*---------------------------------------------------------------------00080501
//*     MODIFICO:       IGNACIO ESQUIVEL FLORES                         00080601
//*     FECHA   :       ABRIL 2023                                      00080701
//*     ASUNTO:         INCREMENTO FOLIO CONCEPT                        00080801
//*     MARCA :         SDATOOL-41254-IEF-INI (INICIO BLOQUE)           00080901
//*                     SDATOOL-41254-IEF-FIN (FIN    BLOQUE)           00081001
//*---------------------------------------------------------------------00081101
//*--------------------------------------------------------------------*00081200
//* PASO     :  ZMIPZ051                                               *00082000
//* PROGRAMA :  ADUUMAIN                                               *00083000
//* OBJETIVO :  DESCARGA DE LA TABLA MDDCST                            *00084000
//*--------------------------------------------------------------------*00085000
//ZMIPZ051 EXEC PGM=ADUUMAIN,                                           00085100
//            PARM='MXP1,ZMIPZ051,NEW,,MSGLEVEL(1)'                     00085200
//*                                                                     00085300
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00085400
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00085500
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00085600
//*                                                                     00085700
//SYSREC   DD DSN=MXCP.ZM.FIX.MONIT.MDDCST,                             00085800
//            DISP=(NEW,CATLG,DELETE),                                  00085900
//            UNIT=3390,BUFNO=30,                                       00086000
//            SPACE=(CYL,(1000,500),RLSE),                              00087000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=145,BLKSIZE=0)               00087100
//SYSPUNCH DD DUMMY                                                     00087200
//SYSTSPRT DD SYSOUT=*                                                  00087300
//UTPRINT  DD SYSOUT=*                                                  00087400
//SYSPRINT DD SYSOUT=*                                                  00087500
//SYSUDUMP DD SYSOUT=*                                                  00087600
//SYSOUT   DD SYSOUT=*                                                  00087700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCAPT01),DISP=SHR                   00089800
//*--------------------------------------------------------------------*00101700
//* PASO       : ZMIPZ052                                              *00101800
//* UTILERIA   : ICEMAN                                                *00101900
//* OBJETIVO   : ORDENA Y QUITA ESPACIOS A LA CUENTA TABLA MDDCST      *00102000
//*--------------------------------------------------------------------*00102100
//ZMIPZ052 EXEC PGM=ICEMAN,COND=(4,LT)                                  00102200
//*                                                                     00102300
//SORTIN   DD DSN=MXCP.ZM.FIX.MONIT.MDDCST,                             00102400
//            DISP=SHR                                                  00102500
//SORTOUT  DD DSN=MXCP.ZM.FIX.MONIT.MDDCST1,                            00102600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00102700
//            SPACE=(CYL,(1000,500),RLSE),                              00102800
//            DCB=(RECFM=FB,LRECL=145,BLKSIZE=0,DSORG=PS)               00102900
//*                                                                     00103000
//SYSOUT   DD SYSOUT=*                                                  00103100
//*                                                                     00103200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCAPT05),DISP=SHR                   00103300
//*                                                                     00103400
//*--------------------------------------------------------------------*00103500
//* PASO       : ZMIPZ053                                              *00103600
//* UTILERIA   : ICEMAN                                                *00103700
//* OBJETIVO   : ORDENA Y QUITA ESPACIOS A LA CUENTA TABLA MDDCST      *00103800
//*--------------------------------------------------------------------*00103900
//ZMIPZ053 EXEC PGM=ICEMAN,COND=(4,LT)                                  00104000
//*                                                                     00104100
//SORTIN   DD DSN=MXCP.ZM.FIX.MONIT.MDDCST1,                            00104200
//            DISP=SHR                                                  00104300
//SORTOUT  DD DSN=MXCP.ZM.FIX.MONIT.MDDCST2,                            00104400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00104500
//            SPACE=(CYL,(1000,500),RLSE),                              00104600
//            DCB=(RECFM=FB,LRECL=145,BLKSIZE=0,DSORG=PS)               00104700
//*                                                                     00104800
//SYSOUT   DD SYSOUT=*                                                  00104900
//*                                                                     00105000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCAPT09),DISP=SHR                   00105100
//*                                                                     00105200
//*--------------------------------------------------------------------*00105300
//* PASO       : ZMIPZ054                                              *00105400
//* UTILERIA   : ICEMAN                                                *00105500
//* OBJETIVO   : SUMA LA COLUMNA DE TITULOS                            *00105600
//*--------------------------------------------------------------------*00105700
//ZMIPZ054 EXEC PGM=ICEMAN,COND=(4,LT)                                  00105800
//*                                                                     00105900
//SORTIN   DD DSN=MXCP.ZM.FIX.MONIT.MDDCST2,                            00106000
//            DISP=SHR                                                  00106100
//SORTOUT  DD DSN=MXCP.ZM.FIX.MONIT.MDDCST3,                            00106200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00106300
//            SPACE=(CYL,(1000,500),RLSE),                              00106400
//            DCB=(RECFM=FB,LRECL=145,BLKSIZE=0,DSORG=PS)               00106500
//*                                                                     00106600
//SYSOUT   DD SYSOUT=*                                                  00106700
//*                                                                     00106800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCAPT07),DISP=SHR                   00106900
//*                                                                     00107000
//**********************************************************************00112500
//* PASO     : ZMIPZ055.                                               *00112600
//* OBJETIVO : GENERA PRIMERA PARTE DEL REPORTE                        *00112700
//*            (DIFERENCIAS ENTRE CAPAS Y CARTERA)                     *00112800
//* PROGRAMA : ZM4CAP01.                                               *00112900
//**********************************************************************00113000
//ZMIPZ055 EXEC PGM=IKJEFT01,COND=(4,LT)                                00113100
//*                                                                     00113200
//E1MMDCST DD DSN=MXCP.ZM.FIX.MONIT.MDDCST3,                            00113400
//            DISP=SHR                                                  00113500
//*                                                                     00113900
//*SDATOOL-41254-IEF-INI                                                00114001
//*S1REPORT DD DCB=(DSORG=PS,LRECL=152,BLKSIZE=0,RECFM=FB),             00114101
//S1REPORT DD DCB=(DSORG=PS,LRECL=157,BLKSIZE=0,RECFM=FB),              00114201
//*SDATOOL-41254-IEF-INI                                                00114301
//            DISP=(NEW,CATLG,DELETE),                                  00114401
//            SPACE=(CYL,(1000,500),RLSE),UNIT=3390,                    00114501
//            DSN=MXCP.ZM.FIX.MONIT.F&FECHA..REPORTE                    00114601
//*                                                                     00114701
//S2MONITO DD DCB=(DSORG=PS,LRECL=152,BLKSIZE=0,RECFM=FB),              00114801
//            DISP=(NEW,CATLG,DELETE),                                  00114901
//            SPACE=(CYL,(1000,500),RLSE),UNIT=3390,                    00115001
//            DSN=MXCP.ZM.FIX.MONIT.F&FECHA..MONITOR                    00115101
//*                                                                     00115201
//SYSTSPRT DD SYSOUT=*                                                  00115301
//SYSPRINT DD SYSOUT=*                                                  00115401
//SYSOUT   DD SYSOUT=*                                                  00115501
//SYSDBOUT DD SYSOUT=*                                                  00115601
//SYSABOUT DD SYSOUT=*                                                  00115701
//SYSUDUMP DD DUMMY                                                     00115801
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJCAPT04),DISP=SHR                   00115901
//*                                                                     00116000
//                                                                      00170000
