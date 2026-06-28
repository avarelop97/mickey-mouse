//ZMHCPD38 PROC                                                         00040000
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHCND38 (PRC-ZMHCPD38).                         *
//*                                                                    *
//* OBJETIVO       :  GENERA LA INFORMACION DE RFC PARA ENVIO AL SAT,  *
//*                   PARA PERSONAS FISICAS + CIFRAS DE CONTROL, Y PARA*
//*                   P. MORALES + CIFRAS CONTROL, EN TOTAL 4 ARCHIVOS.*
//*                                                                    *
//* PERIODICIDAD   :  MENSUAL                                          *
//*                                                                    *
//* ELABORADO POR  :  FABRICA DE SOFTWARE DGCM.                        *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO    : PHC38P05                                                 *
//* PROGRAMA: ZM4DHN15                                                 *
//* OBJETIVO: OBTENER CUENTAS DE CASA DE BOLSA, Y GENERAR INFORMACION  *
//*           DEL RFC PARA ENVIO AL SAT.                               *
//*---------------------------------------------------------------------
//PHC38P05 EXEC PGM=IKJEFT01
//ZMHN15A1 DD DSN=MXCP.ZM.FIX.ECBP.RFCSAT.PFISICAS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(004,002),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=318,BLKSIZE=0)
//ZMHN15A2 DD DSN=MXCP.ZM.FIX.ECBP.RFCSAT.PFISCIFR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(002,001),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=031,BLKSIZE=0)
//ZMHN15A3 DD DSN=MXCP.ZM.FIX.ECBP.RFCSAT.PMORALES,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(004,002),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=266,BLKSIZE=0)
//ZMHN15A4 DD DSN=MXCP.ZM.FIX.ECBP.RFCSAT.PMORCIFR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(002,001),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=031,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC38T05),DISP=SHR
//*
//**********************************************************************00003000
//*                          FINAL DEL PROCESO
//**********************************************************************00003000
