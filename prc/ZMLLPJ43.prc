//ZMLLPJ43 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM SISTEMA INTEGRAL DE VALORES                      *
//* PROCESO      : ZMLLPJ43                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : GENERA REPORTE DE POSICIONES CON FILTRO             *
//* REALIZO      : FSW-DGCM (XM26224)                                  *
//* FECHA        : 26 AGOSTO 2013                                      *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* @XXXXXXXXXX  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO     : ZMLJ4301                                                *
//* UTILERIA : IKJEFT01                                                *
//* OBJETIVO : GENERA REPORTE DE POSICIONES CON FILTROS                *
//*--------------------------------------------------------------------*
//*
//ZMLJ4301 EXEC PGM=IKJEFT01
//*
//ZMGJ43E1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZXLLPJ43,DISP=SHR
//*
//ZMGJ43S1 DD DSN=MXCP.ZM.FIX.F&FECHA..ZM4OGJ43,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(LRECL=192,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(5,2),RLSE)
//*
//ZMGJ43S2 DD DSN=MXCP.ZM.FIX.F&FECHA..ZM4OGJ43.INCID,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(5,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMLJ4301),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLLPJ43                        *
//*--------------------------------------------------------------------*
