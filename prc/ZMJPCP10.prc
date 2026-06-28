//ZMJPCP10 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXSCP (SUBMITIDOR LINEA)                         *
//*                                                                    *
//*   PROCEDIM. :  ZMJPCP10   OPC. 516                                 *
//*                                                                    *
//*   OBJETIVO  :  GENERA REPORTE DE CANJES REALIZADOS DE ACUERDO      *
//*                A LA CAPTURA DE PARAMETROS PARA CANJES DE S.D.I.    *
//*                POR PARTE DEL USUARIO (PRELIMINAR)                  *
//*                                                                    *
//*   CORRE ANTES DE  : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   CORRE DESPUES DE: A PETICION DEL USUARIO                         *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PJP10P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SDI.EZPR.ZMJPCE10,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-M                       *
//**********************************************************************
//PJP10P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSCP_IN_OK WDATE',
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
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJPCP10 SIVA MULTIEMPRESA                  *
//**********************************************************************
