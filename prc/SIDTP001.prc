SIDTP001 PROC
//**********************************************************************
//*  GENERA REPORTES DE FONDOS DE INVERSION PARA USUARIO SOCINVER      *
//**********************************************************************
//*  DIRECCIONA LISTADO TPLS1400 PARA IMPRESION
//*  LISTADO DE MOVIMIENTOS DIARIOS POR OFICINA FONDO Y OPERA
//**********************************************************************
//TPLS1400 EXEC  PGM=ICEGENER
//SYSUT1   DD  DSN=SIVA.SIN.FIX.TPLS1400.D&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=X
//SYSIN    DD  DUMMY
//**********************************************************************
//*  DIRECCIONA LISTADO TPLS1901 PARA IMPRESION
//*  MOVIMIENTOS DIARIOS VALOR HOY
//**********************************************************************
//TPLS1901 EXEC  PGM=ICEGENER
//SYSUT1   DD  DSN=SIVA.SIN.FIX.TPLS1901.D&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=X
//SYSIN    DD  DUMMY
//**********************************************************************
//*  DIRECCIONA LISTADO TPLS1900 PARA IMPRESION
//*  MOVIMIENTOS DIARIOS VALOR NORMAL
//**********************************************************************
//TPLS1900 EXEC  PGM=ICEGENER
//SYSUT1   DD  DSN=SIVA.SIN.FIX.TPLS1900.D&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=X
//SYSIN    DD  DUMMY
//**********************************************************************
//*  DIRECCIONA LISTADO TPLS3405 PARA IMPRESION
//*  REPORTE DE POSICION POR CLIENTE
//**********************************************************************
//TPLS3405 EXEC  PGM=ICEGENER
//SYSUT1   DD  DSN=SIVA.SIN.FIX.TPLS3405.D&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=X
//SYSIN    DD  DUMMY
//**********************************************************************
//*  DIRECCIONA LISTADO TPLS3350 PARA IMPRESION
//*  REPORTE DE IMPUESTOS ACREDITABLES POR CLIENTE
//**********************************************************************
//TPLS3350 EXEC  PGM=ICEGENER
//SYSUT1   DD  DSN=SIVA.SIN.FIX.TPLS3350.D&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=X
//SYSIN    DD  DUMMY
//**********************************************************************
//*  DIRECCIONA LISTADO TPLS9900 PARA IMPRESION
//*  REPORTE DE CLIENTES EXTRANJEROS
//**********************************************************************
//TPLS9900 EXEC  PGM=ICEGENER
//SYSUT1   DD  DSN=SIVA.SIN.FIX.TPLS9900.D&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=X
//SYSIN    DD  DUMMY
//**********************************************************************
//*  DIRECCIONA LISTADO TPLS3450 PARA IMPRESION
//*  REPORTE DE OPERACIONES DE BAJA VALOR HOY
//**********************************************************************
//TPLS3450 EXEC  PGM=ICEGENER
//SYSUT1   DD  DSN=SIVA.SIN.FIX.TPLS3450.D&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=X
//SYSIN    DD  DUMMY
//**********************************************************************
//*  DIRECCIONA LISTADO TPLS3451 PARA IMPRESION
//*  REPORTE DE OPERACIONES DE BAJA VALOR HOY
//**********************************************************************
//TPLS3451 EXEC  PGM=ICEGENER
//SYSUT1   DD  DSN=SIVA.SIN.FIX.TPLS3451.D&FECHA,DISP=SHR
//SYSUT2   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=X
//SYSIN    DD  DUMMY
