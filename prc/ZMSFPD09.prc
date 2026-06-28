//ZMSFPD09 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCSFCD09                                         *00010006
//* OBJETIVO       :  GENERA LOS ARCHIVOS PARA CAMBIO DE PROMOTORES Y  *00010006
//*                   CENTROS RESPONSABLES PARA BG Y BAJAS Y ALTAS EN  *00010006
//*                   PERSONAS.                                        *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :  ZX16 Y HORA FIJA.                                *00010006
//* REALIZO        :  MARTIN SANTOS GONZALEZ                           *00010006
//* FECHA          :  DICIEMBRE DEL 2006                               *00010006
//* OBSERVACION    :  SE GENERAN LOS ARCHIVOS SOLAMENTE CUANDO EL      *00010006
//*                   APODERADO EJECUTE LA OPCION ZX16.                *00010006
//**********************************************************************00010006
//PSF09P03 EXEC PGM=ZM3DG001,                                           00300009
//         PARM=('&EMP','   ','   ','   ',)                             00310006
//SYSTSPRT DD SYSOUT=*                                                  00312006
//SYSPRINT DD SYSOUT=*                                                  00313006
//SYSOUT   DD SYSOUT=*                                                  00314006
//SYSDBOUT DD SYSOUT=*                                                  00315006
//SYSABOUT DD DUMMY                                                     00316006
//SYSUDUMP DD DUMMY                                                     00317006
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIE.E&EMP..ZMSFPD09,                      00319006
//            DISP=(NEW,CATLG,DELETE),                                  00320006
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00330006
//            UNIT=3390,                                                00340006
//            SPACE=(CYL,(2,1),RLSE)                                    00350008
//*                                                                     00950210
//*--------------------------------------------------------------------*00950310
//*   EJECUCION DEL PROGRAMA:  ZM4DS022                                *00950410
//*   GENERA ARCHIVO PARA BG DE CUENTAS QUE CAMBIAN DE C.R.            *00951006
//*--------------------------------------------------------------------*00950310
//PSF09P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00953006
//SYSTSPRT DD SYSOUT=*                                                  00953206
//ZMS022A1 DD DSN=MXCP.ZM.TMP.SIE.E&EMP..ZMSFPD09,DISP=SHR              00953306
//ZMS022A2 DD DSN=MXCP.ZM.TMP.SIE.E&EMP..CPROMBG,                       00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=24,RECFM=FB,BLKSIZE=0,DSORG=PS),               00953606
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00953708
//*ZMS022A3 DD DSN=MBVP.AJ.FIX.AMCP.PROD21,                             00953406
//ZMS022A3 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..CPROMBAJ,                      00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=512,RECFM=FB,BLKSIZE=0,DSORG=PS),              00953606
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)                        00953708
//*ZMS022A4 DD DSN=MBVP.AJ.FIX.ZM6CRX05.CTASOK,                         00953406
//ZMS022A4 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..CPROMALT,                      00953406
//            DISP=(NEW,CATLG,DELETE),                                  00953506
//            DCB=(LRECL=1071,RECFM=FB,BLKSIZE=0,DSORG=PS),             00953606
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)                        00953708
//SYSPRINT DD SYSOUT=*                                                  00953806
//SYSOUT   DD SYSOUT=*                                                  00953906
//SYSDBOUT DD SYSOUT=*                                                  00954006
//SYSABOUT DD SYSOUT=*                                                  00954106
//SYSUDUMP DD DUMMY                                                     00954206
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS9T02),DISP=SHR                   00954306
//*
//*--------------------------------------------------------------------*00941606
//* PROGRAMA: ICEMAN                SORT                               *00941706
//* OBJETIVO: SORTEAR ARCH PARA PASAR ULTIMO REG AL INICIO.            *00941806
//*--------------------------------------------------------------------*00942006
//PSF09P01 EXEC PGM=ICEMAN,COND=(4,LT)                                  00943006
//SYSOUT   DD SYSOUT=*                                                  00945006
//SORTIN   DD DSN=MXCP.ZM.TMP.SIE.E&EMP..CPROMBG,DISP=SHR               00946006
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.E&EMP..CPROMBG,                       00948006
//            DISP=(NEW,CATLG,DELETE),                                  00949006
//            DCB=(LRECL=24,RECFM=FB,BLKSIZE=0,DSORG=PS),               00949106
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00949208
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSFS9T01),DISP=SHR                   00950110
//*
//**********************************************************************00900006
//*                    F I N   Z M S F P D 0 9                         *00900006
//**********************************************************************00900006
