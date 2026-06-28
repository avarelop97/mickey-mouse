//ZMJLPD54 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  ACTIVA CONDICION PARA TRANSFERIR ARCHIVO DE         *
//*                PRECIOS DE SIEFORES DE SERVIDOR NT A HOST.          *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//**********************************************************************
//*  RECIBE LOS PARAMETROS ENVIADOS DE LINEA.                          *
//**********************************************************************
//PJL54P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPD54,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00004300
//* OBJETIVO : AGREGA LA CONDICION EN CONTROLM.                        *00004400
//**********************************************************************00004600
//PJL54P01 EXEC  PGM=CTMCND,PARM='ADD COND    CBJTND54_IN_OK    WDATE',
//         COND=(4,LT)                                                  00004800
//*                                                                     00004900
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00005000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00005100
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00005200
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00005300
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00005400
//*                                                                     00005500
//PRTDBG   DD   SYSOUT=*                                                00005600
//SYSPRINT DD   DUMMY                                                   00005700
//SYSUDUMP DD   DUMMY                                                   00005800
//DAPRINT  DD   SYSOUT=*                                                00005900
//DACNDIN  DD DDNAME=SYSIN
//*
