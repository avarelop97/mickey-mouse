//ZMHLPZ80 PROC
//**********************************************************************
//*               C A S A   D E  B O L S A                             *
//*               ========================                             *
//*               << SISTEMA DE VALORES >>                             *
//*                                                                    *
//* APLICACION    :  MODULO UNICO DE VALORES  (M.U.V.)                 *
//*                                                                    *
//* OBJETIVO      :  DESGLOSE VIRTUAL DE ORDENES GLOBALES DE MERCADO   *
//*                  DE CAPITALES, PARA BANCA PATRIMONIAL.             *
//*                                                                    *
//* OPCION LINEA  : 114, TRANSACCION = ZV14, PREFIJO = SIVAXPRV        *
//*                                                                    *
//* PROCESO       : CBHLPZ80                                           *
//*                                                                    *
//* PERIODICIDAD  : ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA      *
//*                 A PETICION DE USUARIO                              *
//*                                                                    *
//********************************************************************
//* PASO  01 : PJH80P02
//*
//* OBJETIVO : RECIBE PARAMETROS Y CREA ARCHIVO
//*
//********************************************************************
//PJH80P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMHLPE80,
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
//* PROGRAMA: ZM4DH508                                                 *
//* FUNCION:  GENERA PRORRATEO VIRTUAL DE UNA ORDEN GLOBAL.            *
//*--------------------------------------------------------------------*
//PJH80P01 EXEC PGM=IKJEFT01
//ZMHA01A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMHLPE80,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL80T01),DISP=SHR
//*
//**********************************************************************
//*                      F I N   Z M H L P Z 8 0                       *
//**********************************************************************
