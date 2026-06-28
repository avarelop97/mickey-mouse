//ZMJLPD43 PROC
//*********************************************************************
//*                     C A S A   D E   B O L S A                     *
//*                      -> OPCION 3 (EFECTIVOS)                      *
//*                     =========================                     *
//*                    << MIGRACION DE SUCURSALES >>                  *
//*   APLICACION       :  MODULO UNICO DE VALORES CASA BOLSA          *
//*   JCL              :  SIVAXMIG                                    *
//*   CADENA           :  MENU CONCILIACION -> OPCION 3 (EFECTIVOS)   *
//*   OBJETIVO         :  COMPARA ARCHIVOS DE CLIENTES MUV VS. AS400  *
//*   REPORTE             GENERA UN REPORTE DE DIFERENCIAS ENCONTRADAS*
//*   CORRE            :  ENVIADO A EJECUCION DESDE PANTALLA DE       *
//*                       USUARIO EN LA APLICACION DE CONCILIACION    *
//*                       OPCION 967 (SIVA)                           *
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
//PJD43P04 EXEC PGM=ICEMAN,PARM=('&INT1','&INT2')
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.A&INT2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.A&INT2..SORTED,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=59,BLKSIZE=0),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD43T01),DISP=SHR
//*
//**********************************************************************
//*  PASO: 03    ORDENA ARCHIVO DE MUV                                 *
//*  PROGRAMA:   SORT                                                  *
//**********************************************************************
//PJD43P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.CNTL.M&INT1,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.M&INT1..SORTED,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=53,BLKSIZE=0),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD43T02),DISP=SHR
//*
//**********************************************************************
//*  PASO: 02  CONCILIA LOS 2 ARCHIVOS Y GENERA REPORTE DE DIFERENCIAS *
//*  PROGRAMA: ZM4DH043                                                *
//**********************************************************************
//PJD43P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH00CA2 DD DSN=MXCP.ZM.TMP.MIG.A&INT2..SORTED,DISP=SHR
//ZMH00CA3 DD DSN=MXCP.ZM.TMP.MIG.M&INT1..SORTED,DISP=SHR
//*ZMH00CR1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH00CR1 DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD43T03),DISP=SHR
//*
//**********************************************************************
//* PASO: 01 : ACTIVA LA CONDICION EN CONTROL-M PARA INDICAR QUE       *
//*            TERMINO O.K. ESTE PROCESO                               *
//**********************************************************************
//PJD43P01 EXEC  PGM=CTMCND,PARM='ADD COND  SIVAMG43_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
