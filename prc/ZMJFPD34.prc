//ZMJFPD34 PROC
//**********************************************************************
//*                                                                    *
//*   APLICACION:  MODULO UNICO DE VALORES (M.U.V.)                    *
//*                                                                    *
//*   PROCEDIMI.:  ZMJFPD34                                            *
//*                                                                    *
//*   OBJETIVO  :  PROCESO AUTOMATIZADO PARA NETEAR VALORES Y EFECTIVO *
//*                DE LOS CONTRATOS DE BANCO                           *
//*                                                                    *
//*   PERIODICIDAD    :  DISPARADO POR USUARIO                         *
//*                                                                    *
//**********************************************************************
//*                         -- ZM4DJ027 --                             *
//* OBJETIVO:   EFECTUA DEPOSITOS EFECTUADOS VIA ARCHIVO               *
//*             GENERANDO CARGA DE CAPTURA Y REPORTE DE ERRONEOS.      *
//**********************************************************************
//PJF34P05 EXEC PGM=IKJEFT01
//*
//ZMDJ34A1 DD DSN=MXCP.ZM.TMP.VAL.EBCM.ZMHLPE45,
//            DISP=SHR
//*
//ZMDJ34A2 DD DSN=MXCP.ZM.FIX.TES.EBCM.S000.CTOBCM.LIQ,DISP=SHR
//*
//ZMDJ34E1 DD DSN=MXCP.ZM.FIX.TES.EBCM.S000.CTOBCM.ERROR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=115,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//ZMDJ34R1 DD DSN=MXCP.ZM.FIX.TES.EBCM.S000.CTOBCM.REPOR,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF34T01),DISP=SHR
//*
//**********************************************************************02322306
//* OBJETIVO : DEPURA TABLA DE CARTERA                                 *02322406
//*            ELIMINA REGISTROS DE LOS CONTRATOS DE PP BANCO DE LA    *02323006
//*            CARTERA SI LA POSICION Y EL EFECTIVO SON 0              *
//*          -- ZM4DHU17 --                                            *02323006
//**********************************************************************02324006
//PJF34P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//*                                                                     02327006
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF34T02),DISP=SHR
//*                                                                     02330106
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETICO:   BORRADO DE ARCHIVO DE CARGA                            *
//*                                                                    *
//**********************************************************************
//PJF34P03 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.FIX.TES.EBCM.S000.CTOBCM.LIQ,
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
//* OBJETICO:   BORRADO DE ARCHIVO DE PARAMETROS                       *
//*                                                                    *
//**********************************************************************
//PJF34P02 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.TMP.VAL.EBCM.ZMHLPE45,
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
// IF  PJF34P05.RC EQ 03 THEN
//PJF34P01 EXEC PGM=CTMCND,PARM='ADD COND BCJFCD34_ERR_OK WDATE',
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
