//ZMPDNV23 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM / EECC-MUV                                       *
//* PROCESO      : ZMPDNV23                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : DIFERENCIA Y % SECART - CARTERA X CLIENTE           *
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
//* PASO     : ZMNV2307                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SUMA IMPORTE UNIFICA POR NUM-CTE, CUENTA Y EMISION     *
//*            SECART-SOCIEDADES                                      *
//*--------------------------------------------------------------------*
//*
//ZMNV2307 EXEC PGM=ICEMAN
//SORTIN   DD  DSN=MXCP.ZM.TMP.DINCAP.SUMA.F&FECHA.,DISP=SHR
//         DD  DSN=MXCP.ZM.TMP.DINEFE.SUMA.F&FECHA.,DISP=SHR
//         DD  DSN=MXCP.ZM.TMP.DINERO.SUMA.F&FECHA.,DISP=SHR
//         DD  DSN=MXCP.ZM.TMP.DINSOC.SUMA.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.SCART.SUMA.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//*            SE MODIFICA A 74 POR AMPL ICONCEPT
//             DCB=(LRECL=74,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*                                                 00204000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2307),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2306                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : MATCH SECART VS OPERA                                   *
//*            LLAVE ZM608_CNUMCTE, A.ICUENTA, A.ITIPOEMI
//*--------------------------------------------------------------------*
//ZMNV2306 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTJNF1 DD  DSN=MXCP.ZM.TMP.SCART.SUMA.F&FECHA.,DISP=SHR
//SORTJNF2 DD  DSN=MXCP.ZM.TMP.OPERA.RESTA.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.DECREMEN.MATCH.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=33,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2306),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2306                                                *
//* UTILERIA : SORT                                                    *
//* OBJETIVO : ELIMINA REG. MENOR O IGUAL A CERO                       *
//*--------------------------------------------------------------------*
//ZMNV2305 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.DECREMEN.MATCH.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.DECREMEN.FILTRO1.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=43,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*                                                 00204000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2305),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2305                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : REALIZA OPERACION DIV SECART VS IMPORTE RESTA           *
//*--------------------------------------------------------------------*
//ZMNV2304 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.DECREMEN.FILTRO1.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.DECREMEN.MUL.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=42,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2304),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2304                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : REALIZA OPERACION DIV SECART VS IMPORTE RESTA           *
//*--------------------------------------------------------------------*
//ZMNV2303 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.DECREMEN.MUL.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.DECREMEN.DIV.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2303),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2303                                                *
//* UTILERIA : SORT                                                    *
//* OBJETIVO : ELIMINA REG. MENOR O IGUAL A CERO                       *
//*--------------------------------------------------------------------*
//ZMNV2302 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.DECREMEN.DIV.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.DECREMEN.FILTRO2.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*                                                 00204000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2302),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV231A                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : MATCH PARA CARGAR FECHA ODATE                           *
//*--------------------------------------------------------------------*
//ZMNV231A EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD  DSN=MXCP.ZM.TMP.DECREMEN.FILTRO2.F&FECHA.,DISP=SHR
//SORTJNF2 DD  DSN=MXCP.ZM.TMP.ALERTAS.CTC13.F&FECHA.,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.DECREMEN.FECHAOK.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=63,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV231A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2301                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : REALIZA OPERACION DIV SECART VS IMPORTE RESTA           *
//*--------------------------------------------------------------------*
//ZMNV2301 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.DECREMEN.FECHAOK.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.FIX.DECREMEN.LEYENDA.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=71,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2301),DISP=SHR
//*
