//ZMHLPD85 PROC
//*-------------------------------------------------------------------**
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBHLPD85  /  ZMHLPD85                               *
//*                                                                    *
//*   OBJETIVO  : REPORTE QUE MUESTRA NIVEL CONTRATO INDICANDO EL      *
//*               PORCENTAJE DE CUOTA                                  *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: CDA                                               *
//*                                                                    *
//*   FECHA:  SETIEMBRE 2014.                                          *
//*                                                                    *
//*-------------------------------------------------------------------**
//*                      LOG DE MODIFICACIONES                         *
//*-------------------------------------------------------------------**
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:  1     SE GENERARAN LA INTERFAZ CON LOS PORCENTAJES DE      *
//*  PHL85P05     ADMINISTRACIóN Y DISTRIBUCIóN POR CADA FONDO Y SERIE.*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//PHL85P05 EXEC PGM=IKJEFT01                                            00070000
//*                                                                     00090000
//ZMFH085S DD DSN=MXCP.ZM.FIX.CBP.CUOTAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=50,BLKSIZE=0,DSORG=PS)
//*                                                                     00090000
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSIN    DD DUMMY                                                     00310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL85T01),DISP=SHR                   00300000
//*                                                                     00310000
//****************************************************************
//* ACTIVA LA CONDICION EN CONTROL-M, INDICANDO QUE YA           *
//* TERMINO DE GENERARSE EL ARCHIVO PARA QUE EL AREA DE DIFO     *
//* TOME EL ARCHIVO Y LOS CARGUE EN SUS TABLAS.                  *
//****************************************************************
//PHL85P01 EXEC PGM=IOACND,PARM='ADD COND CBHLPD85_OK    WDATE',
//         COND=(4,LT)
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*                                                                     00310000
//*--------------------------------------------------------------------*
//*                 FIN    ZMHLPD85                                    *
//*--------------------------------------------------------------------*
