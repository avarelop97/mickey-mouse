//ZMVDPV18 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* PROCESO        :  BCVDCV18                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS SEC. PREVIOS A PARTIR DE RISRSOC *
//*                   Y CARGA EDIMPUE                                  *
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
//* PASO 1                    -- ZM4VVW21 --                           *
//* OBJETIVO    :  GENERA ARCHIVO PREVIO 01                            *
//*                                                                    *
//* AFECTA DB2  :  SELECT A RISRSOC                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD18P03 EXEC PGM=IKJEFT01
//*
//ZMVW21A1 DD DSN=MXCP.ZM.FIX.PREVIO.BPIGO.EDIMPUE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD18T03),DISP=SHR
//*
//**********************************************************************
//* PASO 2                    -- ZM4VVW22 --                           *
//* OBJETIVO    :  GENERA ARCHIVO PREVIO 02                            *
//*                                                                    *
//* AFECTA DB2  :  SELECT A PARAM                                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD18P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW22A1  DD DSN=MXCP.ZM.FIX.PREVIO.BPIGO.EDIMPUE,DISP=SHR
//*
//ZMVW22A2  DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.EDIMPUE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=080,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD18T02),DISP=SHR
//*
//**********************************************************************
//* PASO 3                    -- ZM4VVW40 --                           *
//* OBJETIVO    :  CARGA EDIMPUE A PARTIR DE ARCH. SECUENCIAL          *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EDIMPUE                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD18P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW40A1  DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.EDIMPUE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD18T01),DISP=SHR
//*
