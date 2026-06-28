//ZMVDPV32 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  ( M U V )               *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  CARGA DE MOVIMIENTOS EN TABLA OPERA Y ACTUALIZA  *
//*                   CARTERA Y SECART                                 *
//*                                                                    *
//* PERIODICIDAD   :  EVENTUAL                                         *
//*                                                                    *
//*                                                                    *
//* REALIZO        :  SALVADOR PLASCENCIA H.                           *
//* FECHA          :  AGOSTO 2005                                      *
//*                                                                    *
//* MODIFICO       :                                                   *
//* FECHA          :                                                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//* PASO                      -- ZM4VVW82 --                           *
//* OBJETIVO    :  CARGA MOVIMIENTOS DIARIOS EN OPERA.                 *
//**********************************************************************
//PVD32P03  EXEC PGM=IKJEFT01
//ZMVW82A1  DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.VALIDA,DISP=SHR
//ZMVW82A2  DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.NOPROC,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//             DCB=(DSORG=PS,LRECL=500,RECFM=FB,BLKSIZE=0)
//ZMVW82A3  DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.EMIERR,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD32T03),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW72 --                           *
//* OBJETIVO    :  ACTUALIZA CARTERA DE ACUERDO A OPERACIONES DIARIAS. *
//**********************************************************************
//PVD32P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD32T02),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW90 --                           *
//* OBJETIVO    :  CARGA POSICION DIA A DIA EN SECART                  *
//**********************************************************************
//PVD32P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW90R1  DD DSN=MXCP.ZM.FIX.MIG.ZM4VVW90.REPO,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD32T01),DISP=SHR
//*
