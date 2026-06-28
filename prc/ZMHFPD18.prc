//ZMHFPD18 PROC
//**********************************************************************
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHFND17                                         *
//*                                                                    *
//* OBJETIVO       :  TRANSFIERE LOS ARCHIVOS DEL SISTEMA SIVA A       *
//*                   A SERVIDOR PARA EL SISTEMA SIRE.                 *
//*                                                                    *
//* REALIZO        :  SWF - ACCENTURE - XM09317                        *
//*                                                                    *
//* FECHA          :  06 DE JULIO DEL 2010.                            *
//**********************************************************************
//*
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//*  PASO        : PHC08P03                                            *
//*  PROGRAMA    : DMBATCH                                             *
//*  DESCRIPCION : ENVIO DEL ARCHIVO DE TRANSACCIONES AL SERVIDOR      *
//**********************************************************************
//PHC08P03 EXEC PGM=DMBATCH,PARM=(YYSLYNQ)
//*
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//*
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD *
  SIGNON USERID=(NDMUSER,NDMUSER)                                -
         ESF=YES
   SUBMIT PROC=CBWB02GE                                          -
       &DSN1='MXCP.ZM.FIX.MDC.ECBP.SIRE.TRANSACI'                -
    &DSN2='\\SIRE\COM\MEX_MEX\RECEPCION\SIVA\ZMRVT20%%ODATE.T%%TIME.TXT'
  SIGNOFF
//*
//**********************************************************************
//*  PASO        : PHC08P02                                            *
//*  PROGRAMA    : DMBATCH                                             *
//*  DESCRIPCION : ENVIO DEL ARCHIVO POSICION AL SERVIDOR              *
//**********************************************************************
//PHC08P02 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//*
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD *
  SIGNON USERID=(NDMUSER,NDMUSER)                                -
         ESF=YES
   SUBMIT PROC=CBWB02GE                                          -
       &DSN1='MXCP.ZM.FIX.MDC.ECBP.SIRE.POSICION'                -
    &DSN2='\\SIRE\COM\MEX_MEX\RECEPCION\SIVA\ZMRVP20%%ODATE.T%%TIME.TXT'
  SIGNOFF
//*
//**********************************************************************
//*  PASO        : PHC08P01                                            *
//*  PROGRAMA    : DMBATCH                                             *
//*  DESCRIPCION : ENVIO DEL ARCHIVO CONCILIACION AL SERVIDOR          *
//**********************************************************************
//PHC08P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//*
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD *
  SIGNON USERID=(NDMUSER,NDMUSER)                                -
         ESF=YES
   SUBMIT PROC=CBWB02GE                                          -
       &DSN1='MXCP.ZM.FIX.MDC.ECBP.SIRE.CONCILIA'                -
    &DSN2='\\SIRE\COM\MEX_MEX\RECEPCION\SIVA\ZMRVC20%%ODATE.T%%TIME.TXT'
  SIGNOFF
//*
