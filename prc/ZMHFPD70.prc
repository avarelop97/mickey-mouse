//ZMHFPD70 PROC
//*
//**********************************************************************
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//* PROCESO        :  CBHFND70                                         *
//* OBJETIVO       :  ACTUALIZA EMISORAS MDC LIQ T+1                   *
//* CORRE          :  FIN DIA DESPUES DEL CIERRE DE VALORES            *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT800                            *
//**********************************************************************
//PHC70P03 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PHC70P03,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BTR.ZM800,
//            SPACE=(CYL,(10,1),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=54,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF70T03),DISP=SHR
//**********************************************************************
//*  PASO: 02     ACTUALIZA EMISORAS MDC LIQ. T+1                      *
//*  PHF70P02     ZM4DHV57                                             *
//**********************************************************************
//PHC70P02 EXEC PGM=IKJEFT01
//*
//ZMRHBA01 DD DSN=MXCP.ZM.FIX.BTR.ZM800,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF70T02),DISP=SHR
//*
//**********************************************************************
//*                       === UTILERIA ===                             *
//* DEPURA ZMDT780 --RAF--                                            *
//**********************************************************************
//PHC70P01 EXEC PGM=IKJEFT01
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T01),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF70T00),DISP=SHR
//*
