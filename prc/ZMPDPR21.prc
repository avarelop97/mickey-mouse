//ZMPDPR21 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BAJAS PRODUCTO 21 - PERSONAS                   *
//* PROCESO      : N/A.                                                *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : VALIDACION DE CUENTAS QUE EXISTA EN :               *
//*                - PERSONAS Y NO EN MUV                              *
//*                - PERSONAS Y ESTATUS BAJA EN MUV                    *
//*                - MUV Y NO EN PERSONAS.                             *
//*                  *OBTIENE CONTRATOS CON EFECTIVO, COMISIONES,      *
//*                   POSICION Y PENDIENTES EN REDAUXI                 *
//* REALIZO      : MA.ISABEL LUNA                                      *
//* FECHA        : 12 DE NOVIEMBRE DE 2015                             *
//*                                                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* XMZ1446.INI XMZ1446   07DIC15 -SE DAN DE ALTA ARCHIVOS DE CIFRAS   *
//*                                DE CONTROL PASOS ZMPR2120,ZMPR2110  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* OHN         XM07628   01JUN16 SE INTEGRA ARCHIVO DE SALIDA S7DQPD2A*
//*                               EN EL PASO: ZMPR2120.                *
//* ----------- --------- ------- ------------------------------------ *
//* MBE         XMZ7865   01JUL16 SE CAMBIA ARCHIVO DE ENTRADA PROCESO *
//*                               EN EL PASO: ZMPR2140.                *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPR2140                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : OBTIENE ARCHIVO DE ENTRADA A PARTIR DE ARCHIVO MAESTRO*
//*--------------------------------------------------------------------*
//ZMPR2140 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MBV&AMB..PE.FIX.MATCH.MATCSPER,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.XMPDPR21.AMCP.ENT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=512,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPR2140),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPR2130                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA MAESTRO DE PERSONAS POR CUENTA 10 POSICIONES   *
//*--------------------------------------------------------------------*
//ZMPR2130 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.XMPDPR21.AMCP.ENT,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.XMPDPR21.AMCP.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=512,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPR2130),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPR2120                                              *
//* UTILERIA   : ZM4CPD2A                                              *
//* OBJETIVO   : VALIDA CUENTAS ENTRE PERSONAS Y MUV PRODUCTO 21       *
//*--------------------------------------------------------------------*
//ZMPR2120 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQPD2A DD DSN=MXC&AMB..ZM.TMP.XMPDPR21.AMCP.SORT,
//            DISP=SHR
//S1DQPD2A DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.MUVNOPE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S2DQPD2A DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.PE.NOMUV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S3DQPD2A DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.PE.BAJAMUV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S4DQPD2A DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.PE.OTRENMUV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S5DQPD2A DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.NOPROD21,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*XMZ1446.INI
//S6DQPD2A DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.ZMPR2120.CIF,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(05,10),RLSE),
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*XMZ1446.FIN
//S7DQPD2A DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.CTA.INC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(05,10),RLSE),
//            DCB=(DSORG=PS,LRECL=117,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPR2120),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPR2110                                              *
//* UTILERIA   : ZM4CPD2B                                              *
//* OBJETIVO   : VALIDA CARACTERISTICAS DE CUENTAS QUE NO EXISTEN EN   *
//*              PERSONAS:                                             *
//*              -EFECTIVO, COMISIONES, POSICION, REDAUXI              *
//*--------------------------------------------------------------------*
//ZMPR2110 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQPD2B DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.MUVNOPE,
//            DISP=SHR
//S1DQPD2B DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.MUV.PARABAJA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S2DQPD2B DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.MUV.CONPOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S3DQPD2B DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.MUV.CONOTR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S4DQPD2B DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.MUV.REDAUXI,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*XMZ1446.INI
//S5DQPD2B DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.ZMPR2110.CIF,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(05,10),RLSE),
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S6DQPD2B DD DSN=MXC&AMB..ZM.FIX.XMPDPR21.MUVNOPE.REP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(05,10),RLSE),
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*XMZ1446.FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPR2110),DISP=SHR
//*
//**********************************************************************
//*                   FIN   ZMPDPR21                                   *
//**********************************************************************
