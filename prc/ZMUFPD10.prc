//ZMUFPD10 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (MUV) ANTES (SIVA)       *
//*                                                                    *
//* PROCESO        :  ZMUFPD01                                         *
//*                   (EVENTUAL).                                      *
//*                                                                    *
//* OBJETIVO       :  REPROCESO DE VALUACIONES POR OMISION DE          *
//*                   REGISTROS CON PRECIO = 0.                        *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNA                                          *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* REALIZACION    :  JOSE OSCAR SEGURA PEREZ        25/NOV/2009       *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PUF01P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     '),COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.TMP.E&EMP..ZMUFPD10,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*                          === ZM4DU899 ===                          *
//*                                                                    *
//* OBJETIVO : REPROCESO DE ARCHIVO CON LA VALUACION DE LA CARTERA     *
//*                                                                    *
//**********************************************************************
//*PUF01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZMU899T1 DD DSN=MXC&AMB..ZM.FIX.ECO.VALUAC.F&FECHA..ZM4DU899,
//*         DISP=(NEW,CATLG,DELETE),
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//*         SPACE=(CYL,(100,50),RLSE),
//*         UNIT=3390
//*ZMU899T2 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.CONCILIA.ZM4DU899,
//*         DISP=(NEW,CATLG,DELETE),
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//*         SPACE=(CYL,(100,50),RLSE),
//*         UNIT=3390
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T10),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU898 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON LA VALUACION DE CARTERA MDO CAPITALES*
//*                                                                    *
//**********************************************************************
//PUF01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU898T1 DD DSN=MXC&AMB..ZM.FIX.ECO.VALCAP.F&FECHA..ZM4DU898,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU898T2 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.CONCICAP.ZM4DU898,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF02T10),DISP=SHR
//**********************************************************************
//* FIN DEL PROCESO EVENTUAL ZMUFPDXX
//**********************************************************************
