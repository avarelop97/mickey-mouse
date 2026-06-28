//ZMHLPE17 PROC                                                         00001007
//*--------------------------------------------------------------------*00002001
//*                                                                    *00003001
//*                     C A S A   D E   B O L S A                      *00004001
//*                     =========================                      *00005001
//*                     <<  MERCADO DE VALORES >>                      *00006001
//*                                                                    *00007001
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00008001
//*                                                                    *00009001
//*   PROCEDIMIENTO    : ZMHLPE17                                      *00009107
//*                                                                    *00009201
//*   OBJETIVO         : REPORTE DEFINITIVO DE SUSCRIPTORES            *00009307
//*                      ( OPCION 785 )                                *00009407
//*                                                                    *00009501
//*   CORRE ANTES DE   : NINGUNO                                       *00009601
//*                                                                    *00009701
//*   CORRE DESPUES DE : NINGUNO                                       *00009801
//*                                                                    *00009901
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00010001
//*                                                                    *00010101
//*   FECHA            : ENERO 17, 2003                                *00010208
//*                                                                    *00010301
//*   AUTOR            : GETRONICS - MEXICO                            *00010401
//*                                                                    *00010501
//*--------------------------------------------------------------------*00010601
//*--------------------------------------------------------------------*00010701
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00010801
//*--------------------------------------------------------------------*00010901
//PJH17P05 EXEC PGM=ZM3DG001,REGION=0M,                                 00011008
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00011101
//PI601765 DD DUMMY                                                     00011201
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00011301
//SYSPRINT DD SYSOUT=*                                                  00011401
//SYSOUT   DD SYSOUT=*                                                  00011501
//SYSDBOUT DD SYSOUT=*                                                  00011601
//SYSABOUT DD DUMMY                                                     00011701
//SYSUDUMP DD DUMMY                                                     00011801
//*                                                                     00011901
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE17,               00012007
//            DISP=(NEW,CATLG,DELETE),                                  00012101
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00012205
//            UNIT=3390,                                                00012301
//            SPACE=(CYL,(2,1),RLSE)                                    00012401
//*                                                                     00014101
//*--------------------------------------------------------------------*00014201
//* PROGRAMA: ZM4EHA04                                                 *00014302
//* FUNCION:  REPORTE PRELIMINAR DE REGISTRO DE SUSCRIPTORES           *00014402
//*--------------------------------------------------------------------*00014501
//PJH17P04 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00014608
//*                                                                     00014701
//ZMHA04A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE17,DISP=SHR       00014807
//*                                                                     00014901
//ZMHA04R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015006
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00015201
//SYSPRINT DD SYSOUT=*                                                  00015301
//SYSOUT   DD SYSOUT=*                                                  00015401
//SYSDBOUT DD SYSOUT=*                                                  00015501
//SYSABOUT DD DUMMY                                                     00015601
//SYSUDUMP DD DUMMY                                                     00015701
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL16T03),DISP=SHR                   00015802
//*                                                                     00018401
//**********************************************************************00018507
//*                         -- ZM4DG001 --                             *00018607
//*  OBJETIVO :                                                        *00018807
//*    GRABA LOS PARAMETROS ENVIADOS DE LA LINEA EN LA 'T54' DE PARAM  *00018907
//*    PARA PERMITIR CONTROLAR CONTENCION EN EL PROC. SOLO EN          *00019007
//*    CASO DE QUE TERMINE CON -911, PARA RE-SUBMITIRLO                *
//*                                                                    *
//**********************************************************************
//PJH17P03 EXEC PGM=IKJEFT01,REGION=0M,
//         COND=(20,NE,PJH17P04)
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE17,DISP=SHR
//SYSTSPRT DD DUMMY
//SYSPRINT DD DUMMY
//SYSOUT   DD DUMMY                                                     00020107
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL10T02),DISP=SHR
//*
//*--------------------------------------------------------------------*00018507
//* PROGRAMA: ZM4EHB28                                                 *00018607
//* FUNCION:  REPORTE DEFINITIVO DE REGISTRO DE SUSCRIPTORES           *00018707
//*--------------------------------------------------------------------*00018807
//PJH17P02 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00020150
//PI601765 DD DUMMY
//ZMHB28A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE17,DISP=SHR
//ZMHB28R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL17T03),DISP=SHR                   00020239
//*                                                                     00020249
//**********************************************************************00018507
//*                         -- ZM4DG001 --                             *00018607
//*  OBJETIVO :                                                        *00018807
//*    GRABA LOS PARAMETROS ENVIADOS DE LA LINEA EN LA 'T54' DE PARAM  *00018907
//*    PARA PERMITIR CONTROLAR CONTENCION EN EL PROC. SOLO EN          *00019007
//*    CASO DE QUE TERMINE CON -911, PARA RE-SUBMITIRLO                *
//*                                                                    *
//**********************************************************************
//PJH17P01 EXEC PGM=IKJEFT01,REGION=0M,
//         COND=(20,NE,PJH17P02)
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE17,DISP=SHR
//SYSTSPRT DD DUMMY
//SYSPRINT DD DUMMY
//SYSOUT   DD DUMMY                                                     00020107
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL10T02),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJH17P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRS2_IN_SEP_OK WDATE',
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
