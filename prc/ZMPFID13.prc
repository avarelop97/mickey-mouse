//ZMPFID13 PROC
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
//**********************************************************************
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION : CREAR ARCHIVO DE PARAMETROS                              *
//**********************************************************************
//*PFD13P40 EXEC PGM=ZM3DG001,
//*         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*PI601765 DD DUMMY
//*ZMG001A1 DD DSN=MXCP.ZM.TMP.FID.EBCM.S032.ZMPPFD13,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PROGRAMA: ZM4DU006                                                 *
//* FUNCION:  REPORTE DE CAMBIO MASIVO DE PROMOTOR                     *
//**********************************************************************
//PFD13P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMFD13A1 DD DSN=MXC&AMB..ZM.TMP.FID.EBCM.S032.ZMPLFD13,
//            DISP=SHR
//*ZMFD13R1 DD DSN=MXCP.ZM.FIX.FID.E&EMP..S&SUC..REPMPROM,
//SALIDA   DD DSN=MXC&AMB..ZM.FIX.FID.EBCM.S032.REPMPROM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMC13C30),DISP=SHR
//*
//**********************************************************************
//*                <<<   ENVIO DE REPORTE A CTRL-D     >>>             *
//*                     REPORTE DE CAMBIOS MASIVOS                     *
//*                                   CASA                  ZM4DLH59   *
//**********************************************************************
//PFD13P25 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.FID.EBCM.S032.REPMPROM,DISP=SHR
//*
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//*        AVISO EN CASO DE ERROR A LA CONSOLA                         *
//**********************************************************************
//PFD13P20 EXEC PGM=MAILOPER,COND=(4,GE,PFD13P30),
//        PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',
//             'SIVAXF13(MPLFD13) TERMINO MAL. CONTESTAR SI ',
//             'PARA TERMINAR')
//*
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-D                       *
//**********************************************************************
//*PFD13P10 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXFD1_IN_FIN_OK WDATE',
//*         COND=(4,LT)
//*STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.MEXD.TGT.LOAD
//*DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.MEXD.TGT.PARM
//*         DD DISP=SHR,DSN=SYS3.IOAI.MEXD.TGT.IOAENV
//*DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//*DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*PRTDBG   DD SYSOUT=*
//*SYSPRINT DD DUMMY
//*SYSUDUMP DD DUMMY
//*DAPRINT  DD SYSOUT=*
//*DACNDIN  DD DDNAME=SYSIN
//*
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
//**                               FIN ZMPPFD13                      ***
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
//** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***
