//ZMJCPP01 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*                                                                    *
//*   DISPARADOR:  SIVAXMNC (OPC. 603ZREP)                             *
//*   PROCEDIM. :  ZMJCPD01                                            *
//*                                                                    *
//*   OBJETIVO  :   REPORTE DE MOVIMIENTOS NO CONFIRMADOS AL           *
//*                 MOMENTO DE CIERRE DE TESORERIA                     *
//*                                                                    *
//*   CORRE ANTES DE  :  CIERRE DE SIVAERIA OPCIONALMENTE              *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO   (A SOLICITUD DEL USUARIO)            *
//*                                                                    *
//**********************************************************************
//* TOWA (IDCMZA) SE ADICIONA CONDICION CONTROL-M
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PJC01P03 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.ZMJCPD01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PJC01P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXMNC_IN_OK WDATE',
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
//DACNDIN  DD  DDNAME=SYSIN
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJCPD01 SIVA MULTIEMPRESA                  *
//**********************************************************************
