//ZMHFNP03 PROC
//*--------------------------------------------------------------------*
//* SISTEMA  : ZH / SIVA MULTI EMPRESA ALTAMIRIZADO                    *
//* PROCESO  : ZMHFNP03                                                *
//* OBJETIVO : DEJA LA CONDICION PARA EJECUTAR EL JOB GENERAR EL       *
//*            REPORTE PRELIMINAR DEL CORTE DE CUPON TRACS.            *
//* REALIZO  : ACCENTURE SWF BBVA BANCOMER                             *
//* FECHA    : NOVIEMBRE/   2010                                       *
//*--------------------------------------------------------------------*
//*                      LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//* OBJETIVO:                                                          *
//* AUTOR   :                                                          *
//* FECHA   :                                                          *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO        : PHF03P02                                             *
//* PROGRAMA    : ZM3DG001                                             *
//* DESCRIPCION : RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA   *
//*               EN ARCHIVO.                                          *
//*--------------------------------------------------------------------*
//PHF03P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHFPZ03,
//*ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHFPZ03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=96,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO        : PHF03P01                                             *
//* PROGRAMA    : CTMCND                                               *
//* DESCRIPCION : PROGRAMA : ZM4EHA20                                  *
//*               FUNCION : PRELIMINAR DE CORTE DE CUPON TRACS.        *
//*--------------------------------------------------------------------*
//PHF03P01 EXEC PGM=CTMCND,PARM='ADD COND CBHFND03_IN_OK WDATE',
//          COND=(4,LT)
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
//*
