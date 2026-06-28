//ZMPBCNB1 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ - CASA DE BOLSA                                  *
//* OBJETIVO    : GENERACION DE REPORTES DE PERSONALIDAD JURIDICA      *
//* AUTOR       : CASA DE BOLSA (XMZ8533)                              *
//* FECHA       : 10 DE JUNIO DE 2022.                                 *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*   @MEX000   XXXXXXX  DDMMMAA ..................................... *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* XMX7810-I/F XMX7810   190822  SE AUMENTA LONGITUD DE SALIDA        *
//*                               DE ORDENAR SALDOSCLIENTES POR        *
//*                               CONTRATO PASO ZMCNB98C               *
//*--------------------------------------------------------------------*
//* PASO       : ZMCNB98D                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE CARTERA POR CONTRATO                *
//*--------------------------------------------------------------------*
//ZMCNB98D EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXBP.YH.FIX.BCJCCNB1.REPORTE.CARTERA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCJCCNB1.REPOCART.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=322,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCNB002),
//            DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMCNB98C                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO DE SALDOS CLIENTE POR CONTRATO         *
//*--------------------------------------------------------------------*
//ZMCNB98C EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXBP.YH.FIX.BCJCCNB1.REPORTE.SDOCTE,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCJCCNB1.RESDOCTE.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//*XMX7810-I
//*           DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=700,BLKSIZE=0,DSORG=PS)
//*XMX7810-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCNB004),
//            DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMCNBP97                                              *
//* UTILERIA   : IKJEFT1A/ZM4CPJO4                                     *
//* OBJETIVO   : GENERA REPORTE DE PERSONALIDAD JURIDICA               *
//*--------------------------------------------------------------------*
//ZMCNBP97 EXEC PGM=IKJEFT1A,COND=(04,LT)
//*
//CARTERA1 DD  DSN=MXCP.ZM.FIX.BCJCCNB1.REPOCART.SORT,
//             DISP=SHR
//*
//SALDOSCT DD  DSN=MXCP.ZM.FIX.BCJCCNB1.RESDOCTE.SORT,
//             DISP=SHR
//*
//SALIDA2  DD  DSN=MXBP.YH.FIX.BCJCCNB1.PJ.NMATCH2,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,50),RLSE),
//             DCB=(RECFM=FB,LRECL=379,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCNBP06),
//            DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMCNBP94.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE PDV          *
//*--------------------------------------------------------------------*
//ZMCNBP94 EXEC PGM=IOACND,PARM='ADD COND BCJCCNB1_OK &FEC',
//          COND=(4,LT)
//*
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
//*             FIN DE PROCESO  ZMPBCNB1                               *
//*--------------------------------------------------------------------*
