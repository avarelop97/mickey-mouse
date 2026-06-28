//ZMHCPD64 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMHCPD64                                                *
//*                                                                    *
//* OBJETIVO : PROCEDIMIENTO PARA EJECUTAR PROGRAMAS AL CIERRE         *
//*                                                                    *
//* REALIZO  : FSW-TECNOCOM                                            *
//*                                                                    *
//* FECHA    : 26-FEBRERO-2013.                                        *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                       LOG DE MODIFICACIONES                        *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* ----------- -------- ------- ------------------------------------- *
//* FS-1.0.0-01 TECNOCOM 16MAY13 COMENTAR EL PASO PHE24P01             *
//*                              CAMBIAR EL NOMBRE DE LOS PASOS:       *
//*                              CAMBIAR PASO PHE24P03 POR PHE64P02    *
//*                              CAMBIAR PHE24P02 POR PHE64P01         *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PHE64P02                                                *
//* PROGRAMA : IKJEFT01/ZM4DHV77                                       *
//* FUNCION  : GENERAR ARCHIVO DE POSICIONES AL CIERRE.                *
//*--------------------------------------------------------------------*
//*
//*FS-1.0.0-01-INI
//*PHE24P03 EXEC PGM=IKJEFT01
//PHE64P02 EXEC PGM=IKJEFT01
//*FS-1.0.0-01-FIN
//*
//ZMOH77A1 DD DSN=MXCP.ZM.FIX.ARCMURX.POSCIERR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,LRECL=73,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC64T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PHE24P02                                                *
//* PROGRAMA : IKJEFT01/ZM4DHV79                                       *
//* FUNCION  : GENERAR ARCHIVO DE INF. AUTOMATICA AL CIERRE.           *
//*--------------------------------------------------------------------*
//*
//*FS-1.0.0-01-INI
//*PHE24P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PHE64P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*FS-1.0.0-01-FIN
//*
//ZMOH79A1 DD DSN=MXCP.ZM.FIX.ARCMURX.AUTCIERR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,LRECL=225,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC64T02),DISP=SHR
//*
//*FS-1.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO     : PHE24P01                                                *
//* PROGRAMA : IKJEFT01/ZM4DHV76                                       *
//* FUNCION  : GENERAR ARCHIVO DE INF. MANUAL.                         *
//*--------------------------------------------------------------------*
//*PHE24P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ZMOH76A1 DD DSN=MXCP.ZM.FIX.ARCMURX.MANCIERR,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(4,2),RLSE),
//*            DCB=(DSORG=PS,LRECL=225,BLKSIZE=0,RECFM=FB),
//*            UNIT=3390
//*
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC64T03),DISP=SHR
//*FS-1.0.0-01-FIN
//*
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMHCPD64                           *
//*--------------------------------------------------------------------*
