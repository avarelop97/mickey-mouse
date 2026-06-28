//ZMLLPD25 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : REDISENIO DE ESTADOS DE CUENTA                      *
//* PROCESO      : ZMLLPD25                                            *
//* PERIODICIDAD : UNICA VEZ.                                          *
//* OBJETIVO     : CARGA INICIAL DE DATOS ORDENADOS.                   *
//* REALIZO      : CAPGEMINI                                           *
//* FECHA        : FEBRERO 2014                                        *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZUR25T01
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES        *
//*              ANTERIOR, POR NUMERO DE CUENTA.                       *
//*--------------------------------------------------------------------*
//ZUR25T01 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(0),
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2711,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR25T01),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR25T02                                              *
//* UTILERIA   : ZM3MU516                                              *
//* OBJETIVO   : CREACION DEL ARCHIVO PARA CARGA INICIAL, CON MAYOR    *
//*              LONGITUD.                                             *
//*--------------------------------------------------------------------*
//ZUR25T02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.REC.EBCM.BPIGO.PF01,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EDF.EBCM.BPIGO.PF01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,100),RLSE)
//*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR25T02),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR25T03                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES        *
//*              POR NUMERO DE CUENTA.                                 *
//*--------------------------------------------------------------------*
//ZUR25T03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EDF.EBCM.BPIGO.PF01,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EDF.EBCM.BPIGO.PF01.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUR25T03),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR25T04                                              *
//* UTILERIA   : ICEGENER                                              *
//* OBJETIVO   : RESPALDA ARCHIVO 'MXCP.ZM.FIX.EDF.EBCM.BPIGO.PF01.ACT'*
//*              EN EL GDG 'MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(+1)       *
//*--------------------------------------------------------------------*
//ZUR25T04 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EDF.EBCM.BPIGO.PF01.ACT,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.REC.EBCM.BPIGO.PF01(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=2949,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLLPD25                        *
//*--------------------------------------------------------------------*
//*
