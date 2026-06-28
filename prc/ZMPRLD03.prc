//ZMPRLD03 PROC                                                         00001003
//*
//**********************************************************************
//*  OBJETIVO :   BORRA ARCHIVO DE TRABAJO                             *
//**********************************************************************
//ZMLD0304 EXEC PGM=IDCAMS
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMLD0301),DISP=SHR
//*
//********************************************************************
//*  UNLOAD DE LA TABLA SECART PARA SER DEPURADA
//********************************************************************
//ZMLD0303 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLD0303,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.SECART,
//            DISP=(NEW,CATLG,DELETE),SPACE=(CYL,(2000,500),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=110,BLKSIZE=0),
//            UNIT=3390
//*
//SYSCNTL  DD DUMMY
//SYSTSIN  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMLD0302),DISP=SHR
//*
//**********************************************************************
//* PASO     : ZMLD0302                                                *
//* UTILERIA : AMUUMAIN                                                *
//* OBJETIVO : BAJA LA VISTA DE SECART A LA TABLA DEJANDOLA YA DEPURADA*
//**********************************************************************
//ZMLD0302 EXEC MBMCLOAD,COND=(4,LT),
//         UID=ZMLD0302.LOART,
//         CREATOR=PRODUSVP,
//*        CREATOR=PRUEBSVP,
//         NOMTAB=SECART,
//         OPTION=REPLACE,
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZMLD0303),
//         INPREC=DSN=MXCP.ZM.FIX.DESCARGA.SECART
//*
//**********************************************************************
//*  OBJETIVO :   BORRA ARCHIVO DE TRABAJO                             *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//ZMLD0301 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMLD0301),DISP=SHR
//*
//**********************************************************************
