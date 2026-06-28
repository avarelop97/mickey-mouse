//CBC0100  PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                        >>>>  TESORERIA   <<<<                      *
//*                                                                    *
//* PROCESO        :  PTECBC00                                         *
//*                   PRODUCCION TESORERIA CONCENTRADO DE BANCOS       *
//*                                                                    *
//* OBJETIVO       :  IMPRESION DE CONCENTRADO DE BANCOS               *
//*                   (ANTES CONCENBO)                                 *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  SIVAXCBO                                         *
//*                                                                    *
//* REALIZO        :  MAURICIO BAEZA/FEDERICO HAM                      *
//* FECHA          :  OCTUBRE/ 1993                               OSCT *
//**********************************************************************
//**********************************************************************
//*                         --  CTMCND --                              *
//*  OBJETIVO :                                                        *
//*    BORRAR LA CONDICION A CONTROL-M PARA QUE AL TERMINAR EL JOB DE  *
//*    CONCENTRADO DE BANCOS EL USUARIO PUEDA MANDAR OTRA              *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//CBC0104 EXEC PGM=CTMCND,PARM='DELETE COND CONCENBO_&SUC._IN WDATE'
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*******************************************************************
//*                 CONCENTRADO DE BANCOS                           *
//*******************************************************************
//*
//CBC0103 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*
//VIB744A1 DD DSN=SIVA.TES.WKF.CONCENBO.S&SUC.,DISP=(OLD,PASS)
//VTB798A1 DD SYSOUT=(V,,&FORMA.T09),
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=6336),FCB=CD03,
//            SPACE=(6336,(80,30),RLSE)
//*******************************************************************
//* SE AGREGO LA GENERACION DEL ARCHIVO CON LA INFORMACION DE       *
//* CONCENTRADOS DE BANCOS            - ADE -                       *
//*******************************************************************
//VIB744A2 DD DSN=SIVA.TES.FIX.CONBAN.S&SUC..F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(5,5),RLSE),
//            DCB=(LRECL=147,BLKSIZE=1470,RECFM=FB),
//            UNIT=SYSDA
//*
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=SIVA.CARDS(CBC0103),DISP=SHR
//*
//**********************************************************************
//*                         --  CTMCND --                              *
//*  OBJETIVO :                                                        *
//*    DA DE ALTA NUEVAMENTE LA CONDICION EN CONTROL-M SI TERMINA      *
//*    CONCENTRADO DE BANCOS CON -911 PARA SU RESUBMISION              *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//CBC0102 EXEC PGM=CTMCND,PARM='ADD COND CONCENBO_&SUC._IN WDATE',
//             COND=(20,NE,CBC0103)
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//**********************************************************************
//*       ---  BORRA ARCHIVO DE PASO POR SUCURSAL   ----               *
//*                   ---    IEBFR14    ---                            *
//**********************************************************************
//*
//**********************************************************************
//*
//CBC0101 EXEC PGM=IEFBR14,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*
//ARCHPA   DD DSN=SIVA.TES.WKF.CONCENBO.S&SUC,DISP=(OLD,DELETE,DELETE)
//*
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
