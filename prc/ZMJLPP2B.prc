//ZMJLPP2B PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  SIVAXSI2 (SUBMITIDOR)                            *
//*                   ZMJLPP2B (PROCEDIMIENTO)                         *
//*                   OPCION SIVA : 631 OPCION 2 .- BANCO              *
//*                                                                    *
//* OBJETIVO       :  GENERA Y TRANSFIERE A SERVIDOR EL ARCHIVO DEL    *
//*                   ANEXO 3 DE SOCIEDADES DE INVERSION ASI COMO EL   *
//*                   REPORTE PARA EXCEL DEL BANCO                     *
//*                   (INCLUYE DIFO, BPIGO, CUSTODIA INTERNACIONAL)    *
//*                                                                    *
//*                   (TRANSFERENCIA DE SIVA A SERVIDOR )              *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* PERIODICIDAD   :  A PETICION DEL USUARIO                           *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* TOWA | 18-11-08 | IDCMZA|        |SE GENERA CONDICION PARA CTL-M   *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR         *
//* NO ACTUALIZA TABLAS.                                               *
//**********************************************************************
//PJL20P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.EBCM.ZMJLPB20,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(2,1),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************
//* OBJETIVO : SE ADICIONA CONDICION EN CONTROL-M                      *
//**********************************************************************
//PJL20P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSI2_IN_OK WDATE',
//  COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*
//**********************************************************************
//*                 F I N   ZMJLPP2B                                   *
//**********************************************************************
