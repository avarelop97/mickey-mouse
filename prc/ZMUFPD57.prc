//ZMUFPD57 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA  : ZM (CASA DE BOLSA)                                      *
//* JCL      : CBUFND57                                                *
//* PROCESO  : ZMUFPD57                                                *
//* OBJETIVO : ENVIAR ARCHIVO DE PERSONAS A BANDEJA SUPERVALLA         *
//* PERIODICIDAD: DIARIO                                               *
//* FECHA    : ABRIL DEL 2012.                                         *
//*                                                                    *
//**********************************************************************
//*                            PASOS                                   *
//*====================================================================*
//* PASO     : ZMPD5702                                                *00930002
//* PROGRAMA : ICEGENER                                                *00930002
//* OBJETIVO : RESPALDO DE ARCHIVO DE PERSONAS                         *00930002
//*====================================================================*
//ZMPD5702 EXEC PGM=ICEGENER
//SYSUT1   DD  DSN=MBVP.PE.FIX.REPORTE.DIARIO.P21.F&FECHA,DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.FIX.REPORTE.DIARIO.P21.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(700,350),RLSE),UNIT=3390,
//             DCB=(RECFM=FB,LRECL=205,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*                                                                    *
//*====================================================================*
//* PASO     : ZMPD5701                                                *00930002
//* PROGRAMA : ICEGENER                                                *00930002
//* OBJETIVO : ENVíA ARCHIVO DE PERSONAS A BANDEJA SUPERVAL            *00930002
//*====================================================================*
//ZMPD5701 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSUT1   DD  DSN=MXCP.ZM.FIX.REPORTE.DIARIO.P21.F&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*                                                                    *
