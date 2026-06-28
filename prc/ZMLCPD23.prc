//ZMLCPD23 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMLCPD23                                        *
//*                                                                    *
//* NOMBRE DEL JCL   : CBLCCD23                                        *
//*                                                                    *
//* OBJETIVO         : GENERACION DEL ARCHIVO DE FONDO DE FONDOS       *
//*                    CON INF. DE LA CONSULTA DE LA OP. 868           *
//*                                                                    *
//* FECHA DE CREACION: ABRIL DEL 2013                                  *
//*                                                                    *
//* TIPO             : HJ1 - PROCLIB.                                  *
//*                                                                    *
//* &AMB             : PREFIJO DEL ENTORNO DE EJECUCION.               *
//*                                                                    *
//* &FECHA           : FECHA DE PROCESAMIENTO DEL ENTORNO (AAMMDD).    *
//*                                                                    *
//* AUTOR            : FSW-TECNOCOM                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*             L O G   D E    M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* -----------  -------  -------  ----------------------------------- *
//* FS-1.0.0-01  XXXXXXX  DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO    : PLC23P02                                                 *
//* PROGRAMA: IKJEFT01 / ZM4DH085                                      *
//* OBJETIVO: GENERA ARCHIVO DE OPERACIONES DE FONDO DE FONDOS         *
//*--------------------------------------------------------------------*
//*
//PLZ23P01 EXEC PGM=IKJEFT01
//*
//ZMDJ91A1 DD DSN=MXCP.ZM.FIX.VAL.ECBP.SZPR.ZMLCPZ23,
//            DISP=SHR
//*
//ZMFH0841 DD DSN=MXCP.ZM.FIX.FONDOS.ZMLCPZ23,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=104,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PLZ23P01),DISP=SHR
//*
