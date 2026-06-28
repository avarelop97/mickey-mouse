//ZMLCPD24 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMLCPD24                                        *
//*                                                                    *
//* NOMBRE DEL JCL   : CBLCCD24                                        *
//*                                                                    *
//* OBJETIVO : GENERAR UN ARCHIVO  CON LOS TOTALES DE LAS OPERACIONES  *
//*            DE SOCIEDADES DE INVERSION.                             *
//*                                                                    *
//* FECHA DE CREACION: ABRIL DEL 2013                                  *
//*                                                                    *
//* TIPO             : HJ1 - PROCLIB.                                  *
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
//**********************************************************************
//*                            (ZM4DHH25)                              *
//* OBJETIVO : GENERAR UN ARCHIVO  CON LOS TOTALES DE LAS OPERACIONES  *
//*            DE SOCIEDADES DE INVERSION.                             *
//*                                                                    *
//**********************************************************************
//PJL25P01 EXEC PGM=IKJEFT01
//*
//ZMHH25A1 DD DSN=MXCP.ZM.FIX.VAL.ECBP.SZPR.ZMLCPZ24,DISP=SHR
//ZMHH25A2 DD DSN=MXCP.ZM.FIX.ECBP.ZMLCPD24.ATOPSI01,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=85,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHH01T01),DISP=SHR
