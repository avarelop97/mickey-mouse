//ZMWEPL43 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V)                  *
//*                                                                    *
//* PROCESO        :  SIVAXL43                                         *
//*                   DEFINITIVO EJ. TIT. OPC. (WARRANTS)              *
//*                                                                    *
//* OBJETIVO       :  DAR DE ALTA LA CONDICION PARA QUE SE EJECUTE     *
//*                   POR CONTROL-M EL REPORTE DEL DEFINITIVO DE EJ.   *
//*                   DE TIT. OPC. (WARRANTS)                          *
//* REALIZO        :  CAPGEMINI                                        *
//* FECHA          :  AGOSTO     2012.                                 *
//*                                                                    *
//**********************************************************************
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-12 CAPGEMINI 14JUL14 SE RENOMBRAN LOS PASOS PLE43P02 Y    *
//*                               PLE43P01, Y SE AGREGAN LOS PASOS     *
//*                               PLE43P03 Y PLE43P01.                 *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO    : PLE43P04                                                 *
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION : RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS    *
//*           GRABA EN UN ARCHIVO SECUENCIAL.                          *
//*--------------------------------------------------------------------*
//*FS-1.1.0-12-INI
//*PLE43P02 EXEC PGM=ZM3DG001,
//PLE43P04 EXEC PGM=ZM3DG001,
//*FS-1.1.0-12-FIN
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMLLPE43,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*FS-1.1.0-12-INI
//*--------------------------------------------------------------------*
//* PASO     : PLE43P03.                                               *
//* UTILERIA : ZM3DG010.                                               *
//* OBJETIVO : RETORNA CODIGO DE RETORNO DEPENDIENDO DE LA EMPRESA.    *
//*--------------------------------------------------------------------*
//PLE43P03 EXEC PGM=ZM3DG010,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMLLPE43,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
// IF PLE43P03.RC EQ 2 THEN
//*--------------------------------------------------------------------*
//*
//*FS-1.1.0-12-FIN
//*--------------------------------------------------------------------*
//* PASO    : PLE43P02                                                 *
//* PROGRAMA: CTMCND                                                   *
//* FUNCION : ACTIVA LA CONDICION EN CONTROLM QUE CERRO EL MODULO      *
//*           CAPITALES.                                               *
//*--------------------------------------------------------------------*
//*FS-1.1.0-12-INI
//*PLE43P01 EXEC  PGM=CTMCND,PARM='ADD COND     SIVAXL43_OK    WDATE',
//*        COND=(4,LT)
//PLE43P02 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND     SIVAXL43_OK    WDATE'
//*FS-1.1.0-12-FIN
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
//*FS-1.1.0-12-INI
//*--------------------------------------------------------------------*
// ENDIF
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
// IF PLE43P03.RC EQ 1 THEN
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : PLE43P01.                                               *
//* UTILERIA : CTMCND.                                                 *
//* OBJETIVO : ACTIVA CONDICION DE CONTROL-M PARA EJECUTAR PROCESO CON *
//*            CBP.                                                    *
//*--------------------------------------------------------------------*
//PLE43P01 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND     SIVAXL47_OK    WDATE'
//*
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
//*--------------------------------------------------------------------*
// ENDIF
//*--------------------------------------------------------------------*
//*
//*FS-1.1.0-12-FIN
