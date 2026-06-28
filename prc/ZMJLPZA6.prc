//ZMJLPZA6 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                      << T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                  MODULO DE TESORERIA                               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXLCA  ( PARA CAPACITACION ) (OPC. 569)          *
//*                                                                    *
//*   OBJETIVO  :  PROCEDIMIENTO DE GENERACION DE LA RELACION          *
//*                DE CREDITOS POR LINEA BANCARIA Y DEL ARCHIVO        *
//*                DE TRANSFERENCIA A EL(LOS) BANCO(S) PARA            *
//*                SOLICITUDES ACEPTADAS EN BANCO (CGOS AUTOM)         *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO                  *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK (MHR1)                                    *
//*                                                                    *
//*   FECHA:  MARZO  2003.                                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*  FECHA  DESCRIPCION                                                *
//*--------------------------------------------------------------------*
//* ENER/2003 SE CLONO DEL PROC ZMJLPE06                               *
//* JUL /2006 SE AGREGA PASO CON NUEVO REPORTE DE SOC. DE INV.         *
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     RELACION DE CREDITOS POR LINEA. ( SOC. DE INV. )     *00030000
//*  PJLA6P03                                               ZM4DAG12   *00040000
//**********************************************************************00060000
//PJLA6P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGG12A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPEA6,DISP=SHR
//*
//ZMGG12T1 DD DSN=MXCP.ZM.FIX.TES.EMP.SUC.ARCHTEMB,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=496,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//ZMJG09B1 DD DSN=MXCP.ZM.FIX.TES.EMP.SUC.ARCHINFB,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//           UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//ZMGG12R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL06TA2),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     RELACION DE CREDITOS POR LINEA. ( TESORERIA )        *00030000
//*  PJLA6P02                                               ZM4DAG13   *00040000
//**********************************************************************00060000
//PJLA6P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGG13A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPEA6,DISP=SHR
//*
//ZMGG13T1 DD DSN=MXCP.ZM.FIX.TES.EMP.SUC.ARCHTEMP,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=496,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//ZMJG09B1 DD DSN=MXCP.ZM.FIX.TES.EMP.SUC.ARCHINFA,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//           UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//ZMGG13R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL06TA1),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N     Z M J L P Z A 6                          *00020000
//**********************************************************************00060000
