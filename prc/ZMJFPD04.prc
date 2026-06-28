//ZMJFPD04 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   <<  C O N T R A L O R I A  >>                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  PROCESO DE INTERFAZ DE CONCILIACION BANCARIA        *
//*                                                                    *
//*   EJECUCION DESPUES : DEL PROCESO HANDM001. (QUE REALIZA LAS       *
//*                       TRANFERENCIAS DE LOS ARCHIVOS Y DE LA CONDI- *
//*                       CION QUE VIENEN DE PU).                      *
//*                                                                    *
//*   FECHA:  JULIO 2003                                               *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*  OBJETIVO: ACTIVA CONDICION EN CONTROL_M PARA QUE SE EJECUTE LA    *
//*            CARGA DIARIA PARA LA CONCILIACION BANCARIA              *
//**********************************************************************
//PJF04P01 EXEC  PGM=CTMCND,PARM='ADD COND  CBJFCD01_IN_PR WDATE',
//*
//         COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
