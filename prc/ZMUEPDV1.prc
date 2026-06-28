//ZMUEPDV1 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM BANCA PATRIMONIAL.                               *
//* PROCESO      : ZMUEPDV1.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : SE GENERA ARCHIVO CON INFORMACION DE LAS OPERACIONES*
//*                DEL SIVA PARA AUDITORIA (VOLCKER_RULE).             *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 11 DE NOVIEMBRE DE 2015.                            *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.0.0-01 XMCH068   17MAR16 SE AGREGAN PUEDVP0A, PUEDVP0B,       *
//*             CDAINFO           PUEDVP0C,PUEDVP0D Y PUEDVP0E.        *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PUEDVP01.                                               *
//* UTILERIA : IKJEFT01 / ZM4DGV01.                                    *
//* OBJETIVO : GENERA INFORMACION DE LAS OPERACIONES DEL SIVA PARA     *
//*            AUDITORIA.                                              *
//*--------------------------------------------------------------------*
//PUEDVP01 EXEC PGM=IKJEFT01
//*
//PI601765 DD DUMMY
//S1DJF001 DD DSN=MXCP.ZM.FIX.OPERA.VOLCKER,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1209,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUEDVT01),DISP=SHR
//*
//*FS-1.0.0-01-I
//*--------------------------------------------------------------------*
//* PASO     : PUEDVP0A.                                               *
//* UTILERIA : IKJEFT01 / ZM4DGV02.                                    *
//* OBJETIVO : GENERA CIFRAS DE CONTROL PARA VALIDAR VOLCKER_RULE.     *
//*--------------------------------------------------------------------*
//PUEDVP0A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUEDVT0A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PUEDVP0B.                                               *
//* UTILERIA : IKJEFT01 / ZM4DGV03.                                    *
//* OBJETIVO : VALIDA CIFRAS DE CONTROL EN PARAM PARA VOLCKER_RULE.    *
//*--------------------------------------------------------------------*
//PUEDVP0B EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUEDVT0B),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PUEDVP0C.                                               *
//* UTILERIA : CTMCND                                                  *
//* OBJETIVO : SE REALIZA CUANDO FUE OK                                *
//*--------------------------------------------------------------------*
// IF  PUEDVP0B.RC EQ 1 THEN
//PUEDVP0C EXEC PGM=CTMCND,PARM='ADD COND NZMJVR01_IN_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=Z
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO     : PUEDVP0D.                                               *
//* UTILERIA : CTMCND                                                  *
//* OBJETIVO : SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-M     *
//*            CUANDO NO FUE OK.                                       *
//*--------------------------------------------------------------------*
// IF  PUEDVP0B.RC EQ 2 THEN
//****************************************************************
//*                COPIAR ARCHIVO SECUENCIAL                     *
//****************************************************************
//PUEDVP0D EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.OPERA.VOLCKER,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.OPERA.VOLCKER.NOK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1209,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUEDVP0E.                                               *
//* UTILERIA : CTMCND                                                  *
//* OBJETIVO : SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-M     *
//*            CUANDO NO FUE                                           *
//*--------------------------------------------------------------------*
//PUEDVP0E EXEC PGM=CTMCND,PARM='ADD COND NZMJVR03_IN_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=Z
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
// ENDIF
//*FS-1.0.0-01-F
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUEPDV1                        *
//*--------------------------------------------------------------------*
