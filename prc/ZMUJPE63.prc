//ZMUJPE63 PROC                                                         00020200
//**********************************************************************
//**  APLICACION       :  ZM@ CASA DE BOLSA                           **
//**  PROCEDIMIENTO    :  ZMUJPE63                                    **
//**  OBJETIVO         :  ESTE PRC DEBERA SER DISPARADO POR UN JCL    **
//**                      GENERADO DE MANERA DINAMICA POR LA NUEVA    **
//**                      OPCION DEL MENU DEL MIDDLE OFFICE F63.      **
//**                      EL JCL SE PODRA VISUALIZAR EN SPOOL COMO    **
//**                      SIVAXF63.                                   **
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
//**********************************************************************00020200
//* PASO     : PJL62P03                                                *00020200
//* PROGRAMA : ZM3DG001                                                *00020200
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA      *00020200
//*            ARCHIVO                                                 *00020200
//**********************************************************************00020200
//PJL62P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.FID.EBCM.ZF63.ZMUJPE63,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************00020200
//* PASO     : PJL63P02                                                *00020200
//* PROGRAMA : CTMCND                                                  *00020200
//* OBJETIVO : ADICIONA CONDICION PARA DISPARAR EL JOB BCJLNE63        *00020200
//**********************************************************************00020200
//PJL63P02 EXEC PGM=CTMCND,
//         COND=(4,LT),
//         PARM='ADD COND SIVAXF63_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*                                                                    *00020200
//**********************************************************************00020200
//* PASO     : PJL63P01                                                *00020200
//* PROGRAMA : MAILOPER                                                *00020200
//* OBJETIVO : AVISO EN CASO DE ERROR DEL PASO ANTERIOR                *00020200
//**********************************************************************00020200
//PJL63P01 EXEC PGM=MAILOPER,COND=(4,GE,PJL63P02),                      00020500
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          00020600
//             'SIVAXF63(ZMUJPE63)TERMINO MAL.CONTESTAR SI ',           00020700
//             'PARA TERMINAR')                                         00020800
//*                                                                     00018400
//**********************************************************************00021000
//*                 F I N    D E L    P R O C E S O                    *00021100
//**********************************************************************00021200
