//ZMVDPV31 PROC                                                         01660003
//**********************************************************************
//* SISTEMA        :  MODULO UNICO DE VALORES  ( M U V )               *
//* OBJETIVO       :  CARGA LA INFORMACION DE CAPAS E ISR EN TABLAS    *
//*                   RISRSOC Y MDDCST, ZMDT161                        *
//* PERIODICIDAD   :  EVENTUAL (DIA DE MIGRACION)                      *
//* REALIZO        :  MARTIN SANTOS                                    *
//* FECHA          :  SEP-2005                                         *
//* MODIFICO       :                                                   *
//* FECHA          :                                                   *
//**********************************************************************
//*                          ICEMAN                                    *
//**********************************************************************
//PVD31P05 EXEC PGM=ICEMAN                                              01660003
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.CAPAS.VALIDA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.CAPAS.SORT2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,LRECL=130,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*                                                  01710000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVD31T05),DISP=SHR
//**********************************************************************
//* PASO                      -- ZM4VVW57 --                           *
//* OBJETIVO    :  VALIDA CAPAS CONTRA SALDOS EN CARTERA               *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD31P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW57A1 DD DSN=MXCP.ZM.TMP.MIG.CAPAS.SORT2,DISP=SHR
//ZMVW57A2 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.SALDOOK,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=130,BLKSIZE=0)
//ZMVW57A3 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.SALDOER,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=130,BLKSIZE=0)
//ZMVW57R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD31T04),DISP=SHR
//**********************************************************************
//* PASO                      -- ZM4VVW58 --                           *
//* OBJETIVO    :  VALIDA CAPAS CONTRA SALDOS EN CARTERA               *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD31P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW58A1 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.SALDOOK,DISP=SHR
//ZMVW58A2 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.ERRCAP2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=130,BLKSIZE=0)
//ZMVW58A3 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.ERREMI2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=150,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD31T03),DISP=SHR
//**********************************************************************
//*                          ICEMAN                                    *
//**********************************************************************
//PVD31P02 EXEC PGM=ICEMAN,COND=(4,LT)                                  01660003
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.RISRSOC.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.RISRSOC.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=123,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*                                                  01710000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVD31T02),DISP=SHR
//*
//**********************************************************************
//*                          ZM4VVW79                                  *
//**********************************************************************
//PVD31P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW79A1 DD DSN=MXCP.ZM.TMP.MIG.RISRSOC.SORT,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD31T01),DISP=SHR
//*
