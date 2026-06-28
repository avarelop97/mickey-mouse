//ZMULPZ49 PROC
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PUL49P02 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMULPE49,
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
//*        TERMINA PROCESO ZMULPZ49 SIVA MULTIEMPRESA            *
//****************************************************************
