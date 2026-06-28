//ZMUPRD01 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO           *
//* OBJETIVO: GENERAR ARCHIVO PARA EL HISTORICO DE RENDIMIENTOS        *
//*           2 A#OS ATRAS DE LA FECHA DE PROCESO                      *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//* MARCA       AUTOR   FECHA    DESCRIPCION                           *
//*----------- ------- ------- ----------------------------------------*
//*FS-1.1.0-01 XMGY082 07ENE13 SE COMENTA EL PASO STEP030              *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO    : STEP040                                                  *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA ZMDT608 CLIENTES                    *
//*--------------------------------------------------------------------*
//STEP040  EXEC PGM=ADUUMAIN
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00002700
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00002800
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00002900
//*                                                                     00003000
//SYSREC1  DD DSN=MXCP.ZM.TMP.UNLOT608,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(NZMCT001),DISP=SHR
//*                                                                     00004200
//*--------------------------------------------------------------------*
//* PASO    : STEP035                                                  *
//* PROGRAMA: ZM3MU928                                                 *
//* OBJETIVO: OBTIENE FECHA                                            *
//*--------------------------------------------------------------------*
//STEP035  EXEC PGM=ZM3MU928,COND=(4,LT),PARM=('&FECHA')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//O1DQ0002 DD DSN=MXCP.ZM.FIX.INTFAZ.EVEN.FPROC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=6,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*FS-1.1.0-01-INI
//*--------------------------------------------------------------------*
//* PASO    : STEP030                                                  *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: GENERACION DE ARCHIVO CON EL HISTORICO DE RENDIMIENTOS 2 *
//*           A#OS HACIA ATRAS DE LA FECHA DE PROCESO                  *
//*--------------------------------------------------------------------*
//*STEP030  EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*I1DQ0001 DD DSN=MXCP.ZM.TMP.UNLOT608,DISP=SHR
//*
//*I1DQ0002 DD DSN=MXCP.ZM.FIX.INTFAZ.EVEN.FPROC,DISP=SHR
//*
//*O1DQ0001 DD DSN=MXCP.ZM.FIX.INTFAZ.EVEN.REND,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(4000,2000),RLSE),
//*            UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=128,RECFM=FB,BLKSIZE=0)
//*
//*SYSTSPRT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(NZMCT002),DISP=SHR
//*FS-1.1.0-01-FIN
//*
