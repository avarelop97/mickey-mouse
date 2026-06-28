//ZMJRPE04 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMJRPE04.                                           *
//* OBJETIVO     :                                                     *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-01 XMA3149   08AGO18 SE AGREGA PASO PARA VALIDAR SI EL    *
//*                               ARCHIVO DE GIN VIENE VACIO           *
//*--------------------------------------------------------------------*
//* PROCESO QUE VALIDAD EL CODIGO GIIN                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO    : PST00100                                                 *
//* OBJETIVO : VALIDA SI ARCHIVO DE ENTRADA VIENE VACIO                *
//* PROGRAMA : ICEMAN                                                  *
//**********************************************************************
//PST00100 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.CFDI.MENSUAL.GIIN1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECBP.CFDI.MENSUAL.GIIN1,
//            DISP=(NEW,PASS),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(LRECL=219,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJR03TR0),DISP=SHR
//*
// IF (PST00100.RC = 0) THEN
//*====================================================================*
//* PASO    : ZMJRP010                                                 *
//* OBJETIVO : CARGAR LA TABLA ZMDTGIN                                 *
//* PROGRAMA : IKJEFT01                                                *
//**********************************************************************
//PST00101 EXEC PGM=IKJEFT01,COND=(04,LT)
//ENTRAD01 DD DISP=SHR,DSN=MXCP.ZM.FIX.ECBP.CFDI.MENSUAL.GIIN1
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJR03TR1),DISP=SHR
//*
// ENDIF
//*====================================================================*
//* PASO    : ZMJRP005                                                 *
//* OBJETIVO : VALIDA EL CODIGO GIIN PARA ACTUALIZAR LA CLASIFICACION  *
//*            FATCA EN LA TABLA ZMDTFAM                               *
//* PROGRAMA : IKJEFT01                                                *
//**********************************************************************
//PST00102 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJR02TR3),DISP=SHR
//*
//
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
