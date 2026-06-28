//ZMJLPE37 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA CARGOS VARIOS BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCEDIMI.:  ZMJLPE37                                            *
//*                                                                    *
//*   OBJETIVO  :  PREVIO / DEFINITIVO DE CARGOS VARIOS                *
//*                (OPCION Q20)                                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA  :  AGOSTO, 2005.                                          *
//*                                                                    *
//*   AUTOR  :  GETRONICS                                              *
//*                                                                    *
//*   MODIFICACIOES                                                    *
//*     AGOSTO /2005. SE AGREGAN PASOS PARA OPERACIONES PENDIENTES     *
//*     OCTUBRE/2005. SE AGREGA PASO PARA EL CACULO DEL IVA            *
//*     DICIEMB/2005. SE QUITAN LOS PASOS PARA EL CACULO DEL IVA       *
//*     FEBRERI/2006. SE AGREGA PASO PARA EJECUTAR EL POZO             *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJL37P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE37,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//* PROGRAMA: ZM4EJ806      CARGOS VARIOS                              *
//* FUNCION : GENERACION DE I.V.A. PENDIENTE CORRECTIVO                *
//*                                                                    *
//**********************************************************************
//PJL37P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL37T05),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EJ797                                                 *
//* FUNCION:  APLICACION DE LOS CARGOS VARIOS DEFINITIVOS              *
//**********************************************************************
//PJL37P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ797A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE37,
//            DISP=SHR
//ZMJ797R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL37T03),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EJ798                                                 *
//* FUNCION:  REPORTE DE OPERACIONES EFECTUADAS DE CARGOS VARIOS BCM   *
//**********************************************************************
//PJL37P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ798A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE37,
//            DISP=SHR
//ZMJ798R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL37T02),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EJ799                                                 *
//* FUNCION:  DEPURACION DE REGISTROS PROCESADOS DE CARGOS VARIOS      *
//**********************************************************************
//PJL37P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL37T01),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EJ800      CARGOS VARIOS                              *
//* FUNCION : GENERACION DE I.V.A. PENDIENTE.                          *
//*                                                                    *
//**********************************************************************
//PJL37P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ800A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE37,
//            DISP=SHR
//ZMJ800R1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMREP800,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=131,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(20,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL37T04),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJL37P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCVA_IN_OK WDATE',
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
//*
//*---------------------------------------------------------------------
//* PROGRAMA:
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE DISPARE EL
//*           PROCESO BCLLND05
//*---------------------------------------------------------------------
//PJL37P0A EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLND04_&EMP_SIVA_OK WDATE',COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJLPE37 SIVA MULTIEMPRESA                  *
//**********************************************************************
