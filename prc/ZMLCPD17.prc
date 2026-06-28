//ZMLCPD17 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMLCPD17                                        *
//*                                                                    *
//* NOMBRE DEL JCL   : CBLCCD17                                        *
//*                                                                    *
//* OBJETIVO         : GENERARACION DE ARCHIVO CON INFORMACION DE      *
//*                    CORROS A PETICION DE USUARIO DEL AREA DE GESTION*
//*                                                                    *
//* FECHA DE CREACION: 04 DE OCTUBRE DE 2012.                          *
//*                                                                    *
//* TIPO             : HJ1 - PROCLIB.                                  *
//*                                                                    *
//* &AMB             : PREFIJO DEL ENTORNO DE EJECUCION.               *
//*                                                                    *
//* &FECHA           : FECHA DE PROCESAMIENTO DEL ENTORNO (AAMMDD).    *
//*                                                                    *
//* AUTOR            : FABRICA DE SW INDRA / XM02880.                  *
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
//* PASO    : PLC17P02                                                 *
//* PROGRAMA: IKJEFT01 / ZM4EHB94                                      *
//* OBJETIVO: PROGRAMA QUE GENERA ARCHIVO DE CORROS.                   *
//*--------------------------------------------------------------------*
//*
//PLC17P02 EXEC PGM=IKJEFT01
//*
//ZMDJ91A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMLCPZ17,
//            DISP=SHR
//*
//ZMDJ91A2 DD DSN=MXCP.ZM.FIX.MDD.CBP.CORMAN.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(LRECL=121,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPT1702),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN DEL PROC ZMLCPD17                        *
//*--------------------------------------------------------------------*
