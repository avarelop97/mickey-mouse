//ZMLFPD03 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM DARIO                                            *
//* PROCESO      : ZMLFPD03.                                           *
//* PERIODICIDAD : DIARIO (FIN DE DIA).                                *
//* OBJETIVO     : GENERAR EL ARCHIVO NOTAS ESTRUCTURADAS Y WARRANTS   *
//*                PARA DATIO.                                         *
//* REALIZO      : XMX8146                                             *
//* FECHA        : 08 DE NOVIEMBRE DE 2024.                            *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA:    ICEMAN                                                *
//*          (NO CAMBIAR ESTE PASO //ZFS20T10 ESTA EN EL JCL BCFSLD20) *
//* DESCRIPCION: REALIZAR SORT PARA GENERAR ARCHIVO PARA DATIO         *
//* PASO       : PLF02P07.                                             *
//**********************************************************************
//PLF02P07 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SIVA.NOTAEST.PIPE,DISP=SHR
//*
//ARCH1    DD DSN=MXCP.ZM.FIX.MUV.ZM3DLE04.NOTAEST.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE)
//*
//ARCH2    DD DSN=MXCP.ZM.FIX.MUV.ZM3DLE04.CLCIF.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLFPD02                        *
//*--------------------------------------------------------------------*
