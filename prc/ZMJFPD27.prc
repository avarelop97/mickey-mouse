//ZMJFPD27 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  T E S O R E R I A  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA CARGOS PREVIOS TESORERIA                    *
//*                                                                    *
//*   PROCEDIMI.:  ZMJFPD27                                            *
//*                                                                    *
//*   OBJETIVO  :  CARGOS PREVIOS DEL AREA DE TESORERIA                *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBJTNE03                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DISPARADO POR USUARIO                         *
//*                                                                    *
//*   FECHA  :  AGOSTO 2007                                            *
//*                                                                    *
//*   AUTOR  :  GETRONICS                                              *
//*                                                                    *
//*   MODIFICACIONES :                                                 *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJL45P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD27,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*                         -- ZM4DJ023 --                             *
//* OBJETIVO:   EFECTUA VALIDACION DE CARGOS EFECTUADOS VIA ARCHIVO,   *
//*             GENERANDO CARGA DE CAPTURA Y REPORTE DE ERRONEOS.      *
//**********************************************************************
//PJF27P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*INI-MATA
//*ZMDJ23A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJFPD27,
//*FIN-MATA
//ZMDJ23A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHLPE40,
//            DISP=SHR
//ZMDJ23A2 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CARGOSTE,DISP=SHR
//ZMDJ23R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF27T02),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*        PARA QUE SEA TOMADA POR CTL-D DE CASA DE BOLSA        *
//****************************************************************
//PJL45P01 EXEC  PGM=CTMCND,PARM='ADD COND CBJFCD27_IN_OK WDATE',
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
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETICO:   BORRADO DE ARC. DE CARGOS PREVIOS EFECTUADOS VIA ARC.  *
//*              'MXCP.ZM.FIX.TES.ECBP.SZPR.CARGOSTE'                  *
//*                                                                    *
//**********************************************************************
//PJF27P00 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CARGOSTE,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETICO:   BORRADO DE ARC. DE PARAMETROS DE CARGA MASIVA ABONOS.  *
//*              'MXCP.ZM.TMP.VAL.ECBP.ZMHLPE40     '                  *
//*                                                                    *
//**********************************************************************
//PJF27P0A EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHLPE40,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJFPD27 SIVA MULTIEMPRESA                  *
//**********************************************************************
