//ZMJLPP21 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJLPP21.                                           *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DEL ARCHIVO CON INFORMACION DEL KARDEX   *
//*                PARA VALIDACION DE INFORMACION PARA EL SAT.         *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR: AZERTIA (FVC)                                     *
//*                                                                    *
//*   FECHA:  SEPTIEMBRE 2004.                                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//**********************************************************************
//*      |2004-09-22|IDCEX10|PJL21P03|CUANDO SE MIGREN LOS ARCHIVOS A  *
//*                                  |PROD REESTABLECER ARCHIVO KARDEX *
//*                                                                    *
//*KARDEX1 DD  DSN=SIVA.SIN.FIX.SATESC.DIRECTO,DISP=SHR                *00060000
//*        DD  DSN=SIVA.SIN.FIX.SATESC.OBLIGA,DISP=SHR                 *00060000
//*        DD  DSN=SIVA.SIN.FIX.SATESC.DEUDA,DISP=SHR                  *00060000
//*        DD  DSN=SIVA.SIN.FIX.SATESC.VARIABLE,DISP=SHR               *00060000
//*        DD  DSN=SIVA.SIN.FIX.SATESC.REPORTO,DISP=SHR                *00060000
//*        DD  DSN=SIVA.SIN.FIX.SATESC.ISRMODIF,DISP=SHR               *00060000
//*                                                                    *00070000
//**********************************************************************
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR         *
//* NO ACTUALIZA TABLAS.                                               *
//**********************************************************************
//PJL21P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD  DUMMY
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.EMP.SUC.OPCCNA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(2,1),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//**********************************************************************
//* PROGRAMA: GENERA CONDICION PARA CONTROL-M                          *00710000
//**********************************************************************
//PJL21P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXSAT_IN_OK WDATE',        00740000
//         COND=(4,LT)
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
