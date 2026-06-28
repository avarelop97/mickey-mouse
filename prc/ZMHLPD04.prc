//ZMHLPD04 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMA DE VALORES >>                       *
//*                                                                    *
//*   APLICACION      :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   OBJETIVO        :  ACTIVA CONDICION PARA EJECUTAR EL PROCESO QUE *
//*                      VALIDA EL ARCHIVO DE MOVIMIENTOS DEL INDEVAL. *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO  (A PETICION DEL USUARIO)              *
//*                                                                    *
//*   ELABORADO POR   :  SOFTTEK                                       *
//*                                                                    *
//*   FECHA           :  ABRIL, 2006                                   *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*00010000
//*  PASO:  1     GENERA ARCHIVO DE PARAMETROS                         *
//*  PHL04P02                                                          *
//*--------------------------------------------------------------------*00010000
//PHL04P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.VAL.E&EMP..S&SUC..ZMHLPD04,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*00010000
//*  PASO:  2     SE ADICIONA CONDICION PARA QUE SEA TOMADA POR        *
//*  PHL04P01     CTRL-M.                                              *
//*--------------------------------------------------------------------*00010000
//PHL04P01 EXEC PGM=CTMCND,PARM='ADD COND CBHTNE65_IN_PR_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M H L P D 0 4                            *00020000
//*--------------------------------------------------------------------*00010000
