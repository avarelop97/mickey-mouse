//ZMPPGD30 PROC
//*--------------------------------------------------------------------*
//* PROCESO.: ZMPPGD30
//* OBJETIVO: DESCARGAR INFORMACION PRODUCTIVA DE LA TABLA ZMDT833     *
//*                                                                    *
//* REALIZO: ANGEL SANCHEZ OSORNO
//* FECHA  : AGOSTO 2024
//*====================================================================*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA TABLA ZMDT833                                   *
//*--------------------------------------------------------------------*
//ZMPPG250 EXEC PGM=ADUUMAIN,
//          PARM='MXP1,ZMPPG300,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.LOMBARDO.ZMDT833,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=84,BLKSIZE=0)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*
//*                     FIN DEL PRC ZMPPGD30                           *
//*--------------------------------------------------------------------*
