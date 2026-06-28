//ZMUEPM73 PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - DIGITALIZACION DE ESTADOS DE CUENTA BANCA      *
//*                BANCA PATRIMONIAL                                   *
//* PROCESO     :  ZMUEPM73                                            *
//* PERIODICIDAD:  MENSUAL                                             *
//* OBJETIVO    :  GENERAR CUATRO ARCHIVOS CON LA INFORMACION DE       *
//*                ESTADOS DE CUENTA INTEGRADOS CON EL SELLO FISCAL    *
//* REALIZO     :  GETRONICS                                           *
//* FECHA       :  20 DE JUNIO 2011                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*
//**********************************************************************
//* PASO     :  ZMPM7340                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  UNION DEL ARCHIVO DE REPORTES DE SELLOS CON EL DE MEDC *
//**********************************************************************
//ZMPM7340 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPRIV.SIIMREP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.PRIVSI.LOGERRM.D&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PRIVSI.REPORTE.CTRD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1500,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPM7202),DISP=SHR                   00710000
//**********************************************************************
//* PASO     :  ZMPM7330                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  UNION DEL ARCHIVO DE REPORTES DE SELLOS CON EL DE MEDC *
//**********************************************************************
//ZMPM7330 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPATR.SIIMREP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.PATRSI.LOGERRM.D&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PATRSI.REPORTE.CTRD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1500,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPM7202),DISP=SHR                   00710000
//**********************************************************************
//* PASO     :  ZMPM7320                                               *
//* PROGRAMA :  CTR-D                                                  *
//* OBJETIVO :  ENVIO A CONTROL-D  EL ARCHIVO DE ERRORES               *
//**********************************************************************
//ZMPM7320 EXEC PGM=IEFBR14,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.PRIVSI.REPORTE.CTRD,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//* PASO     :  ZMPM7310                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  DA FORMATO AL ARCHIVO DE SELLOS FISCALES DE BANCA      *
//**********************************************************************
//ZMPM7310 EXEC PGM=IEFBR14,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.PATRSI.REPORTE.CTRD,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUEPM73                          *
//*--------------------------------------------------------------------*
