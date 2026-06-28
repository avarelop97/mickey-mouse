//ZMJLPY20 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                      << T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                  MODULO DE TESORERIA                               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXCAB  ( PARA CAPACITACION ) (OPC. 618)          *
//*                                                                    *
//*   OBJETIVO  :  PROCEDIMIENTO DE GENERACION DE LA RELACION          *
//*                DE CREDITOS POR LINEA BANCARIA CON CARGO A          *
//*                CUENTA DE CHEQUES DE TERCEROS (ALTAMIRA)            *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO                  *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK (MHR1)                                    *
//*                                                                    *
//*   FECHA:  DICIEMBRE 2002.                                          *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |28-JUL-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//*--------------------------------------------------------------------*
//* MHR1 |02/12/2003|IDCEX70|PJL06P02|USAR ARCHIVO DE PARAMETROS       *
//**********************************************************************
//* PROGRAMA: ZM3DG001                                                  00020000
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO                  00030000
//*           PARA SIGUIENTES PASOS                                     00040000
//**********************************************************************00060000
//PJL20P03 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLP201,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),
//            BUFNO=30
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: ZMBY20R                                                   00020000
//* OBJETIVO: RELACION DE TRASPASOS POR LINEAS BBVA (CARGOS) A          00030000
//*           CUENTAS DE CHEQUES DE TERCEROS                            00040000
//*---------------------------------------------------------------------00020000
//PJL20P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00060000
//VOB754A1 DD DUMMY
//*
//ZM9Y20A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLP201,DISP=SHR
//*
//ZM9Y20R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZM9Y20R2 DD SYSOUT=S,DEST=CFF7
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL20T01),DISP=SHR
//*
//*---------------------------------------------------------------------00010000
//* PROGRAMA: CTMCND                                                    00020000
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-D      00030000
//*---------------------------------------------------------------------00040000
//PJL20P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXCAB_IN_SEP_OK WDATE',    00060000
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
//**********************************************************************00010000
//*                 F I N     Z M J L P Y 2 0                          *00020000
//**********************************************************************00060000
