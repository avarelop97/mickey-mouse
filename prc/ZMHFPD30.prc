//ZMHFPD30 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHFND30                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE ARCHIVO DE INFORMACION DE          *
//*                   OPERACIONES CAPITALES POR SUCURSAL               *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBJFCD31                                         *
//*                                                                    *
//* CORRE          :                                                   *
//* DESPUES DE     :  CBJFCD08                                         *
//*                                                                    *
//* REALIZO        :  FERNANDO CABALLERO ROMAN (ASATECK).              *
//*                                                                    *
//* FECHA          :  SEPTIEMBRE / 2002                                *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |13-JUN-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PHF30P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..FDD3000,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------00100000
//* PROGRAMA: ZM4DHB26                                                  00100000
//* OBJETIVO: CREA ARCHIVO CON INFORMACION   EMISORAS CAPITALES         00100000
//*           ACTUALIZA LA TABLA SECOMIS CON EMISORAS CAPITALES         00100000
//*---------------------------------------------------------------------00100000
//PHF30P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//PI601765 DD DUMMY                                                     00130000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMHB26A2 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..FDD3000,DISP=SHR
//ZMHB26A1 DD DSN=MXCP.ZM.TMP.OTR.E.&EMP..ZMHB26A1,                     00140027
//            DISP=(NEW,CATLG,DELETE),                                  00151028
//            SPACE=(CYL,(10,5),RLSE),                                  00180028
//            DCB=(DSORG=PS,LRECL=80,RECFM=FBA,BLKSIZE=0),              00160026
//            UNIT=3390                                                 00170028
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF30T01),DISP=SHR                   00300000
//*                                                                     00310000
