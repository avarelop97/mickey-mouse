//ZMHCPD63 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CANCELACIONES                                  *
//* PROCESO      : ZMHCPD63.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : ACTUALIZA COSTO PROMEDIO FISCAL EN CARTERA          *
//*                ACTUALIZA COSTO PROMEDIO EN CARTERA DE LIQUIDACION  *
//*                PARA LOS MERCADOS DE CAPITALES Y SOC. DE INVERSION  *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4ISR06 (SOC. INV.)      *
//*--------------------------------------------------------------------*
//PHC63P08 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PHC63P08,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.RPC.UNLOAD1,
//            SPACE=(CYL,(10,5),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC63T1A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC63P07.                                             *
//* UTILERIA   : ZM4ISR06. (SE MODIFICA ZM4ISR06 PARA GENERAR ARCHIVO) *
//* OBJETIVO   : GENERA ARCHIVO SECUENCIAL CON LOS REGISTROS DE LA     *
//*              TABLA ZMDTRPC A REPROCESAR                            *
//*--------------------------------------------------------------------*
//PHC63P07 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZMISR6E1 DD DSN=MXCP.ZM.FIX.RPC.UNLOAD1,DISP=SHR
//*
//ZMISR6A1 DD DSN=MXCP.ZM.FIX.RPC.UNLOAD2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=42,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC63T05),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : PHC63P06                                                 *
//* PROGRAMA: IKJEFT01/ZM4ISR08  (ANTES ZM4ISR06)                      *
//* OBJETIVO: ACTUALIZA COSTO PROMEDIO FISCAL PARA MERCADO DE          *
//*           SOCIEDADES DE INVERSION (EN BASE A ARCHIVO DE LA ZMDTRPC)*
//*---------------------------------------------------------------------
//PHC63P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//UNLOAD2  DD DSN=MXCP.ZM.FIX.RPC.UNLOAD2,DISP=SHR
//*
//ZMISR8R1 DD DSN=MXCP.ZM.FIX.RPC.CUENREP.COSANT.CBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZMISR8R2 DD DSN=MXCP.ZM.FIX.RPC.CUENREP.COSANT.BCM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZMISR8R3 DD DSN=MXCP.ZM.FIX.RPC.CUENREP.COSNVO.CBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZMISR8R4 DD DSN=MXCP.ZM.FIX.RPC.CUENREP.COSNVO.BCM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZMISR8A1 DD DSN=MXCP.ZM.FIX.RPC.REPDETA.COSFIS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZMISR8A2 DD DSN=MXCP.ZM.FIX.RPC.CUENREP.ARCH.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=311,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//ZMISR8A3 DD DSN=MXCP.ZM.FIX.RPC.CUENREP.ARCH.NVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=311,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC63T01),DISP=SHR
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PHC63P05                                                *
//* PROGRAMA : IKJEFT01/ZM4EVIS4 (ANTES ZM4DH301)                      *
//* OBJETIVO : REPROCESO DE COSTO PROMEDIO LIQUIDADO                   *
//*--------------------------------------------------------------------*
//PHC63P05 EXEC PGM=IKJEFT01,COND=(04,LT)                               01151027
//*                                                                     01153001
//UNLOAD2  DD DSN=MXCP.ZM.FIX.RPC.UNLOAD2,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC63T03),DISP=SHR                   01230041
//*
//*====================================================================*
//* PASO     : PHC63P5A                                                *
//* OBJETIVO : EN CASO DE QUE SE ENCONTRARA UN REPROCESO PENDIENTE SE  *
//* RECALCULA EL COSTO PROMEDIO LIQUIDADO PARA MERCADO SOC. DE INVER.  *
//*====================================================================*
// IF  PHC63P06.RC EQ 03 THEN
//*                                                                    *
//*--------------------------------------------------------------------*
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4ISR06 (SOC. INV.)      *
//*--------------------------------------------------------------------*
//PHC63P5A EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PHC63P5A,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.RPC.UNLOAD3,
//            SPACE=(CYL,(10,5),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC63T1A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC63P5B.                                             *
//* UTILERIA   : ZM4ISR06. (SE MODIFICA ZM4ISR06 PARA GENERAR ARCHIVO) *
//* OBJETIVO   : GENERA ARCHIVO SECUENCIAL CON LOS REGISTROS DE LA     *
//*              TABLA ZMDTRPC A REPROCESAR                            *
//*--------------------------------------------------------------------*
//PHC63P5B EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZMISR6E1 DD DSN=MXCP.ZM.FIX.RPC.UNLOAD3,DISP=SHR
//*
//ZMISR6A1 DD DSN=MXCP.ZM.FIX.RPC.UNLOAD4,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=42,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC63T05),DISP=SHR
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PHC63P5C                                                *
//* PROGRAMA : IKJEFT01/ZM4EVIS4 (ANTES ZM4DH301)                      *
//* OBJETIVO : REPROCESO DE COSTO PROMEDIO LIQUIDADO                   *
//*--------------------------------------------------------------------*
//PHC63P5C EXEC PGM=IKJEFT01,COND=(4,LT)
//*                                                                     01153001
//UNLOAD2  DD DSN=MXCP.ZM.FIX.RPC.UNLOAD4,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC63T03),DISP=SHR                   01230041
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC63P04.                                             *
//* UTILERIA   : ZM4ISR11.                                             *
//* OBJETIVO   : ACTUALIZA COSTO PROMEDIO FISCAL LIQUIDADO PARA MERCADO*
//*              DE CAPITALES.                                         *
//*--------------------------------------------------------------------*
//PHC63P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC63T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC63P02.                                             *
//* UTILERIA   : ZM4ISR07.                                             *
//* OBJETIVO   : ACTUALIZA COSTO PROMEDIO FISCAL PARA MERCADO DE       *
//*              CAPITALES.                                            *
//*--------------------------------------------------------------------*
//PHC63P02 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC63T02),DISP=SHR
//*
//*====================================================================*
//* PASO     : PHC63P2A                                                *
//* PROGRAMA : IKJEFT01/ZM4ISR11                                       *
//* OBJETIVO : EN CASO DE QUE SE ENCONTRARA UN REPROCESO PENDIENTE SE  *
//* RECALCULA EL COSTO PROMEDIO LIQUIDADO Y EL NORMAL.                 *
//*====================================================================*
// IF  PHC63P02.RC EQ 03 THEN
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC63P2A.                                             *
//* UTILERIA   : ZM4ISR11.                                             *
//* OBJETIVO   : ACTUALIZA COSTO PROMEDIO FISCAL LIQUIDADO PARA MERCADO*
//*              DE CAPITALES.                                         *
//*--------------------------------------------------------------------*
//PHC63P2A EXEC PGM=IKJEFT01,COND=(4,LT)
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC63T04),DISP=SHR                   01230041
//*
//*--------------------------------------------------------------------*
//* PASO       : PHC63P2B.                                             *
//* UTILERIA   : ZM4ISR07.                                             *
//* OBJETIVO   : ACTUALIZA COSTO PROMEDIO FISCAL PARA MERCADO DE       *
//*              CAPITALES.                                            *
//*--------------------------------------------------------------------*
//PHC63P2B EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC63T02),DISP=SHR                   01230041
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//*                       FIN DEL PROCESO ZMHCPD63                     *
//*--------------------------------------------------------------------*
