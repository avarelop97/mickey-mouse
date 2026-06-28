//ZMJIPM01 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   << SOCIEDADES DE INVERSION >                     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMJIPM01                                         *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DESPUES DEL FIN DE DIA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*                :  GENERA UN ARCHIVO DEL ANEXO M2.                  *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  CBJICD07                                         *
//*                                                                    *
//* REALIZO        :  ARACELI SALAZAR PEREZ                            *
//* FECHA          :  AGOSTO / 2003                                    *
//*                                                                    *
//* OBSERVACION    :  SE PROCESA MENSUALMENTE.                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*                                                                    *
//*  PASO:  2     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PJI01P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//* DESPUES DE     :                                                   *
//**********************************************************************
//PJI01P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..ZMJIPM01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),
//            BUFNO=30
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
//*                       --  ZM4MJ169  --                             *
//*            GENERAR ARCHIVO ANEXO M2, COMISIONES PAGADAS            *
//*                                                      ** SOC. INV.  *
//**********************************************************************
//PJI01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4MJ1P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..ZMJIPM01,DISP=SHR
//ZM4MJ1A2 DD DSN=MXCP.ZM.GDGD.SIN.ANEXO2M(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(6,3),RLSE),
//            LRECL=90,BLKSIZE=0,RECFM=FB,
//            UNIT=3390,DCB=BKUP.MODEL
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI01T01),DISP=SHR
//*
//**********************************************************************
//*PROGRAMA: ICEGENER
//*OBJETIVO: REALIZAR LA COPIA DEL ARCHIVO
//*          MXCP.ZM.GDGD.SIN.ANEXO2M(+1) GFPP.CB.FIX.ANEXO2M
//*          PARA REALIZAR SU TRANSFERENCIA
//**********************************************************************
//PJI01P00 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.SIN.ANEXO2M(+1),DISP=SHR
//SYSUT2   DD DSN=GFPP.CB.FIX.ANEXO2M,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(6,3),RLSE),
//            LRECL=90,BLKSIZE=0,RECFM=FB,DSORG=PS,
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMJIPM01                       *
//**********************************************************************
