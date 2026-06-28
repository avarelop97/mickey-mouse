//ZMHIPM06 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     << MERCADO DE VALORES   >>                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHIPM06                                            *
//*                                                                    *
//*   OBJETIVO  :  TRANSFERENCIA TIPO SERVIDOR - HOST                  *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXVET                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIA                                        *
//*                                                                    *
//*   ELABORADO POR   :  INDRA (IRMA JULIA CAMACHO NUNEZ)              *
//*                                                                    *
//*   FECHA           :  MAYO DEL 2010                                 *
//**********************************************************************00002000
//**********************************************************************00009500
//*                                                                    *00009400
//* MODIFICO       :                                                   *00009000
//* FECHA          :                                                   *00009100
//* OBSERVACION    :                                                   *00009300
//*                                                                    *00009300
//**********************************************************************00009500
//**********************************************************************
//* PASO     : ZMHI0601                                                *
//* OBJETIVO : CREAR LOS ARCHIVOS EN HOST PARA LA TRANSFERENCIA        *
//**********************************************************************
//ZMHI0601 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//ARCHIVO1 DD DSN=SIVA.VAL.FIX.VECPRE,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,5),RLSE),
//            UNIT=3390
//*SYSIN    DD DUMMY
//**********************************************************************
//* PASO     : ZMHI0600                                                *
//* PROGRAMA : DMBATCH                                                 *
//* FUNCION  : TRANSFERIR UN ARCHIVO DEL SERVIDOR AL HOST              *
//**********************************************************************
//ZMHI0600 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHI06T00),DISP=SHR
//**********************************************************************
//**********************************************************************
//*                 F I N  Z M H I P M 0 6                             *
//**********************************************************************
