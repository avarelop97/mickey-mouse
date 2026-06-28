//ZMJLPE22 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                        >>>>  TESORERIA   <<<<                      *
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   DISPARADOR:  SIVAXCFU      (OPCION: 559)                         *00003000
//*   PROCEDIM. :  ZMJLPE22                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  CONFIRMACION DE FICHA UNICA                         *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//**********************************************************************00003200
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO  *00003300
//**********************************************************************00003400
//PJL22P03 EXEC PGM=ZM3DG001,                                           00004101
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004201
//SYSTSPRT DD SYSOUT=*                                                  00004800
//SYSPRINT DD SYSOUT=*                                                  00004900
//SYSOUT   DD SYSOUT=*                                                  00005000
//SYSDBOUT DD SYSOUT=*                                                  00005100
//SYSABOUT DD DUMMY                                                     00005200
//SYSUDUMP DD DUMMY                                                     00005300
//*                                                                     00005400
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE22,               00005701
//            DISP=(NEW,CATLG,DELETE),                                  00005800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00006000
//            UNIT=3390,                                                00006101
//            SPACE=(CYL,(2,1),RLSE)                                    00006201
//*                                                                     00006300
//**********************************************************************
//*                       --  ZM4EJ749  --                             *
//*                 CONFIRMACION FICHA UNICA                           *
//**********************************************************************
//PJL22P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*
//ZMJ749A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE22,DISP=SHR
//*
//ZMJ749A2 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..CONFIRFU.TMP,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//*
//ZMJ749R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL22T01),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJL22P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCFU_IN_OK WDATE',
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
//*        TERMINA PROCESO ZMJLPE22 SIVA MULTIEMPRESA                  *
//**********************************************************************
