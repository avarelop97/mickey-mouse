//ZMULPZ47 PROC
//*******************************************************************
//*   REPORTE DE CONTRATOS CON TIPO DE CLIENTE FIJO
//*   PROGRAMA ZM4CGI47 EIBM43D
//*******************************************************************
//PUL47P03 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PUL47P03),DISP=SHR
//EOBM42A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE47,
//            DISP=SHR
//EIBM43R1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE47.SALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PUL47P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE47.SALIDA,
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
//*        TERMINA PROCESO ZMULPZ47 SIVA MULTIEMPRESA            *
//****************************************************************
