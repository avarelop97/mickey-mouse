//ZMULPZ46 PROC
//**********************************************************************
//*                                                                    *
//*                  SISTEMA ENLACE CONTABLE                           *
//*                  MARZO  2007                                       *
//*                                                                    *
//**********************************************************************
//*
//*******************************************************************
//*   REPORTE DE CUENTAS CONCENTRADORAS Y BANCOS
//*   PROGRAMA ZM4CGI46 EIBM42D
//*******************************************************************
//PUL46P03 EXEC PGM=IKJEFT01
//EIBM42A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE46,DISP=SHR
//EIBM42R1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE46.SALIDA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PUL46P03),DISP=SHR
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PUL46P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE46.SALIDA,
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
//*        TERMINA PROCESO ZMULPZ46 SIVA MULTIEMPRESA            *
//****************************************************************
