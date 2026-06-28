//ZMLLATC1 PROC
//*--------------------------------------------------------------------*
//* OBJETIVO     : GENERA ARCHIVO DE SALDOS CON LA INFORMACION DEL     *
//*                PERIODO ANTERIOR                                    *
//* FECHA        : 07-09-2016                                          *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : PHATC106                                               *
//*   OBJETIVO: GENERA TARJETAS DE CONTROL DINAMICAS PARA REALIZAR     *
//*             LA DESCARGA DE LAS TABLAS DE ZMDT882 CON SALDOS ANUAL  *
//*                     -- ZM4DFA77 --                                 *
//*--------------------------------------------------------------------*
//PHATC106 EXEC PGM=IKJEFT01
//*
//SZMDT882 DD DSN=MXCP.ZM.FIX.TARJETA.SZMDT882.UNLOAD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHATC306),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHATC104                                               *
//*   OBJETIVO: REALIZA DESCARGA DE LA TABLA DE ZMDT882                *
//*--------------------------------------------------------------------*
//PHATC104 EXEC PGM=ADUUMAIN,COND=(04,LT),
//         PARM='MXP1,PHATC104,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDT882.UNLOAD.SALDOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.TARJETA.SZMDT882.UNLOAD,DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHATC102                                               *
//*   OBJETIVO: GENERA ARCHIVO DE SALDOS DEL PERIODO SOLICITADO        *
//*--------------------------------------------------------------------*
//PHATC102 EXEC PGM=ZM3DFA72,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ZMDT882.UNLOAD.SALDOS,DISP=SHR
//*
//SALDOS   DD DSN=MXCP.ZM.FIX.SALDOS.FATCA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLLATC1                        *
//*--------------------------------------------------------------------*
