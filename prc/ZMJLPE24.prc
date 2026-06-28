//ZMJLPE24 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   >>>>  T E S O R E R I A <<<<                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXLXM (OPC. 570 ) HABILITADA DESDE OPC. 609      *
//*   PROCEDIM. :  ZMJLPE24                                            *
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
//*                                                                     00010000
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
//ZMG001A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..ZMJLPE24,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                         -- ZM4DGG38 --                             *
//* OBJETIVO:     GENERACION DE RELACION DE CHEQUES                    *
//*                                                                    *
//**********************************************************************
//PJL24P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG38A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..ZMJLPE24,DISP=SHR
//*
//ZMGG38A2 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..JLPE24.ARCHTEMP,
//            DISP=(NEW,PASS),
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//*
//ZMGG38A3 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQLEXM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//ZMGG38A4 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQLXFA,
//            DISP=(NEW,PASS),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//**************************RELACION
//ZMGG38R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**************************RELACION FONDO DE AHORRO
//ZMGG38R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL24T01),DISP=SHR
//*
//**********************************************************************
//*                         -- ZM3DGG39 --                             *
//* OBJETIVO:     GENERACION DE CHEQUES A IMPRIMIRSE EN LA LEXMARK     *
//*                                                                    *
//**********************************************************************
//PJL24P03 EXEC PGM=ZM3DGG39,COND=(4,LT)
//ZMGG39A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQLEXM,
//            DISP=(OLD,PASS)
//************ IMPRESION DE CHEQUE LEXMARK
//ZMGG39R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                         -- ZM3DGG89 --                             *
//* OBJETIVO:     GENERACION DE CHEQUES A IMPRIMIRSE EN LA LEXMARK     *
//*               FONDO DE AHORRO                                      *
//**********************************************************************
//PJL24P02 EXEC PGM=ZM3DGG89,COND=(4,LT)
//*
//ZMGG89A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQLXFA,
//           DISP=(OLD,PASS)
//************ IMPRESION DE CHEQUE FONDO DE AHORRO
//ZMGG89R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
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
//*        TERMINA PROCESO ZMJLPE24 SIVA MULTIEMPRESA                  *00020000
//**********************************************************************00060000
