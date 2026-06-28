//ZMLCPD22 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMLCPD22                                        *
//*                                                                    *
//* NOMBRE DEL JCL   : CBLCCD22                                        *
//*                                                                    *
//* OBJETIVO         : GENERA ARCHIVOS CON MOVTOS, POS Y SALDOS        *
//*                    CLIENTES DE GESTION INDUCIDA                    *
//*                                                                    *
//* FECHA DE CREACION: 13 DE DICIEMBRE 2012.                           *
//*                                                                    *
//* PERIOCIDAD       : PROCESO MANUAL.                                 *
//*                                                                    *
//* &FECHA           : FECHA DE PROCESAMIENTO DEL ENTORNO (AAMMDD).    *
//*                                                                    *
//* AUTOR            : FABRICA DE SW INDRA / OUF.                      *
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
//* PASO    : PLC22P03                                                 *
//* PROGRAMA: IKJEFT01 / ZM4DH082                                      *
//* OBJETIVO: PROGRAMA QUE GENERA ARCHIVO CON MOVIMIENTOS CLIENTES     *
//*           DE GESTION INDUCIDA.                                     *
//*--------------------------------------------------------------------*
//*
//PLC22P03 EXEC PGM=IKJEFT01
//*
//ZMH082A2 DD DSN=MXCP.ZM.FIX.MDD.ARCMMOV.D&FECHA,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=228,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL21P03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PLC22P02                                                 *
//* PROGRAMA: IKJEFT01 / ZM4DH080                                      *
//* OBJETIVO: PROGRAMA QUE GENERA ARCHIVO CON POSICION DE CLIENTES     *
//*           DE GESTION INDUCIDA.                                     *
//*--------------------------------------------------------------------*
//*
//PLC22P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0801 DD DSN=MXCP.ZM.FIX.MDD.ARCMPOS.D&FECHA,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=145,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL21P02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PLC22P01                                                 *
//* PROGRAMA: IKJEFT01 / ZM4DH083                                      *
//* OBJETIVO: PROGRAMA QUE GENERA ARCHIVO CON SALDOS DE CLIENTES       *
//*           DE GESTION INDUCIDA.                                     *
//*--------------------------------------------------------------------*
//*
//PLC22P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH083A2 DD DSN=MXCP.ZM.FIX.MDD.ARCMSAL.D&FECHA,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=427,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL21P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN DEL PROC ZMLCPD21                        *
//*--------------------------------------------------------------------*
