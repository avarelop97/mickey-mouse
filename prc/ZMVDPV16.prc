//ZMVDPV16 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* PROCESO        :  BCVDCV16                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO SEC. Y CARGA EDVALCA              *
//*                                                                    *
//*                                                                    *
//* PERIODICIDAD   :  EVENTUAL                                         *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* REALIZO        :  SALVADOR PLASCENCIA H.                           *
//* FECHA          :  ABRIL 2005                                       *
//*                                                                    *
//* MODIFICO       :  ZZZZZZZZZZZZZZZZZZZZZ                            *
//* FECHA          :  ZZZZZ 2005                                       *
//*                                                                    *
//**********************************************************************
//* PASO 1                    -- ZM4VVW24 --                           *
//* OBJETIVO    :  GENERA ARCHIVO SEC. PARA CARGA DE EDVALCA           *
//*                                                                    *
//* AFECTA DB2  :  SELECT A CARTERA, CONCEPT                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD16P02 EXEC PGM=IKJEFT01
//*
//ZMVW24A1 DD DSN=MXCP.ZM.FIX.VALCA.BPIGO.EDVALCA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=150,RECFM=FBA,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD16T02),DISP=SHR
//*
//**********************************************************************
//* PASO 2                    -- ZM4VVW44 --                           *
//* OBJETIVO    :  CARGA EDVALCA                                       *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN EDVALCA                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD16P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW44A1 DD DSN=MXCP.ZM.FIX.VALCA.BPIGO.EDVALCA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD16T01),DISP=SHR
//*
