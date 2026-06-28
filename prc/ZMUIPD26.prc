//ZMUIPD26 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA DE BOLSA - FACTSET                        *
//* PROCESO      : ZMUIPD26.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : PROCESAR ARC. INSTITUCIONES FINANCIERAS Y           *
//*                CONSOLIDA LAS CUENTAS DE LOS CLIENTES               *
//* REALIZO      : AXITY                                               *
//* FECHA        : FEBRERO 2022                                        *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//*  ---------  --------  ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA QUE EL ARCHIVO A SUBIR AL HOST EXISTA           *
//*--------------------------------------------------------------------*
//ZM26PD06 EXEC PGM=IDCAMS
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZM26PT01),DISP=SHR
//*
// IF ZM26PD06.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO DE PE SI NO EXISTE EN PASO ANTERIOR.*
//*------------------------- ------------------------------------------*
//ZM26PD05 EXEC PGM=IEFBR14
//*
//CREARCH1 DD DSN=MXCP.ZM.FIX.FCT.CONSOLI.BANCO.MUV,
//            DISP=(MOD,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=55,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*
//**********************************************************************
//*                          -- ZM4DHA27 --                            *
//* OBJETIVO    : ACTUALIZA INSTITUCIONES FINANCIERAS - BANCOS         *
//**********************************************************************
//ZM26PD04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.FCT.CONSOLI.BANCO.MUV,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZM26PT02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA QUE EL ARCHIVO A SUBIR AL HOST EXISTA           *
//*--------------------------------------------------------------------*
//ZM26PD03 EXEC PGM=IDCAMS
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZM26PT03),DISP=SHR
//*
// IF ZM26PD03.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PASO    : ZMUIPD02.                                                *
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO DE PE SI NO EXISTE EN PASO ANTERIOR.*
//*------------------------- ------------------------------------------*
//ZM26PD02 EXEC PGM=IEFBR14
//*
//CREARCH1 DD DSN=MXCP.ZM.FIX.FCT.CONSOLI.CTES.MUV,
//            DISP=(MOD,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=151,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*
//**********************************************************************
//*                          -- ZM4DHA26 --                            *
//* OBJETIVO    : ACTUALIZA CUENTAS DE CLIENTES PARA CONSOLIDAR        *
//**********************************************************************
//ZM26PD01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.FCT.CONSOLI.CTES.MUV,DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.FCT.CONSOLI.CTESFCT.RESP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=251,BLKSIZE=0)
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.FCT.CONSOLI.CTESFCT.VACIO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=151,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZM26PT04),DISP=SHR
//*
//*------------------------------ -------------------------------------*
//*                    FIN DEL PROCESO ZMUIPD26                        *
//*--------------------------------------------------------------------*
