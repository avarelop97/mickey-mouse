//ZMLFPD02 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA                                            *
//* PROCESO      : ZMLFPD02.                                           *
//* PERIODICIDAD : DIARIO (FIN DE DIA).                                *
//* OBJETIVO     : GENERAR EL ARCHIVO NOTAS ESTRUCTURADAS Y WARRANTS   *
//* REALIZO      : GONET..                                             *
//* FECHA        : 18 DE MAYO DE 2017.                                 *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-MOTORDOR   XMX8146 081124  GENERACION DE ARHIVO DE NOTAS WARRANT*
//*                               CON PIPES.                           *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : PLF02P03.                                             *
//* UTILERIA   : IKJEFT01/ZM4DLE02.                                    *
//* OBJETIVO   : GENERAR ARCHIVO DE WARRANTS ('WA', 'WC', 'WI')        *
//*              Y NOTAS ESTRUCTURADAS ('F ', 'J ', '83', '91', '99')  *
//*--------------------------------------------------------------------*
//PLF02P02 EXEC PGM=IKJEFT01
//*
//ZMFS0202 DD DSN=MXCP.ZM.FIX.SIVA.NOTAEST,
//            DISP=(NEW,CATLG,DELETE),
//*ROG-I
//*           DCB=(LRECL=93,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=102,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ROG-F
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//*FS-MOTORDOR-I
//ZMFS0201 DD DSN=MXCP.ZM.FIX.SIVA.NOTAEST.PIPE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=102,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*FS-MOTORDOR-F
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PLF02P00.                                             *
//* PROGRAMA   : ICEMAN.
//* OBJETIVO   : INSERTA CABECERA Y REALIZA SORT.                      *
//*--------------------------------------------------------------------*
//PLF02P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.SIVA.NOTAEST,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIVA.NOTAEST.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//*ROG-I
//*           DCB=(LRECL=93,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=102,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*ROG-F
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF03T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLFPD02                        *
//*--------------------------------------------------------------------*
