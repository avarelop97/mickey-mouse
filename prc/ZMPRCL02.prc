//ZMPRCL02 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ CASA DE BOLSA                                    *
//* DECRIPCION  : REALIZA LOS CALCULOS DE COSTO PROMEDIO.              *
//* AUTOR       : FSW DGCM (XMZ8533).                                  *
//* FECHA       : 07 DE OCTUBRE DE 2018                                *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*   @MEX000   XXXXXXX  DDMMMAA ..................................... *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZMRCL299                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA EL FILTRADO DE LOS REGISTROS QUE APLICARON    *
//*              RECLASIFICACION.                                      *
//*--------------------------------------------------------------------*
//ZMRCL299 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMRCL299,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCJRCL02.UNLOAD.ZMDT107,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRCL299),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRCL297                                              *
//* UTILERIA   : IKJEFT1A/ZM4RCL04                                     *
//* OBJETIVO   : REALIZA LOS CALCULOS DE COSTO PROMEDIO PARA ACTUALIZAR*
//*              CARTERA.                                              *
//*--------------------------------------------------------------------*
//ZMRCL297 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.BCJRCL02.UNLOAD.ZMDT107,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJRCL02.SALIDA1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=230,BLKSIZE=0)
//*
//S2DQSAL2 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJRCL02.SALIDA2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=227,BLKSIZE=0)
//*
//S3DQSAL3 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJRCL02.MOVTOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=096,BLKSIZE=0)
//*
//S5DQSAL5 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJRCL02.SALIDA3,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=227,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRCL297),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRCL296                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : ELIMINA REGISTROS DE LA TABLA ZMDT800                 *
//*--------------------------------------------------------------------*
//ZMRCL296 EXEC PGM=IKJEFT01,COND=(4,LT)
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T01),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRCL296),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*             FIN DE PROCESO  ZMPRCL02                               *
//*--------------------------------------------------------------------*
