//ZMHLPE52 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION      :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO   :  ZMHLPE52                                      *
//*                                                                    *
//*   OBJETIVO        :  ADICIONA CONDICION PARA QUE SE EJECUTE        *
//*                      CIERRE DE PRECIOS DE MERCADO DE DINERO        *
//*                                                                    *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMHLPE52_&EMP_SIVA_OK                         *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA           : ENERO  19, 2004                                *
//*                                                                    *
//*   AUTOR           : GETRONICS - MEXICO  (IEF)                      *
//*                                                                    *
//*   OBSERVACION     :                                                *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*--------------------------------------------------------------------*
//PHL52P02 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*ZMG001A1 DD DSN=SIVA.VAL.WKF.E&EMP..S&SUC..ZMHLPE52,
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE52,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//**********************************************************************
//*  PASO     : PHL52P01 (CTMCND)                                      *
//*                                                                    *
//*  OBJETIVO : DAR DE ALTA CONDICION A CONTROL-M PARA CIERRE          *
//*             DE PRECIOS DE MERCADO DE DINERO                        *
//**********************************************************************
//PHL52P01 EXEC PGM=CTMCND,PARM='ADD COND ZMHLPE52_&EMP_SIVA_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//SYSIN    DD   DUMMY
