//ZMJFPD29 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  T E S O R E R I A  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA ABONOS PREVIOS TESORERIA                    *
//*                                                                    *
//*   PROCEDIMI.:  ZMJFPD29                                            *
//*                                                                    *
//*   OBJETIVO  :  ABONOS PREVIOS DEL AREA DE TESORERIA                *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBJTNE09                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DISPARADO POR USUARIO                         *
//*                                                                    *
//*   FECHA  :  JUNIO  2016                                            *
//*                                                                    *
//*   AUTOR  :  HITSS                                                  *
//*                                                                    *
//*   MODIFICACIONES :                                                 *
//*                                                                    *
//**********************************************************************
//*                         -- ZM4DI024 --                             *
//* OBJETIVO:   EFECTUA VALIDACION DE ABONOS EFECTUADOS VIA ARCHIVO,   *
//*             GENERANDO CARGA DE CAPTURA Y REPORTE DE ERRONEOS.      *
//**********************************************************************
//JFPD2925 EXEC PGM=IKJEFT01
//*
//ZMDJ23A1 DD DSN=MXC&AMB..ZM.TMP.VAL.ECBP.ZMHLPE40,
//            DISP=SHR
//ZMDJ23A2 DD DSN=MXC&AMB..ZM.FIX.TES.ECBP.SZPR.ABONOSTE,DISP=SHR
//ZMDJ23R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(JFPD2925),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*        PARA QUE SEA TOMADA POR CTL-D DE CASA DE BOLSA        *
//****************************************************************
//JFPD2920 EXEC  PGM=CTMCND,PARM='ADD COND CBJFCD29_IN_OK WDATE',
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
//* OBJETIVO:   BORRADO DE ARC. DE ABONOS PREVIOS EFECTUADOS VIA ARC.  *
//*              'MXC&AMB..ZM.FIX.TES.ECBP.SZPR.ABONOSTE'              *
//*                                                                    *
//**********************************************************************
//JFPD2915 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXC&AMB..ZM.FIX.TES.ECBP.SZPR.ABONOSTE,
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
//* OBJETIVO:   BORRADO DE ARC. DE PARAMETROS DE CARGA MASIVA ABONOS.  *
//*              'MXC&AMB..ZM.TMP.VAL.ECBP.ZMHLPE40     '              *
//*                                                                    *
//**********************************************************************
//JFPD2910 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXC&AMB..ZM.TMP.VAL.ECBP.ZMHLPE40,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJFPD29 SIVA MULTIEMPRESA                  *
//**********************************************************************
