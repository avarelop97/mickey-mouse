//ZMHNOW01  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHNOW01                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERACION DE ARCHIVO PARA GESTOR DE EVENTOS CON LA INFORMACION   -*
//* DE NOTAS Y WARRANTS    DUMMY  QUE NO SE FIRMARON POR GLOMO         *
//* FIRMA DIFERIDA                                                     *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*
//*--------------------------------------------------------------------
//* FUNCION:  CONCATENA LOS ARCHIVOS DEL VECTOR DE PRECIOS CARGADOS
//*           DESDE ASSET CONTROL PARA MERCADO DE DINERO Y MERCADO DE
//*           CAPITALES.
//*--------------------------------------------------------------------
//PNW01P01 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4EST04.DESNOTA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZM4WAR06.ACTWARR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.SORT.NOTWARR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=180,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZNWO1P01),DISP=SHR
//*
//**********************************************************************
//* PASO     : PNW01P02                                                *
//* UTIL/PGM : ZM4NOW01                                                *00240002
//* OBJETIVO   : GENERA ARCHIVO CON INFORMACION DE WARRANTS Y NOTAS ES-*
//*              TRUCTURADAS PARA GENERAR NOTIFICACION DE EXPIRACION   *
//*              A LOS BANQUEROS DE QUE NO FUERON FIRMADOS POR GLOMO   *
//**********************************************************************
//PNW01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMFINW DD DSN=MXCP.ZM.FIX.SORT.NOTWARR,DISP=SHR
//*
//*
//S1SALIDA DD DSN=MXCP.ZM.FIX.NOTWARR.EXPIRADA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=641,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZNWO1P02),DISP=SHR                   00512608
//*
//**********************************************************************
//*                     F I N    Z M H N O W 0 1                       *
//**********************************************************************
