//ZMHCPA41 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM REPORTES REGULATORIOS ORDENES Y ASIGNACIONES.    *
//* PROCESO      : ZMHCPA41                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : GENERAR LOS ARCHIVOS DE TITULARES Y COTITULARES     *
//*                PARA EL MATCH EN LOS REPORTES REGULATORIOS.         *
//* REALIZO      : XM09840.                                            *
//* FECHA        : 28 DE FEBRER0 DE 2020.                              *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* PASO     : PHC41P01                                                *
//* OBJETIVO : SEPARA ARCHIVO DE PERSONAS POR TITULARES Y COTITULARES. *
//* UTILERIA : ICEMAN                                                  *
//**********************************************************************
//PHC41P01 EXEC PGM=ICEMAN
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJPCZ22.RECLAS.CLIENTE,DISP=SHR
//*
//TITUL    DD DSN=MXCP.ZM.FIX.TITPER.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//COTI1    DD DSN=MXCP.ZM.FIX.COT1.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//COTI2    DD DSN=MXCP.ZM.FIX.COT2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//COTI3    DD DSN=MXCP.ZM.FIX.COT3.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//COTI4    DD DSN=MXCP.ZM.FIX.COT4.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//COTI5    DD DSN=MXCP.ZM.FIX.COT5.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC41T14),DISP=SHR
//*
