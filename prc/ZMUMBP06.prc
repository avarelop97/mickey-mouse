//ZMUMBP06 PROC
//*********************************************************************
//*   OBJETIVO: DAR DE ALTA LAS CUENTAS DE BANCA PATRIMONIAL EN
//*             EL MUV.
//*********************************************************************
//ZMU06006 EXEC PGM=IKJEFT01
//MIGRA    DD DSN=MXCP.ZM.FIX.MIGRA.CTASBP,DISP=SHR
//SALIDA   DD DSN=MXCP.ZM.FIX.MIGRA.SALIDA1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=449,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//CTASOK   DD DSN=MXCP.ZM.FIX.ZM6CRX05.CTASOK.PREV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1035,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMMG6002),DISP=SHR
//SYSIN    DD DUMMY
//*
//*********************************************************************
//*   OBJETIVO: GENERAR EL ARCHIVO CON LAS CUENTAS DE AFORES (MERCADOS
//*             GLOBALES) QUE SE DIERON DE ALTA DURANTE EL DIA.
//*********************************************************************
//ZMU06005 EXEC PGM=IKJEFT01,COND=(4,LT)
//ARCHAFO  DD DSN=MXCP.ZM.FIX.ZM4CRX21.AFORES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1035,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMMG6005),DISP=SHR
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*  SORT POR CTABPIGO                                                 *
//**********************************************************************
//ZMU06004 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4CRX21.AFORES,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZM6CRX05.CTASOK.PREV,DISP=SHR
//         DD DSN=MBVP.AJ.FIX.ALTA.TESTA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZM6CRX05.CTASOK,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=1035,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMMG6004),DISP=SHR
//*
//*********************************************************************
//*   OBJETIVO:    EFECTUAR LA GENERACION DE ARCHIVO PARA INTERFAZ
//*                A BG DE ALTA DE PRODUCTOS 10 Y 13.
//*********************************************************************
//ZMU06003 EXEC PGM=IKJEFT01,COND=(4,LT)
//ARCBPIGO DD DSN=MXCP.ZM.FIX.ZM6CRX05.CTASOK,DISP=SHR
//ARCHIVBG DD DSN=MBVP.BG.FIX.F&FECHA..FINANCHE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=600,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMMG6001),DISP=SHR
//SYSIN    DD DUMMY
//*********************************************************************
//*   OBJETIVO:    ADICIONAR AL ARCHIVO GENERADO EN EL PASO ANTERIOR,
//*                LAS CUENTAS RECHAZADAS DE OTROS DIAS.
//*********************************************************************
//ZMU06002 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=MXCP.ZM.FIX.FINANCHE.COMP,DISP=SHR
//OUTPUT   DD DSN=MBVP.BG.FIX.F&FECHA..FINANCHE,DISP=MOD
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMMG601A),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA:    IOACND
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR PU Y SE
//*                EJECUTE AUTOMATICAMENTE EL PROCESO AJJCCB02.
//*********************************************************************
//ZMU06001 EXEC PGM=IOACND,PARM='ADD COND CBUMBP06_OK_PR WDATE',
//         COND=(4,LT)
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*********************************************************************
//*                F I N    C B U M B P 0 6                           *
//*********************************************************************
