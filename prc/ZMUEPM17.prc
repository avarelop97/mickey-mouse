//ZMUEPM17 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM17                                            *
//*                                                                    *
//*   OBJETIVO  :  RESPALDO DE ARCHIVOS DE BPIGO PARA ESTADOS DE       *
//*                CUENTA DE BANCA PATRIMONIAL                         *
//*                                                                    *
//*                                                                    *
//*   CORRE ANTES DE  : NINGUNO                                        *
//*                                                                    *
//*   CORRE DESPUES DE: CBUENM15                                       *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        RESPALDA ARCHIVO 'MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF01.ACT'      *
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(+1)'     *
//**********************************************************************
//PUE17P03 EXEC PGM=ICEGENER
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF01.ACT,DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,LRECL=1754,RECFM=FB)
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        RESPALDA ARCHIVO 'MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF02.ACT'      *
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF02(+1)'     *
//**********************************************************************
//PUE17P02 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF02.ACT,DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF02(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,LRECL=361,RECFM=FB)
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        RESPALDA ARCHIVO 'MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF03.ACT'      *
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF03(+1)'     *
//**********************************************************************
//PUE17P01 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF03.ACT,DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF03(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,LRECL=297,RECFM=FB)
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM17 SIVA MULTIEMPRESA                  *
//**********************************************************************
