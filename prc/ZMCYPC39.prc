//ZMCYPC39 PROC
//**********************************************************************
//**                    C A S A   D E   B O L S A                      *
//**                    =========================                      *
//**                    <<< MERCADO DE DINERO >>>                      *
//**                                                                   *
//**  APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//**                                                                   *
//**  PROCEDIM. :  ZMCYPC39-SIVAXMUV                                   *
//**                                                                   *
//**  OBJETIVO  :  REPORTE DE SALDOS                                   *
//**                                                                   *
//**  CORRE ANTES DE  :  NINGUNO                                       *
//**                                                                   *
//**  CORRE DESPUES DE:  NINGUNO                                       *
//**                                                                   *
//**  PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//**                                                                   *
//**********************************************************************
//**********************************************************************
//*         B I T A C O R A  D E  M O D I F I C A C I O N E S          *
//*         -------------------------------------------------          *
//*                                                                    *
//* N O M B R E                 D E S C R I P C I O N                  *
//* --------------------- -------------------------------------------  *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*   PROGRAMA: ZM4CY051                                               *
//*   OBJETIVO: GENERAR ARCHIVO CON FORMATO PARA LA DESCARGA  DE LOS   *
//*             MOVIMIENTOS DE LA TABLA SECART  DE LA FECHA DEL  DIA   *
//**********************************************************************
//PLC02P95 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.PARAM.SALDMV5.SECART,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE40Y01),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE SECART                                  *
//**********************************************************************
//*
//PLC02P90 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC39,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.SALMV5.SECART,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=94,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*                                                                     00024200
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.PARAM.SALDMV5.SECART,
//            DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE CONCEPT                                 *
//**********************************************************************
//*
//PLC02P85 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC39,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.SALMV5.CONCEPT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=23,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*                                                                     00024200
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE40Y02),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE ZMDT608                                 *
//**********************************************************************
//*
//PLC02P80 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC39,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.SALMV5.ZMD608,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=22,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*                                                                     00024200
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE40Y03),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE CUENTA                                  *
//**********************************************************************
//*
//PLC02P75 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC39,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.SALMV5.CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=24,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*                                                                     00024200
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE40Y04),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON LA INFORMACION DE SECART-CUENTA POR NUMERO *
//* DE CONTRARO, PARA DEJAR UNICAMENTE CUENTAS VIGENTES Y BCM          *
//**********************************************************************
//*
//PLC02P70 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.DESCARGA.SALMV5.SECART,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.SALMV5.CUENTA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCHMV5.SECART.CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=114,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE40Y05),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON SECART-CUENTA Y LA DESCARGA DE CONCEPT POR *
//* EL CAMPO ICONCEPT, PARA AGREGAR EMISORA Y SERIE                    *
//**********************************************************************
//*
//PLC02P65 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.MATCHMV5.SECART.CUENTA,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.SALMV5.CONCEPT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCHMV5.SECART.CONCEPT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=130,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE40Y06),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON SECART-CONCEPT Y LA DESCARGA DE ZMDT608 POR*
//* NUMERO DE CUENTA , PARA AGREGAR NUMERO DE CLIENTE  A LOS REGISTOS  *
//* QUE SI HACEN MATCH                                                 *
//**********************************************************************
//*
//PLC02P60 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.MATCHMV5.SECART.CONCEPT,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.SALMV5.ZMD608,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCHMV5.SECART.ZMDT608,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=148,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE40Y07),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4CY052                                              *
//*   OBJETIVO: GENERAR REPORTE CON LOS SALDOS DEL DIA DE SECART      *
//*             CON EL FORMATO Y CAMPOS SOLICITADOS PARA TRANSFERIR   *
//*             A DATIO                                               *
//*********************************************************************
//PLC02P55 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.MATCHMV5.SECART.ZMDT608,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.MOVTOS.SALDOS.DATIO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE40Y08),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO : ORDENA REGISTROS POR FECHA                              *
//**********************************************************************
//*
//PLC02P50 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.MOVTOS.SALDOS.DATIO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.SALDOS.DIARIO.DATIO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=129,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE40Y09),DISP=SHR
//*
