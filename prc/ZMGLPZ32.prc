//ZMGLPZ32 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        : SIVA - MUV                                        *
//*                                                                    *
//* PROCESO        : CBGLPZ32                                          *
//*                  OPERACIONES INUSUALES                             *
//*                                                                    *
//* OBJETIVO       : PROCESO AUTOMATICO EVALUACION DE CONTRATOS        *
//*                                                                    *
//* CORRE
//* DESPUES DE     : SIVAXAEV                                          *
//*                                                                    *
//* REALIZO        : IGNACIO ESQUIVEL FLORES                           *
//*                                                                    *
//* FECHA          : JULIO 2020                                        *
//*                                                                    *
//**********************************************************************
//* MODIFICACIONES: XXXXX XXXXX XXXXX XXXXX XXXXX XXXXX XXXXX XXXXX    *
//* XXXXX XXXXX XXXXX XXX XXXXX XXXXX XXXXX XXXXX XXXXX XXXXX XXXXX    *
//* MARCA: @XXXX XXXX                                                  *
//**********************************************************************
//*                        RECIBE PARAMETROS
//**********************************************************************
//PGF32P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGLPZ32,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                          -- ZM4DGV10 --                            *
//* OBJETIVO    :  EXTRAE INFORMACION INICIAL PARA EVALUACION          *
//*                AUTOMATICA DE CLIENTES DE CASA DE BOLSA             *
//*                INSERTA EN TABLA AUXILIAR ZMDT815                   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PGF32P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//ZMGV10A1 DD  DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGLPZ32,
//         DISP=SHR
//S1DGV10  DD  DSN=MXCP.ZM.FIX.ARCHAUX.ZMDT815,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(100,50),RLSE)
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGL32T07),DISP=SHR
//*
//**********************************************************************
//*                          -- ZM4DGV11 --                            *
//* OBJETIVO    :  OBTIENE NUEVO NIVEL DE RIESGO Y LO ACTUALIZA        *
//*                EN ZMDT800 , GENERANDO ARCHIVO CON LOS REGISTROS    *
//*                QUE SUFRIERON CAMBIOS.                              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PGF32P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//ZMGV11A1 DD  DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGLPZ32,
//         DISP=SHR
//*
//ZMGV11A2 DD  DSN=MXCP.ZM.FIX.ARCHAUX.ZMDT815,
//         DISP=SHR
//*
//S1DGV11  DD  DSN=MXCP.ZM.FIX.ARCH.NNRIES.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(100,50),RLSE)
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGL32T05),DISP=SHR
//*
//**********************************************************************
//*  PROGRAMA: ZM4DLE11
//*  FUNCION:  ACTUALIZA EL FINAL DEL PROCESO AUTOMATICO DE
//*            EVALUACION CTOS. CB (ACT EN "F" EL EVENTO AEC).
//**********************************************************************
//PGF32P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGLPZ32,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGL32T04),DISP=SHR
//*
//**********************************************************************
//*                        == IDCAMS   ==                              *
//* OBJETIVO : BORRA  ARCHIVO DE SIVAXAEC                              *
//**********************************************************************
//PGF32P03 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSPRINT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL32T03),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO    :  ADICIONAR CONDICION PARA QUE SE TRANSMITA           *
//*                EL ARCHIVO CON INFORMACIO DEL NUEVO RIESGO          *
//**********************************************************************
//PGF32P02 EXEC  PGM=CTMCND,
//         PARM='ADD COND NZMDGV39_CBP_SIVA_OK WDATE',COND=(4,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//*
//**********************************************************************
