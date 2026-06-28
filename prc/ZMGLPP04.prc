//ZMGLPP04 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  SUBMITIDOR  (SIVAXZMP)                           *
//*                   GENERAR ARCHIVO DE PLAZOS PARA ENVIO A BLADE     *
//* ANTES          :  PROCESO ZMGLPE04                                 *
//*                                                                    *
//* OBJETIVO       :  MONITOR DE PLAZOS DIARIOS DE BANCA PATRIMONIAL   *
//*                                                                    *
//* PERIODICIDAD   :  A ELECCION DE USUARIO EN OPCION MUV 332 (PF4)    *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  FEBRERO 2006                                     *
//* MODIFICA       :  OSCAR URBANO FERNANDEZ. (AZERITA).               *
//* FECHA          :  OCTUBRE 2008.                                    *
//*                                                                    *
//*-------------------------------------------------------------------**
//*                          -- ZM3DG001 --                            *
//*                                                                    *
//*  OBJETIVO:    RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*               GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*-------------------------------------------------------------------**
//PGT04P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.WKF.PLZ.EMP.SUC.ZMGLPE04,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PGT04P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXZPM_IN_OK WDATE',
//         COND=(4,LT)
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
//*
