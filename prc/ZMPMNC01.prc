//ZMPMNC01 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : AJ - AJENOS.                                        *
//* PROCESO      : ZMPMNC01.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : GENERA ARCHIVO DE DESCARGA DE LA TABLA ZMDT932 Y    *
//*                GENERA ARCHIVO PARA CAPTACION.                      *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 06 DE NOVIEMBRE DE 2013.                            *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZMNH0104.                                             *
//* UTILERIA   : ICETOOL.                                              *
//* OBJETIVO   : RUTINA PARA OBTENER EL MES DEL PROCESO.               *
//*--------------------------------------------------------------------*
//ZMNH0104 EXEC PGM=ICETOOL
//*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//*
//IN       DD DSN=ZIVA.ZME.CONTROL(ZMNH0124),DISP=SHR
//*
//T1       DD UNIT=VIO
//T2       DD SYSOUT=*
//*
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMNH0104),DISP=SHR
//CTL1CNTL DD DSN=ZIVA.ZME.CONTROL(ZMNH0114),DISP=SHR
//*
// IF (ZMNH0104.RC = 0) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZMNH0103.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : EXTRAE CLIENTE Y SALDO DE LA TABLA ZMDT932.           *
//*              -- MES ENERO --                                       *
//*--------------------------------------------------------------------*
//ZMNH0103 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMNH0103,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.MUVCAP.ZMDT932,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=20,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNH0103),DISP=SHR
// ELSE
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMNH0102.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : EXTRAE CLIENTE Y SALDO DE LA TABLA ZMDT932.           *
//*              -- RESTO DE MESES --                                  *
//*--------------------------------------------------------------------*
//ZMNH0102 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMNH0102,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.MUVCAP.ZMDT932,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=20,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNH0102),DISP=SHR
// ENDIF
//*--------------------------------------------------------------------*
//* PASO       : ZMNH0101.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA Y SUMA EL SALDO  ADEUDADO POR NUMERO DE CUENTA *
//*              Y GENERA ARCHIVO CON EL N MERO DE CUENTA Y LA SUMA    *
//*              DEL SALDO.                                            *
//*--------------------------------------------------------------------*
//ZMNH0101 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.MUVCAP.ZMDT932,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.MUVCAP.UGSUM,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=20,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNH0101),DISP=SHR
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPMNC01                        *
//*--------------------------------------------------------------------*
