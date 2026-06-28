//ZMVDPV28 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* OBJETIVO       :  EFECTUAR MIGRACION DE PLAZOS DE BPIGO A MUV      *
//*                                                                    *
//* PERIODICIDAD   :  EVENTUAL                                         *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* REALIZO        :  SALVADOR PLASCENCIA H.                           *
//* FECHA          :  AGOSTO 2005                                      *
//*                                                                    *
//* MODIFICO       :                                                   *
//* FECHA          :                                                   *
//*                                                                    *
//**********************************************************************
//* PASO 1                    -- ZM4VVW85 --                           *
//* OBJETIVO    :  MIGRAR PLAZOS DE BPIGO A MUV                        *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN OPERA, OPERTES, ZMDT610, CARTERA.        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD28P01 EXEC PGM=IKJEFT01
//*
//ZMVW85A1 DD DSN=MXCP.ZM.FIX.MIG.PLAZOS.F&FECHA,DISP=SHR
//*
//ZMVW85A2 DD DSN=MXCP.ZM.FIX.MIG.PLAZOS.DETALLE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=122,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD28T01),DISP=SHR
//*
