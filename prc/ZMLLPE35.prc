//ZMLLPE35 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM CASA DE BOLSA, MERCADO DE DINERO                 *
//* PROCESO      : ZMLLPE35                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : REPORTE DE EMISORAS VIGENTES MERCADO DE DINERO      *
//* REALIZO      : SOFTTEK (CSNG)                                      *
//* FECHA        : 06 DE JULIO DE 2011                                 *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* @STK-00      XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO     : PLC11P40                                                *
//* UTILERIA : ZM3DG001                                                *
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN    *
//*            ARCHIVO                                                 *
//*--------------------------------------------------------------------*
//*
//PLC11P40 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.SIVA.MUV.ZMLLPE35,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//             UNIT=3390,
//             SPACE=(CYL,(1,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC11P35                                                *
//* UTILERIA : IKJEFT01                                                *
//* OBJETIVO : REPORTE DE EMISORAS VIGENTES MERCADO DE DINERO          *
//*--------------------------------------------------------------------*
//*
//PLC11P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXC&AMB..ZM.TMP.MDD.SIVA.MUV.ZXLLPE35,DISP=SHR
//*
//EMIVIGR1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//EMIVIGL1 DD DSN=MXCP.ZM.TMP.MDD.LIS.ZM4EL020,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=256,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL35T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC11P34                                                *
//* UTILERIA : ICEGENER                                                *
//* OBJETIVO: COPIA DEL ARCHIVO MXCP.ZM.TMP.MDD.LIS.ZM4EL020           *
//*           A                 MXCP.ZM.FIX.MDD.LIS.ZM4EL020.OK        *
//*---------------------------------------------------------------------
//PLC11P34 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.TMP.MDD.LIS.ZM4EL020,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.MDD.LIS.ZM4EL020.OK,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=256,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC11P30                                                *
//* UTILERIA : CTMCND                                                  *
//* OBJETIVO : SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D     *
//*--------------------------------------------------------------------*
//*
//PLC11P30 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND CBLLNE35_IN_SEP_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLLPE35                        *
//*--------------------------------------------------------------------*
