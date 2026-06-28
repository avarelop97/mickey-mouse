//ZMJLPZ47 PROC
//*********************************************************************
//*                     C A S A   D E   B O L S A                     *
//*                        -> OPCION 7 (I.S.R.)                       *
//*                     =========================                     *
//*                    << MIGRACION DE SUCURSALES >>                  *
//*   APLICACION       :  MODULO UNICO DE VALORES CASA BOLSA          *
//*   JCL              :  SIVAXMIG                                    *
//*   CADENA           :  MENU CONCILIACION -> OPCION 7 (I.S.R.)      *
//*   OBJETIVO         :  COMPARA ARCHIVOS DE CLIENTES MUV VS. AS400  *
//*   REPORTE             GENERA UN REPORTE DE DIFERENCIAS ENCONTRADAS*
//*   CORRE            :  ENVIADO A EJECUCION DESDE PANTALLA DE       *
//*                       USUARIO EN LA APLICACION DE CONCILIACION    *
//*                       OPCION 967 (SIVA)                           *
//* OPCION LINEA     = 967G, TRANSACCION = ZA33, PREFIJO = SIVAXMIG   *
//* SUBMITIDO POR    : CBJLPZ47                                       *
//*   CORRE ANTES DE   :  NINGUNO                                     *
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           *
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     *
//*   FECHA            :  FEBRERO / 2007                              *
//*********************************************************************
//*
//**********************************************************************
//*  PASO: 04    RECIBE LOS PARAMETROS DE LOS 2 ARCHIVOS A PROCESAR    *
//*              &INT1=ARCHIVO MUV, &INT2=ARCHIVO DE AS400             *
//*              ORDENA ARCHIVO DE AS400                               *
//*  PROGRAMA:   SORT                                                  *
//**********************************************************************
//PJD47P04 EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.ACOISRS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.ACOISRS.SORTED,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=090,BLKSIZE=0),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD47T01),DISP=SHR
//*
//**********************************************************************
//*  PASO: 03    ORDENA ARCHIVO DE MUV                                 *
//*  PROGRAMA:   SORT                                                  *
//**********************************************************************
//PJD47P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.CNTL.MISRANU,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.MISRANU.SORTED,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD47T02),DISP=SHR
//*
//**********************************************************************
//*  PASO: 02  CONCILIA LOS 2 ARCHIVOS Y GENERA REPORTE DE DIFERENCIAS *
//*  PROGRAMA: ZM4DH047                                                *
//**********************************************************************
//PJD47P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH00GA2 DD DSN=MXCP.ZM.TMP.MIG.ACOISRS.SORTED,DISP=SHR
//ZMH00GA3 DD DSN=MXCP.ZM.TMP.MIG.MISRANU.SORTED,DISP=SHR
//*ZMH00GR1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH00GR1 DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD47T03),DISP=SHR
//*
