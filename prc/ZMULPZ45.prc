//ZMULPZ45 PROC
//*--------------------------------------------------------------------*
//*                  SISTEMA ENLACE CONTABLE                           *
//*--------------------------------------------------------------------*
//*   REPORTE DE MATRIZ CONTABLE ZM4CGI45 EIBM19D
//*--------------------------------------------------------------------*
//PUL45P03 EXEC PGM=IKJEFT01
//EIBM19A2 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE45,DISP=SHR
//EIBM19R2 DD DSN=MXC&AMB..ZM.TMP.EMP.SUC.ZMULPE45.SALIDA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PUL45P03),DISP=SHR
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PUL45P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE45.SALIDA,
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
//*        TERMINA PROCESO ZMULPZ45 SIVA MULTIEMPRESA            *
//****************************************************************
