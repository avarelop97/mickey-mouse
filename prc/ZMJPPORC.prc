//ZMJPPORC PROC
//*--------------------------------------------------------------------*
//* PROCESO.: ZMJPPORC
//* OBJETIVO: ENVIA ALERTA A LOS CLIENTES QUE SUS ORDENES CANCELARON
//*           EN AUTOMATICO POR EJECRCICIO DE DERACHOS
//* REALIZO: RHB
//* FECHA  : JUNIO 2020
//*====================================================================*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DE ORDENES CACELADAS                            *00022700
//*--------------------------------------------------------------------*00022800
//ZMPORC95 EXEC PGM=ADUUMAIN,                                           00022900
//          PARM='MXP1,ZMPORC95,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.EBCM.ORDCAN,
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,                      00024000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=83,BLKSIZE=0)
//*                                                                     00024200
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01/ZM4CAORC                                        *00022600
//* OBJETIVO: ARCHIVO CON LAS ALERTAS QUE SE ENVIARAN A LOS CLIENTES   *00022700
//*           CON ORDENES CANCELADAS POR CC                            *00022700
//*--------------------------------------------------------------------*
//ZMPORC90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMALRTE1 DD DSN=MXCP.ZM.FIX.EBCM.ORDCAN,DISP=SHR
//*
//ZMALRTS1 DD DSN=MXCP.ZM.FIX.EBCM.SMS.ORDCAN,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2863,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPORC90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL JCL MZMP0ORC                           *
//*--------------------------------------------------------------------*
