//ZMHFPD31 PROC
//*
//**********************************************************************
//* SISTEMA  : OPERACION SIVA.                                         *
//* OBJETIVO : GENERACION DE ARCHIVOS CON LOS MOVIMIENTOS Y POSICION   *
//*            DE FIN DE MERCADO DE CAPITALES PARA SU ENVIO AL CLIENTE *
//*            DEACERO.                                                *
//* REALIZO  : CAPGEMINI                                               *
//* FECHA    : 23/07/2012.                                             *
//**********************************************************************
//**********************************************************************
//*              LOG DE MODIFICACIONES                                 *
//**********************************************************************
//*  MODIF   AUTOR   FECHA             DESCRIPCION                     *
//* ------- ------- -------- ----------------------------------------- *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*     PASO 1: PHF31P02                                               *
//*     GENERA EL ARCHIVO DE POSICION DIARIA DE LA POSICION            *
//*     PROPIA BANCO PARA CTE. DEACERO.                                *
//**********************************************************************
//*
//PHF31P02 EXEC  PGM=IKJEFT01
//*
//ZMFH0931 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..DEACERO.POSDIA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=122,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF31T02),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//*
//**********************************************************************
//*     PASO 2:PHF31P01                                                *
//*     GENERA EL ARCHIVO DE POSICION DIARIA DE LAS OPERACIONES        *
//*     DE POSICION PROPIA BANCO PARA EL CLIENTEE DEACERO.             *
//**********************************************************************
//*
//PHF31P01 EXEC  PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0931 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..DEACERO.TRANSACI,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=171,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF31T01),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//*
