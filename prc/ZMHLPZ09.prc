//ZMHLPZ09 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPZ09. LO MANDA CBHLPZ09                         *
//*                                                                    *
//*   OBJETIVO  :  GENERAR RESUMEN DE DIFERENCIAS EN CONCILIACIONES CB *
//*                                                                    *
//*   DESPUES DE   :  SIVAXVA1                                         *
//*                                                                    *
//*   PERIODICIDAD :  A SOLICITUD DE USUARIO (OPCION 957 SUBOPC 15)    *
//*                                                                    *
//*   REALIZO   :  WSS-ITS(XMBJ067)                                    *
//*                                                                    *
//*   FECHA     :  SEPTIEMBRE 2013                                     *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*
//*  PROGRAMA: SORT                                                    *
//*  FUNCION:  UNIR ARCHIVOS DE DIFERENCIAS EN CONCILIACIONES PARA     *
//*            GENERAR REPORTE                                         *
//*  NO ACTUALIZA TABLAS.                                              *
//*--------------------------------------------------------------------*
//PHL09P02 EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.TER,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.GAR,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.PRO,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.EXT,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.GLO,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.EMI,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ02.DIFCON.PPB,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ08.DIFCON.CAP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ08.DIFCON.OPE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ09.SRTDIFCO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T13),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH014                                                *
//* FUNCION:  RESUMEN DE DIFERENCIAS EN CONCILIACIONES SIVA-INDEVAL   *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH014A1 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ09.SRTDIFCO,DISP=SHR
//ZMH014A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,DISP=SHR
//ZMH014R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T14),DISP=SHR
//*                                                                     00183716
//*-------------------------------------------------------------------*
//*                    TERMINA ZMHLPZ09                               *
//*-------------------------------------------------------------------*
