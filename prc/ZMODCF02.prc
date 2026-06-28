//ZMODCF02 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - REPORTE DE COMISIONES DE OPERACIONES SUCESIVAS *
//* PROCESO      : ZMODCF02.                                           *
//* PERIODICIDAD : MESNUAL,                                            *
//* OBJETIVO     : ACUMULADO MENSUAL DE COMISIóN                       *
//* FECHA        : NOVI. 2019.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                               SUITABILITY.                         *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                        == ZM4DRCOC ==                              *
//* OBJETIVO : PROGRAMA DE REPORTE DE COMISIONES COBRADAS DE ORDENES   *
//*            CONDICIONADAS POR OFICINA-PROMOTOR                      *
//**********************************************************************
//ZOC01T49 EXEC PGM=IKJEFT01
//*
//REPCOOC  DD DSN=MXCP.ZM.FIX.OCO.ZM4DRCOC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.OCO.ZM4DRCOC.COMIS.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=130,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZOC01T49),DISP=SHR
//*
//**********************************************************************
//* PASO    : PZOC01T40                                                *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE DE COMISION DE ORDENES CONDICIOANDAS             *
//**********************************************************************
//ZOC01T40 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.OCO.ZM4DRCOC,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*
//****************** FIN DEL PROCESO ZMODCF02 **************************
