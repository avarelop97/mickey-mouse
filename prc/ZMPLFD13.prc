//ZMPLFD13 PROC
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
//**                                                                  **
//**                   C A S A   D E   B O L S A                      **
//**                   =========================                      **
//**                  <<  MODULO DE FIDUCIARIO >>                     **
//**                                                                  **
//**  APLICACION       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)       **
//**                                                                  **
//**  PROCEDIMIENTO    :  MPLFD13                                     **
//**                                                                  **
//**  OBJETIVO         :  GENERA REPORTE DE CAMBIO MASIVO DE PROMOTOR **
//**                      (OPCION F13)                                **
//**                                                                  **
//**  CORRE ANTES DE   :  NINGUNO                                     **
//**                                                                  **
//**  CORRE DESPUES DE :  NINGUNO                                     **
//**                                                                  **
//**  PERIODICIDAD     :  CORRE A SOLICITUD DEL USUARIO               **
//**                                                                  **
//**  FECHA            :  ABRIL, 03 2009                              **
//**                                                                  **
//**  AUTOR            :  ACCENTURE (YPC)                             **
//**                                                                  **
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//**********************************************************************
//PFD13P02 EXEC PGM=ZM3DG001
//*        PARM=('&EMP','&SUC','&INT1','&INT2',)
//*PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.FID.EBCM.S032.ZMPLFD13,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PFD13P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXFD1_OK WDATE',
//         COND=(4,LT)
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
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
//**                               FIN ZMPLFD13                      ***
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
