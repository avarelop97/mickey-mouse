//ZMGXPZ32 PROC
//**********************************************************************
//**  APLICACION       :  ZM@ CASA DE BOLSA                           **
//**  PROCEDIMIENTO    :  ZMGXPZ32                                    **
//**  OBJETIVO         :  ADICIONAR CONDICION PARA QUE SE EJECUTE     **
//**                      PROCESO DE EVALUACION DE CONTRATOS PARA     **
//**                      PLD , SE EJECUTARA POR UN SIVAXAEC.         **
//**  PERIODICIDAD     :  CORRE A SOLICITUD DEL USUARIO               **
//**  FECHA            :  AGOSTO 2020                                 **
//**  AUTOR            :  IEF - INDRA                                 **
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO    : PGX32P05                                                 *
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION : RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN    *
//*           ARCHIVO                                                  *
//**********************************************************************
//PGX32P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECBP.ZMGXPZ32,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//* PASO    : PGX32P04                                                 *
//* PROGRAMA: CTMCND                                                   *
//* FUNCION : ADICIONA CONDICION PARA DISPARAR EL JOB CBGLPZ32         *
//**********************************************************************
//PGX32P04 EXEC PGM=CTMCND,
//         COND=(4,LT),
//         PARM='ADD COND CBGLPZ32_CBP_SIVA_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//*
