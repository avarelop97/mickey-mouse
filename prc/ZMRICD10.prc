//ZMRICD10 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - RIC.                                           *
//* PROCESO      : ZMRICD10.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : PROCESAR ARCHIVO DE BLOQUEOS RIC PARA EMPLEADOS CON *
//*                CONOCIMIENTO DE INFORMACION PRIVILEGIADA            *
//* REALIZO      : CAPGEMINI                                           *
//* FECHA        : MAYO 2021.                                          *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*
//**********************************************************************
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT608 Y CUENTA PARA RIC          *
//**********************************************************************
//ZRC10T20 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZRC10T20,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.RIC.ZMRICD10.ZMDT608,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=33,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZRC10T01),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT800 Y ZMDT608 PARA RIC         *
//**********************************************************************
//ZRC10T10 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZRC10T10,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.RIC.ZMRICD10.ZMDT800,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=32,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZRC10T03),DISP=SHR
//*
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4RIC30                                     *
//* OBJETIVO   : PROCESA ARCHIVO DE BLOQUEOS RIC                       *
//**********************************************************************
//ZRC10T01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZRIC30E1 DD DSN=MXCP.ZM.FIX.RIC.NZMJRZB3.BLQRIC,DISP=SHR
//ZRIC30E2 DD DSN=MXCP.ZM.TMP.RIC.ZMRICD10.ZMDT608,DISP=SHR
//ZRIC30E3 DD DSN=MXCP.ZM.TMP.RIC.ZMRICD10.ZMDT800,DISP=SHR
//*
//ZRIC30S1 DD DSN=MXCP.ZM.FIX.RIC.ZM4RIC30.BLQRIC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,LRECL=217,BLKSIZE=0,DSORG=PS)
//*
//ZRIC30S2 DD DSN=MXCP.ZM.FIX.RIC.ZM4RIC30.CTASOC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,LRECL=229,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZRC10T30),DISP=SHR
//*
//**********************************************************************
//*                    TERMINA ZMRICD10
//**********************************************************************
