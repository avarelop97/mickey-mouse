//ZMLLPC38 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A).              *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPC38.                                           *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  PROCESO DE ACTUALIZACION DE DATOS DE VENTAS EN CORTO*00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : DIARIA                                         *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*                                                                    *
//*---------------------------------------------------------------------
//* PASO    : ZMPC3803
//* PROGRAMA: ZM4VTA04 RECONSTRUCTOR FASE 1
//*---------------------------------------------------------------------
//ZMPC3803 EXEC PGM=IKJEFT01
//*
//ZMVTA4A1 DD DSN=MXCP.ZM.FIX.HISTORIA.VTACTO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=223,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMP38T03),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : ZMPC3802
//* PROGRAMA: ZM4VTA05 RECONSTRUCTOR FASE 2
//*---------------------------------------------------------------------
//ZMPC3802 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVTA5E1 DD DSN=MXCP.ZM.FIX.HISTORIA.VTACTO,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMP38T02),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : ZMPC3801
//* PROGRAMA: ZM4VTA01
//*---------------------------------------------------------------------
//ZMPC3801 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMP38T01),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZMPC3800                                                *
//* PROGRAMA : IKJEFT01/ZM4ISR13                                       *
//* OBJETIVO : EN CASO DE QUE SE ENCONTRARA UN REPROCESO QUE REALIZAR  *
//* RECALCULA EL COSTO PROMEDIO FISCAL PARA EL LOG NORMAL DE LOS       *
//* CONTRATOS CON VENTAS EN CORTO.                                     *
//*====================================================================*
//ZMPC3800 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMP38T00),DISP=SHR                   01230041
