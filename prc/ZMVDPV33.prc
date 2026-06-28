//ZMVDPV33 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  ( M U V )               *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  CARGA DE POSICION AL DIA DE LA MIGRACION         *
//*                   ACTUALIZA OPERA, CARTERA Y SECART                *
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
//*                          ICEMAN                                    *
//*        SORT DEL ARCHIVO POSMUV POR EMISORA SERIE Y CUPON           *
//**********************************************************************
//PVD33P04 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.POSMUV.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.POSMUV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=371,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVD33T04),DISP=SHR
//*
//**********************************************************************
//*                          ZM4VVW32                                  *
//*   PROGRAMA QUE PONE ESC EN PARAM ZC8 Y CRECE ARCHIVO A 379 CHAR    *
//**********************************************************************
//PVD33P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW32A1 DD DSN=MXCP.ZM.TMP.MIG.POSMUV.SORT,DISP=SHR
//ZMVW32A2 DD DSN=MXCP.ZM.FIX.MIG.POSMUV.L379,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=379,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD33T03),DISP=SHR
//*
//**********************************************************************
//*                          ZM4VVW77                                  *
//*  PROGRAMA QUE GRABA REGISTROS EN LA TABLA  ZMDTMG1 (OPERA)         *
//**********************************************************************
//PVD33P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW77A1 DD DSN=MXCP.ZM.FIX.MIG.POSMUV.L379,DISP=SHR
//ZMVW77S1 DD DSN=MXCP.ZM.FIX.MIG.FALTAN.L379,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=379,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD33T02),DISP=SHR
//*
//**********************************************************************
//*                          ZM4VVW72                                  *
//**********************************************************************
//*  PROGRAMA QUE GRABA REGISTROS EN LA TABLA  ZMDTMG2 (CARTERA)       *
//**********************************************************************
//PVD33P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD33T01),DISP=SHR
//*
