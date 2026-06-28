//ZXLLPE35 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM CASA DE BOLSA, MERCADO DE DINERO                 *
//* PROCESO      : ZXLLPE35                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : REPORTE DE EMISORAS VIGENTES MERCADO DE DINERO      *
//* REALIZO      : SOFTTEK (RODF)                                      *
//* FECHA        : 27 DE JULIO DE 2011                                 *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* @STK-00      XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC35P40                                                *
//* UTILERIA : ZM3DG001                                                *
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN    *
//*            ARCHIVO.                                                *
//*--------------------------------------------------------------------*
//*
//PLC35P40 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.SIVA.MUV.ZXLLPE35,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC35P30                                                *
//* UTILERIA : CTMCND                                                  *
//* OBJETIVO : ACTIVA CONDICION EN CONTROL-M "CBLLNE35_IN" PARA QUE SE *
//*            EJECUTE LA FUNCION DE REPORTE DE EMISORAS.              *
//*            PASO REINICIABLE POR RESTART.                           *
//*--------------------------------------------------------------------*
//*
//PLC35P30 EXEC PGM=CTMCND,
//         PARM='ADD COND CBLLNE35_IN_SIVA_OK WDATE',COND=(4,LT)
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
//*                    FIN DEL PROCESO ZXLLPE35                        *
//*--------------------------------------------------------------------*
