//ZMLLATC2 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMLLATC2.                                           *
//* OBJETIVO     : REALIZA EL LLENADO DE LA TABLA ZMDT882 CON LOS      *
//*                SALDOS CALCULADOS DURANTE EL A#O                    *
//* FECHA        : 07-09-2016                                          *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : PHATC104                                               *
//*   OBJETIVO: REALIZA DESCARGA DE LA TABLA DE ZMDT880                *
//*--------------------------------------------------------------------*
//PHATC204 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PHATC204,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDT880.UNLOAD.SALDOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHATC204),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHATC202                                               *
//*   OBJETIVO: REALIZA EL LLENADO DE LA TABLA ZMDT882 SALDOS ANUALES  *
//*             CON LA INFORMACION DE LA TABLA ZMDT880 SALDOS MENSUALES*
//*--------------------------------------------------------------------*
//PHATC202 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ZMDT880.UNLOAD.SALDOS,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHATC202),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLLATC2                        *
//*--------------------------------------------------------------------*
//*
