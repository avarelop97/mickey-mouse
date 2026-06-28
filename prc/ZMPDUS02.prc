//ZMPDUS02 PROC
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*                   C A S A   D E  B O L S A                         *00050001
//*                   ========================                         *00060001
//*        <<  M E R C A D O   D E   C A P I T A L E S  >>             *00070001
//*                                                                    *00070001
//* PROYECTO     : ZM CERTIFICACION DE BANQUEROS.                      *
//*                                                                    *00070001
//* PROCESO      : ZMPDUS02.                                           *
//*                                                                    *00070001
//* PERIODICIDAD : DIARIO.                                             *
//*                                                                    *00070001
//* OBJETIVO     : GENERAR ARCHIVOS CON LOS PROMOTORES CON 3 MESES     *
//*                PROXIMOS A VECER.                                   *
//*                                                                    *00070001
//* REALIZO      : MI03469.                                            *
//*                                                                    *00070001
//* FECHA        : 04 DE JULIO DEL 2023.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//**********************************************************************
//* PASO       : ZMPXVE01                                              *
//* OBJETIVO   : COPIA ARCHIVO DESCARGA DE TABLA YHDTBAN (PDV) PARA    *
//*              OBTENER USUARIOS CON CENTIFICACION PROXIMA A VENCER   *
//*              (3 MESES DE ANTICIPACION) Y LO ORDENA POR USUARIO.    *
//**********************************************************************
//ZMPXVE01 EXEC PGM=ICEMAN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..MYHP0DBA.CERXVEN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MYHP0DBA.CERXVEN.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=096,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPXVE01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPXVE02. ZM4UOA04                                    *
//* OBJETIVO   : GENERAR ARCHIVOS CON LOS PROMOTORES CON 3 MESES       *
//*              PROXIMOS A VECER.                                     *
//*--------------------------------------------------------------------*
//ZMPXVE02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4UOAE1 DD DSN=MXCP.ZM.FIX.MYHP0DBA.CERXVEN.SORT,DISP=SHR
//FDSALIDA DD DSN=MXCP.ZM.FIX.BCJDUS02.CERXVEN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=189,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPXVE02),DISP=SHR
//*
//**********************************************************************
//* PASO       : ZMPXVE03                                              *
//* OBJETIVO   : SE REALIZA SORT POR OFICINA.                          *
//**********************************************************************
//ZMPXVE03 EXEC PGM=ICEMAN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.BCJDUS02.CERXVEN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCJDUS02.CERXVEN.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=189,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPXVE03),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4UOA05 ==                              *
//* OBJETIVO : PROGRAMA DE REPORTE DE PROMOTORES CON CERTIFICACION     *
//*            PROXIMA A VENCER CON FORMATO PARA CONTROL-D Y TXT.      *
//**********************************************************************
//ZMPXVE04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.BCJDUS02.CERXVEN.SORT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ZM4UOA05.CERXVEN.CTD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=134,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.ZM4UOA05.CERXVEN.TXT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=209,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMPXVE04),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMPXVE05                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE DE PROMOTORES CON CERTIFICACION PROXIMA A VENCER.*
//*           PARA CONTROL-D.                                          *
//**********************************************************************
//ZMPXVE05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZM4UOA05.CERXVEN.CTD,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDUS02                        *
//*--------------------------------------------------------------------*
