//ZMULPE01 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                         <<< CONTRATOS >>>                          *00003000
//*                                                                    *00003000
//*   APLICACION      :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00003000
//*                                                                    *00003000
//*   PROCEDIM.       :  ZMULPE01                                      *00003000
//*                                                                    *00003000
//*   OBJETIVO        :  IMPRESION DE CONTRATOS   (OPCION: 484)        *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    :  CORRE A SOLICITUD DEL USUARIO.                *00003000
//*                                                                    *00003000
//*   ELABORO         :  MONICA RUBIO CONTRERAS                        *00003000
//*                                                                    *00003000
//**********************************************************************
//**                      LOG DE MODIFICACIONES                        *
//**********************************************************************
//**  FECHA   |DESCRIPCION                                             *
//**-------------------------------------------------------------------*
//**2005-05-11|SE ELIMINAN LA FORMAS DE IMPRESION, SE ENVIA A          *
//**          |CTROL-D    A.G.R. (AZERTIA).                            *
//**********************************************************************
//**********************************************************************00003200
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO   00003300
//**********************************************************************00003400
//PUL01P03 EXEC PGM=ZM3DG001,                                           00004100
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004200
//SYSTSPRT DD SYSOUT=*                                                  00004800
//SYSPRINT DD SYSOUT=*                                                  00004900
//SYSOUT   DD SYSOUT=*                                                  00005000
//SYSDBOUT DD SYSOUT=*                                                  00005100
//SYSABOUT DD DUMMY                                                     00005200
//SYSUDUMP DD DUMMY                                                     00005300
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMULPE01,               00005700
//            DISP=(NEW,CATLG,DELETE),                                  00005800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00006000
//            UNIT=3390,                                                00006100
//            SPACE=(CYL,(2,1),RLSE)                                    00006200
//*                                                                     00006300
//*******************************************************************
//*                       ZM4EU617
//*                 IMPRESION DE CONTRATOS
//*******************************************************************
//PUL01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU617A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMULPE01,
//            DISP=(OLD,PASS)
//*****************************   CONTRATO
//ZMG617R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*****************************   CONTRATO ANEXO
//ZMG617R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL01T01),DISP=SHR
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PUL01P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXIMC_IN_OK WDATE',
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
//**********************************************************************
//*        TERMINA PROCESO ZMULPE01 SIVA MULTIEMPRESA                  *
//**********************************************************************
//*                                                                     00850000
