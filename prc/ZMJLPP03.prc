//ZMJLPP03 PROC
//*
//**********************************************************************
//*                                                                    *
//*               << CIERRE DE CORTE DE CUPON DE MDD >>                *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* CADENA         :  OPCION 143 -> JCL SIVAXLBP                       *
//*                                                                    *
//* OBJETIVO       :  GENERAR REPORTE DE  LIQUIDACIONES E INFORMACION  *
//*                   RESULTANTE DEL PROCESO DE COMPRA/VENTAS DEL      *
//*                   MERCADO DE CAPITALES.                            *
//*                                                                    *
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION 143 P/USUARIO      *
//*                                                                    *
//*   CORRE ANTES   DE :  NINGUNO                                      *
//*                                                                    *
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                       *
//*                                                                    *
//*   ELABORADO POR    :  GETRONICS S.A DE C.V.                        *
//*                                                                    *
//*   FECHA            :  MAYO    / 2009                               *
//*                                                                    *
//**********************************************************************
//* PASO  01 : PLC03P02                                                *
//*                                                                    *
//* OBJETIVO : RECIBE PARAMETROS Y CREA ARCHIVO                        *
//*                                                                    *
//**********************************************************************
//*
//PLC03P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO  02 : PLC03P01                                                *
//*                                                                    *
//* OBJETIVO : ADICIONAR CONDICION PARA QUE SEA TOMADA POR CNTL-M      *
//*                                                                    *
//**********************************************************************
//PLC03P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND SIVAXLBP_IN_OK WDATE',COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
