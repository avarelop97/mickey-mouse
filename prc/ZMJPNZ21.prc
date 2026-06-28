//ZMJPNZ21 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:                                                      *
//*                                                                    *
//*   PROCEDIM. :                                                      *
//*                                                                    *
//*   OBJETIVO  :                                                      *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*   CORRE ANTES DE  : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   CORRE DESPUES DE: A PETICION DEL USUARIO                         *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//*                    -- ICEMAN    --                                 *
//*  GENERA ARCHIVO DE COMPRAS Y VENTAS SOLO PARA APLICAR EN ALGUNAS   *
//*  EMISORAS  PARA BANCO                                              *
//**********************************************************************
//PJP20P4A EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.REC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,80),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJP20P4A),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEMAN    --                                 *
//*  GENERA ARCHIVO DE COMPRAS Y VENTAS SOLO PARA APLICAR EN ALGUNAS   *
//*  EMISORAS  PARA BANCO                                              *
//**********************************************************************
//PJP20P4B EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.REC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,80),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=280,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJP20P4A),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MJ170  --                                 *
//*  GENERA COMPRAS Y VENTAS, PASO SOLO DE PRUEBAS                     *
//**********************************************************************
//PJP20P4C EXEC PGM=IKJEFT01,COND=(4,LT)
//ZME170A1 DD DSN=MXCP.ZM.TMP.SDI.EZPR.ZMJPNP20,DISP=SHR
//ZME170A2 DD DSN=MXCP.ZM.FIX.SDI.ECBP.RECLAS.REC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SDI.EBCM.RECLAS.REC,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC09T09),DISP=SHR
