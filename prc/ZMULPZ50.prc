//ZMULPZ50 PROC
//**********************************************************************
//* SISTEMA:    SISTEMA INTEGRAL DE VALORES (S.I.V.A.)                 *
//* PROCESO:    ZMULPE50   (DISPARADOR)                                *
//*             ZMULPE50   PROCEDIMIENTO                               *
//* OBJETIVO:   DAR DE ALTA LA CONDICION PARA ARRANCAR REPROCESO       *
//*             DE POLIZAS ANTERIORES                                  *
//* CORRE                                                              *
//* ANTES DE:   NINGUNO                                                *
//* DESPUES DE: NINGUNO                                                *
//* REALIZO:    IDANFQ                                                 *
//* FECHA:      MAYO DE 2007                                           *
//**********************************************************************
//*   REPORTE DE MATRIZ CONTABLE                                       *
//*   PROGRAMA ZM4CGI50 EIBM46D                                        *
//**********************************************************************
//PUL50P03  EXEC PGM=IKJEFT01
//*
//EIBM46A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE50,DISP=SHR
//EIBM46R1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE50.SALIDA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PUL50P03),DISP=SHR
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PUL50P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE50.SALIDA,
//            DISP=SHR
//*
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//****************************************************************
//*        TERMINA PROCESO ZMULPZ50 SIVA MULTIEMPRESA            *
//****************************************************************
