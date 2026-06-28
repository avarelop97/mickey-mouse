//ZMVDPV34 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  ( M U V )               *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  CARGA POSICION AL FINAL DEL MES ANTERIOR A LA    *
//*                   MIGRACION                                        *
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
//* PASO                      --  SORT    --                           *
//* OBJETIVO    :  ORDENAR ARCHIVO DE POSICION POR EMISORA,SERIE,CUPON *
//*                                                                    *
//**********************************************************************
//PVD34P04 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.POSBP.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.POSBP.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=136,RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVD34T04),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW31 --                           *
//* OBJETIVO    :  ACTUALIZAR ARCHIVO DE POSICION CON EMISORA, SERIE O *
//*                CUPON EXISTENTES.                                   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD34P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW31A1 DD DSN=MXCP.ZM.TMP.MIG.POSBP.SORT,DISP=SHR
//ZMVW31A2 DD DSN=MXCP.ZM.FIX.MIG.POSBP.L144,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=144,RECFM=FB,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD34T03),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW70 --                           *
//* OBJETIVO    :  CARGA POSICION DE CLIENTES MUV EN CARTERA.          *
//*                                                                    *
//* AFECTA DB2  :  INSERTA CARTERA (ZMDTMG2)                           *
//**********************************************************************
//PVD34P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW70A1 DD DSN=MXCP.ZM.FIX.MIG.POSBP.L144,DISP=SHR
//ZMVW70A2 DD DSN=MXCP.ZM.FIX.MIG.POSBP.L080,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD34T02),DISP=SHR
//*
//**********************************************************************
//* PASO                      -- ZM4VVW91 --                           *
//* OBJETIVO    :  CARGA POSICION DIA A DIA EN SECART                  *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN SECART, SEATRCA                          *
//**********************************************************************
//PVD34P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW91R1 DD DSN=MXCP.ZM.FIX.MIG.ZM4VVW91.REPO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD34T01),DISP=SHR
//*
