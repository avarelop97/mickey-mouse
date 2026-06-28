//ZMPDNV24 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM / EECC-MUV                                       *
//* PROCESO      : ZMPDNV24                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : INTERFAZ DE ALERTAS X CLIENTE                       *
//* REALIZO      : FSW-ITS                                             *
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
//* PASO     : ZMNV2401                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : MATCH SECART VS CARTERA                                 *
//*            LLAVE ZM608_CNUMCTE, A.ICUENTA Y DA FORMAT              *
//*--------------------------------------------------------------------*
//ZMNV2401 EXEC PGM=ICEMAN
//*
//SORTJNF1 DD  DSN=MXCP.ZM.FIX.CUENTA.PU.FILTRO.F&FECHA.,DISP=SHR
//SORTJNF2 DD  DSN=MXCP.ZM.FIX.DECREMEN.LEYENDA.F&FECHA.,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.MDD.EBCM.DECREMEN.C&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=79,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2401),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2402                                                *
//* UTILERIA : IOACND                                                  *
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M, INDICANDO QUE YA TER- *
//*            MINO DE GENERARSE EL ARCHIVO DE ALERTAS DE BANCA PATRI- *
//*            MONIAL,PARA QUE SEA TOMADA POR EL PROCESO DE ESCENARIOS *
//*            COMERCIALES                                             *
//*--------------------------------------------------------------------*
//ZMNV2402 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND ZMJDNV24_OK_PR   WDATE'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDNV24                        *
//*--------------------------------------------------------------------*
