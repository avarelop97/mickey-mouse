//ZMUFPD28 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* NOTA IMPORTANTE: ESTE PROC SUSTITUYE TEMPORALMENTE AL PROC         *
//*                  ZMJFPD28, PARA HACER CORRER UNICAMENTE EL PROG.   *
//*                  QUE GENERA LOS ARCHIVOS PARA CCMV DE BCM. UNA VEZ *
//*                  QUE SE TENGA BIEN PROBADA LA CADENA COMPLETA DEBE-*
//*                  SER SUSTITUIDO POR EL PROC ANTES MENCIONADO .     *
//* PROCESO        :  BCJFCD28                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*                :  GENERACION DE REPORTES                           *
//*                   (TESORERIA)                                      *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  BCGFCD01                                         *
//*                                                                    *
//* DESPUES DE     :  BCJFND26, BCLFND23                               *
//*                                                                    *
//* REALIZO        :  ASATECK S.A. DE C.V.                             *
//* FECHA          :  NOVIEMBRE  2002                                  *
//*                                                                    *
//* OBSERVACION    :                                                   *
//*                                                                    *
//**********************************************************************
//*ACV*SIVA*PENDIENTE*HPC***********************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PUF28P11 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','   ','   ','   ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD28,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DHB79
//* OBJETIVO: GENERA ARCHIVOS CON INFORMACION PRIVILEGIADA (CCMV)
//* PASO REINICIABLE POR RESTART
//*---------------------------------------------------------------------
//PJF28P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSABEND DD DUMMY
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//ZMHB79P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD28,DISP=SHR
//ZMHB79A1 DD DSN=MXCP.ZM.FIX.SIN.E&EMP..TRANSA.CCMV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=377,BLKSIZE=0),
//            UNIT=3390
//ZMHB79A2 DD DSN=MXCP.ZM.FIX.SIN.E&EMP..CIFRAS.CCMV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=51,BLKSIZE=0),
//            UNIT=3390
//ZMHB79A3 DD DSN=MXCP.ZM.FIX.SIN.E&EMP..EMISOR.CCMV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=98,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF28T11),DISP=SHR
//*
//*---------------------------------------------------------------------
//*                   FIN DEL PROCEDIMIENTO                            *
//*---------------------------------------------------------------------
