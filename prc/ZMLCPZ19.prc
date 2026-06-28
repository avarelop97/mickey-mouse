//ZMLCPZ19 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMLCPZ19                                        *
//*                                                                    *
//* NOMBRE DEL JCL   : CBLCCD19                                        *
//*                                                                    *
//* OBJETIVO         : MODIFICACION DEL ARCHIVO DE ASIGNACION DE       *
//*                    CONTRATOS DE GESTION CON FOLIO DE BUC.          *
//*                                                                    *
//* FECHA DE CREACION: 01 DE OCTUBRE DE 2012.                          *
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
//* PASO    : PLC19P02                                                 *
//* PROGRAMA: IKJEFT01 / ZM4EHB95                                      *
//* OBJETIVO: PROGRAMA QUE MODIFICA ARCH. DE ASIGNACION DE CONTRATOS   *
//*           DE GESTION CON FOLIO DE BUC.                             *
//*--------------------------------------------------------------------*
//*
//PLC19P02 EXEC PGM=IKJEFT01
//*
//*JOSP SOLUCION TEMPORAL A CANCELACIóN POR FALTA DE ARCHIVO
//*ZMDJ91A1 DD DSN=MXCP.ZM.FIX.GESTION.D&FECHA,
//*            DISP=SHR
//ZMDJ91A1 DD DUMMY
//*
//ZMDJ91A2 DD DSN=MXCP.ZM.FIX.GESTIONF.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(LRECL=237,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC19002),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN DEL PROC ZMLCPZ19                        *
//*--------------------------------------------------------------------*
