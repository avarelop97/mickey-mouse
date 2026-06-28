//ZMVDPV03 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V.)                 *
//*                                                                    *
//* PROCESO        :  BCVDCV03                                         *
//*                   MIGRACION CLIENTES BPIGO A MUV EN PU             *
//*                                                                    *
//* OBJETIVO       :  GENERAR ARCHIVO SECUENCIAL PARA CARGA            *
//*                   DE TABLA  EDDEPRE, EDVALCA, EDMOVED              *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  BCVDCV04                                         *
//*                                                                    *
//* DESPUES DE     :  BCVDCV02                                         *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//*                                                                    *
//* FECHA          :  MARZO 2005                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO DE FORMA EVENTUAL A SOLICITUD DEL   *
//*                   USUARIO Y CONFORME A LAS MIGRACIONES BPIGO-MUV   *
//*                                                                    *
//**********************************************************************
//*                           -- ZM4VVW21 --                           *
//* OBJETIVO    :  GENERAR ARCHIVO CON INFORMACION PARCIAL PARA CARGA  *
//*                DE EDIMPUE                                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD03P05 EXEC PGM=IKJEFT01
//*
//ZMVW21A1 DD DSN=MXCP.ZM.FIX.PREVIO.BPIGO.EDIMPUE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD03T05),DISP=SHR
//**********************************************************************
//*                           -- ZM4VVW22 --                           *
//* OBJETIVO    :  GENERAR ARCHIVO SECUENCIAL PARA CARGA DE EDIMPUE    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD03P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW22A1  DD DSN=MXCP.ZM.FIX.PREVIO.BPIGO.EDIMPUE,DISP=SHR
//*
//ZMVW22A2  DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.EDIMPUE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD03T04),DISP=SHR
//*
//**********************************************************************
//*                           --          --                           *
//* OBJETIVO    :  GENERAR ARCHIVO SECUENCIAL PARA CARGA DE EDDEPRE    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD03P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW23A1  DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.EDDEPRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD03T03),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4VVW24 --                           *
//* OBJETIVO    :  GENERAR ARCHIVO SECUENCIAL PARA CARGA DE EDVALCA    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD03P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW24A1  DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.EDVALCA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD03T02),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4VVW25 --                           *
//* OBJETIVO    :  GENERAR ARCHIVO SECUENCIAL PARA CARGA DE EDMOVED    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD03P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW25A1  DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.EDMOVED,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD03T01),DISP=SHR
//*
