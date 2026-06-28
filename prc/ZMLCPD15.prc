//ZMLCPD15 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<MERCADO DE CAPITALES>>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBLCND15                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA REPORTE DE MERCADO DE DINERO                 *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXCN2                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A PETICION DEL USUARIO                        *
//*                                                                    *
//*   ELABORADO POR: JORGE A PEREZ CONTRERAS   JPC  (AZERTIA)          *
//*                                                                    *
//*   FECHA:  ABRIL  2008.                                             *
//*                                                                    *
//*   ACTUALIZA :                                                      *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4DLD14
//* PASO ZMPIJF10 GENERA DOS ARCHIVOS PARA EL REPORTE
//*--------------------------------------------------------------------*
//ZMPIJF10 EXEC PGM=IKJEFT01,
//         PARM=('&EMP',)
//*
//ZMLD12S1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMLD12S1.ZMLCPD15,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//ZMLD12S2 DD DSN=MXCP.ZM.FIX.E&EMP..ZMLD12S2.ZMLCPD15,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPID104),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*PASO ZMLCP005 SORTEA LOS ARCHIVOS GENERADOS Y ARMA EL REPORTE       *
//*--------------------------------------------------------------------*
//ZMLCP005 EXEC PGM=ICEMAN,COND=(4,LT),
//         PARM=('&EMP',)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.E&EMP..ZMLD12S1.ZMLCPD15,
//         DISP=SHR
//         DD DSN=MXCP.ZM.FIX.E&EMP..ZMLD12S2.ZMLCPD15,
//         DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DLD11.ZMLCPD12,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPID105),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*PASO ZMLCP001 RENUMERA LAS PAGINAS DEL REPORTE *
//*--------------------------------------------------------------------*
//*
//ZMLCP001 EXEC PGM=ZM4DLD11,COND=(4,LT),
//         PARM=('&EMP',)
//*
//ZMLD11E1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DLD11.ZMLCPD12,
//            DISP=SHR
//*
//ZMLD11S1 DD DSN=MXCP.ZM.FIX.E&EMP..REPORTE.ZMLCPD12,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=133,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M L C P D 1 5                            *00020000
//*--------------------------------------------------------------------*00010000
