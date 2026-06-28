//ZMUFPM05 PROC
//*DGCM01-INI
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    DGCM01     XM26266  28JUN11    SE AGREGA PASO ZUF05003 Y LOG DE *
//*                                   MODIFICACIONES.                  *
//*    YYGO       XM09724  24SEP15    SE AGREGA PASO CON COPIA DE ARCHI*
//*                                   VO DE AJ A ESTANDARES ZM.        *
//*   FS-1.1.0.01 CAPGEMINI 10JUN16   SE AGREGA EL PASO ZUF050A2       *
//*    DGCM02     XM26266  16JUN16    SE AGREGA EL PASO ZUF050A3       *
//*--------------------------------------------------------------------*
//*YYGO-INI
//*====================================================================*
//* PASO     :ZUF05004                                                 *
//* OBJETIVO :COPIA ARCHIVO DE ALTAMIRA A ESTANDARES SIVA/MUV          *
//* REALIZO:                                HITSS                      *
//* FECHA:   24/SEP/2015                                               *
//*====================================================================*
//*
//ZUF05004 EXEC PGM=ICEGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MBVP.AJ.FIX.AMCP.DOMENV,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.CON.AMCP,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=512,BLKSIZE=0,DSORG=PS,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DUMMY
//*YYGO-FIN
//*====================================================================*
//* PASO     : ZUF05003                                                *
//* PROGRAMA : ZM4OU006                                                *
//* OBJETIVO : INSERTA LA TABLA ZMDT800, TITULARES Y COTITULARES,      *
//*            TOMANDO LA INFORMACION DEL ARCHIVO MAESTRO DE           *
//*            CONSULTAS DE PERSONAS.                                  *
//*====================================================================*
//*YYGO-INI
//*ZUF05003 EXEC PGM=IKJEFT01                                           01130000
//ZUF05003 EXEC PGM=IKJEFT01,COND=(4,LT)                                01130000
//*YYGO-FIN
//AMAEPER  DD DSN=MBVP.AJ.FIX.AMCP.RELPRD21.PORCEN,DISP=SHR             01220000
//*
//ZMU006R1 DD DSN=MXCP.ZM.FIX.CON.AMCP.REPLOG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF05T03),DISP=SHR
//*DGCM01-FIN
//**********************************************************************00010000
//*                         BANCA PATRIMONIAL                          *00020000
//*                                                                    *01040000
//*  PASO:  1 ACTUALIZA DOMICILIOS DE ENVIO EN LA TABLA CUENTA DEL MUV *00030000
//*                                                                    *00040000
//*                                                                    *01090000
//**********************************************************************00060000
//*DGCM01-INI
//*ZUF05002 EXEC PGM=IKJEFT01                                           01130000
//ZUF05002 EXEC PGM=IKJEFT01,COND=(4,LT)                                01130000
//*DGCM01-FIN
//AMAEPER  DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR                         01220000
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMU005A2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMU005A2 DD DSN=MXCP.ZM.FIX.ZMUFPM05.REPORTE1,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390
//ZMU005A2 DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.CON.AMCP.REPORTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=90,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF05T01),DISP=SHR
//*@DGCM02-I
//**********************************************************************00010000
//*                         BANCA PATRIMONIAL                          *00020000
//*  PASO: INSERTA EN LA TABLA DE HISTORICOS DE CUENTA.                *00030000
//*  PGM : ZM4CTH00                                                    *00030000
//**********************************************************************00060000
//ZUF050A3 EXEC PGM=IKJEFT01,COND=(4,LT)                                01130000
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF05T02),DISP=SHR
//*@DGCM02-F
//*FS-1.1.0.01-INI
//**********************************************************************00010000
//*                         BANCA PATRIMONIAL                          *00020000
//*                                                                    *01040000
//*  PASO: ACTUALIZA PERSONA JURIDICA Y SUBCLASE                       *00030000
//*                                                                    *00040000
//*                                                                    *01090000
//**********************************************************************00060000
//ZUF050A2 EXEC PGM=IKJEFT01,COND=(4,LT)                                01130000
//CMJPERSO DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR                         01220000
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.CON.AMCP.REPORT2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=90,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF05T00),DISP=SHR
//*
//*FS-1.1.0.01-FIN
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//ZUF05001 EXEC  PGM=CTMCND,PARM='ADD COND ZMUFPM05_IN_SEP_OK WDATE',
//         COND=(4,LT)
//*STEPLIB DD  DISP=SHR,DSN=SYS3.IOAO.MEXC.TGT.LOAD
//*DAPARM  DD  DISP=SHR,DSN=SYS3.IOAI.MEXC.TGT.PARM
//*        DD  DISP=SHR,DSN=SYS3.IOAI.MEXC.TGT.IOAENV
//*DALOG   DD  DISP=SHR,DSN=SYS3.IOAD.SYSCBBV.DATA.LOG
//*DARESF  DD  DISP=SHR,DSN=SYS3.IOAD.SYSCBBV.DATA.NRS
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*
