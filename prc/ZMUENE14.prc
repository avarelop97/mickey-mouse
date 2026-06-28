//ZMUENE14 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : BCUENE04                                            *
//* PERIODICIDAD : REPROCESO                                           *
//* OBJETIVO     : ACTUALIZA UUID GENERADOS POR REPROCESO DE EDC       *
//* FECHA        : MARZO 2018                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1445                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  CONSOLIDA LA INFORMACION DE LOS 6 ARCHIVOS DE RESPUESTA*
//*             QUE SE RECIBEN DE BANCA                                *
//*--------------------------------------------------------------------*
//ZMNE1445 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BPATR.SIIMP.RESP.UUID
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BPATR.NOIMP.RESP.UUID
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BPRIV.SIIMP.RESP.UUID
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BPRIV.NOIMP.RESP.UUID
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BUHN.SIIMP.RESP.UUID
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BUHN.NOIMP.RESP.UUID
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.RESP.UUID.TOTAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=118,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNE1145),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1125                                               *
//* PROGRAMA :  ICEGENER                                               *
//* OBJETIVO :  CREA ARCHIVO DE TOTALES EN VACIO                       *
//*             PARA REPROCESO EL TOTAL DE LAS COMISIONES NO DEBE      *
//*             CAMBIAR                                                *
//*--------------------------------------------------------------------*
//ZMNE1430 EXEC PGM=ICEGENER,COND=(04,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=66)
//SYSUT2   DD DSN=MXCP.ZM.FIX.REC.EBCM.COMIS.TOTAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,LRECL=66,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1125                                               *
//* PROGRAMA :  IKJEFT01/ZM4MU545                                      *
//* OBJETIVO :  CARGA EN LA ZMDT884 LOS UUID DE LOS ESTADOS DE CUENTA  *
//*             Y EN LA ZMDT885 LOS TOTALES DE LAS COMISIONES EN BANCA.*
//*--------------------------------------------------------------------*
//ZMNE1425 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMMU45E1 DD DSN=MXCP.ZM.FIX.REC.EBCM.COMIS.TOTAL,DISP=SHR
//*
//ZMMU45E2 DD DSN=MXCP.ZM.FIX.EBCM.RESP.UUID.TOTAL,DISP=SHR
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNE1146),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUENE14                          *
//*--------------------------------------------------------------------*
