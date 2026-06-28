//ZMJLPP24 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   >>>>  T E S O R E R I A <<<<                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXLXM (OPC. 570 ) HABILITADA DESDE OPC. 609      *
//*   PROCEDIM. :  ZMJLPP24                                            *
//*                                                                    *
//*   OBJETIVO  :  IMPRESION DE CHEQUES LEXMARK DE TESORERIA           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (CORRE A SOLICITUD DEL USUARIO)      *
//*                                                                    *
//**********************************************************************
//* NOV-2008 IDCMZA (TOWA)SE AGREGA CONDICION PARA CONTROL-M            00010000
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PJL24P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.ZMJLPE24,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PJL24P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXLXM_IN_OK WDATE',
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
//**********************************************************************00010000
//*        TERMINA PROCESO ZMJLPP24 SIVA MULTIEMPRESA                  *00020000
//**********************************************************************00060000
