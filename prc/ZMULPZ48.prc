//ZMULPZ48 PROC
//**********************************************************************
//* SISTEMA:    SISTEMA INTEGRAL DE VALORES (S.I.V.A.)                 *
//* PROCESO:    ZMULPE48   (DISPARADOR)                                *
//*             ZMULPE48   PROCEDIMIENTO                               *
//* OBJETIVO:   DAR DE ALTA LA CONDICION PARA ARRANCAR REPROCESO       *
//*             DE POLIZAS ANTERIORES                                  *
//* CORRE                                                              *
//* ANTES DE:   NINGUNO                                                *
//* DESPUES DE: NINGUNO                                                *
//* REALIZO:    IDANFQ                                                 *
//* FECHA:      MAYO DE 2007                                           *
//* MODIFCO:    IDCJSL (JOSE OSCAR SEGURA PEREZ)                       *
//* FECHA:      JUNIO DE 2008                                          *
//**********************************************************************
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROLM QUE TERMINO             *
//*            ASIGNACION PREVIA.                                      *
//* PROGRAMA : ZM4CI480 EIBM44D                                        *
//**********************************************************************
//PUL48P03 EXEC PGM=IKJEFT01
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE48,DISP=SHR
//EIBM44R1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE48.SALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(PUL48P03)
//*
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PUL48P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE48.SALIDA,
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
//**********************************************************************
//*        TERMINA PROCESO ZMULPZ48 SIVA MULTIEMPRESA                  *
//**********************************************************************
