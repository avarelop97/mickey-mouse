//ZMJFPD33 PROC
//**********************************************************************
//*                                                                    *
//*   APLICACION:  SIVA/MUV                                            *
//*                                                                    *
//*   PROCEDIMI.:  ZMJFPD33                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA CARGA MASIVA DE RETIROS                     *
//*                                                                    *
//*   PERIODICIDAD    :  DISPARADO POR USUARIO                         *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                         -- ZM4DJ028 --                             *
//* OBJETIVO:   EFECTUA RETIROS EFECTUADOS VIA ARCHIVO                 *
//*             GENERANDO CARGA DE CAPTURA Y REPORTE DE ERRONEOS.      *
//**********************************************************************
//PJF33P04 EXEC PGM=IKJEFT01
//*
//ZMDJ33A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.ZMHLPE40,
//            DISP=SHR
//*
//ZMDJ33A2 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.VALORES,DISP=SHR
//*
//ZMDJ33E1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.VALORES.ERROR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=131,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF33T02),DISP=SHR
//*
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETICO:   BORRADO DE ARC. DE RETIROS EFECTUADOS VIA ARC.         *
//*                                                                    *
//**********************************************************************
//PJF33P03 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.VALORES,
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
//* OBJETICO:   BORRADO DE ARC. DE PARAMETROS DE CARGA MASIVA RETIROS  *
//*                                                                    *
//**********************************************************************
//PJF33P02 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.TMP.VAL.ECBP.ZMHLPE40,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* OBJETIVO:   EN CASO DE ERROR SE PRENDE CONDICION PARA ENVIAR       *
//*             REPORTE DE ERROR A SERVIDOR                            *
//**********************************************************************
// IF  PJF33P04.RC EQ 03 THEN
//PJF33P01 EXEC PGM=CTMCND,PARM='ADD COND CBJFCD33_ERR_OK WDATE',
//         COND=(4,LT)
//*
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
// ENDIF
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJFPD33 SIVA MULTIEMPRESA                  *
//**********************************************************************
