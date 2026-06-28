//ZMJFPD67 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMJFPD67.                                           *
//* OBJETIVO     :                                                     *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PROCESO OPERACIONES EN DIRECTO                                     *
//*                                                                    *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO     : PDO67010                                                *
//* OBJETIVO : GENERA REPORTE OPERACIONES EN DIRECTO                   *
//* PROGRAMA : ZM4DGE10                                                *
//**********************************************************************
//PDO67010 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO67010 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//REPTCAPT DD DSN=MXCP.ZM.FIX.REPORTE.OPER.DIRECT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=197,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE),DSNTYPE=LARGE
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO67010),DISP=SHR
//*
