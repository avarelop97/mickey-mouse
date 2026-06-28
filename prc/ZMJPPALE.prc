//ZMJPPALE PROC
//*--------------------------------------------------------------------*
//* PROCESO.: ZMJPPALE
//* OBJETIVO: ENVIA ALERTA A LOS CLIENTES QUE REGISTRARON COMPRAS/VTAS
//*           ORDENES CONDICIONADAS
//* REALIZO: XM05034
//* FECHA  : SEPTIEMBRE 2018
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
//* OBJETIVO: DESCARGA DE ORDENES PROGRAMADAS CONDICIONADAS            *00022700
//*--------------------------------------------------------------------*00022800
//ZMPALE95 EXEC PGM=ADUUMAIN,                                           00022900
//          PARM='MXP1,ZMPALE95,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.MZMP0ALE.UNLOAD01,
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(75,50),RLSE),UNIT=3390,                       00024000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=67,BLKSIZE=0)
//*                                                                     00024200
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01/ZM4ALRBT                                        *00022600
//* OBJETIVO: ARCHIVO CON LAS ALERTAS QUE SE ENVIARAN A LOS CLIEN *     00022700
//*           TES DE BTRADE                                            *00022700
//*--------------------------------------------------------------------*
//ZMPALE90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMALRTE1 DD DSN=MXC&AMB..ZM.FIX.MZMP0ALE.UNLOAD01,
//            DISP=SHR
//*
//* MENSAJES SMS/PUSH
//ZMALRTS1 DD DSN=MXC&AMB..ZM.FIX.MZMP0ALE.MSJPUSCH,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPALE90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL JCL MZMP0ALE                           *
//*--------------------------------------------------------------------*
