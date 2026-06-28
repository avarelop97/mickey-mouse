//ZMUJPE62 PROC
//**********************************************************************
//**  APLICACION       :  ZM@ CASA DE BOLSA                           **
//**  PROCEDIMIENTO    :  ZMUJPE62                                    **
//**  OBJETIVO         :  ESTE PRC DEBERA SER DISPARADO POR UN JCL    **
//**                      GENERADO DE MANERA DINAMICA POR LA NUEVA    **
//**                      OPCION DEL MENU DEL MIDDLE OFFICE F62.      **
//**                      EL JCL SE PODRA VISUALIZAR EN SPOOL COMO    **
//**                      SIVAXF62.                                   **
//**  PERIODICIDAD     :  CORRE A SOLICITUD DEL USUARIO               **
//**  FECHA            :  OCTUBRE 06, 2011                            **
//**  AUTOR            :  FABRICA DE SOFTWARE ACCENTURE               **
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO    : PJL62P03                                                 *
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION : RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN    *
//*           ARCHIVO                                                  *
//**********************************************************************
//PJL62P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.FID.EBCM.ZF62.ZMUJPE62,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//* PASO    : PJL62P02                                                 *
//* PROGRAMA: CTMCND                                                   *
//* FUNCION : ADICIONA CONDICION PARA DISPARAR EL JOB BCJLNE62         *
//**********************************************************************
//PJL62P02 EXEC PGM=CTMCND,
//         COND=(4,LT),
//         PARM='ADD COND SIVAXF62_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*
//**********************************************************************
//* PASO    : PJL62P01                                                 *
//* PROGRAMA: MAILOPER                                                 *
//* FUNCION : AVISO EN CASO DE ERROR DEL PASO ANTERIOR                 *
//**********************************************************************
//PJL62P01 EXEC PGM=MAILOPER,COND=(4,GE,PJL62P02),
//        PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',
//             'SIVAXF62(ZMUJPE62)TERMINO MAL.CONTESTAR SI ',
//             'PARA TERMINAR')
//*
//**********************************************************************
//*                      FIN DEL PROCESO                               *
//**********************************************************************
