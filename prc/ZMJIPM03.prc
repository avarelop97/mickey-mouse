//ZMJIPM03 PROC
//**********************************************************************00002000
//*                                                                    *00003000
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V).                *00004000
//*                                                                    *00004200
//* PROCESO        :  CBJINM03                                         *00004300
//*                   RESPALDO DE ARCHIVOS SAT                         *00004400
//*                                                                    *00004500
//* OBJETIVO       :  GENERAR RESPALDOS DE LOS ARCHIVOS MENSUALES CON  *00004600
//*                   SALDOS Y TENENCIAS ENTRAGADOS AL SAT.            *00004700
//*                                                                    *00004800
//* CORRE                                                              *00004900
//* ANTES DE       :  N/A.                                             *00005000
//*                                                                    *00006000
//* DESPUES DE     :  CBJINM02.                                        *00007000
//*                                                                    *00008000
//* REALIZO        :  AZERTIA (F.V.C.)                                 *00009000
//* FECHA          :  NOVIEMBRE 2005.                                  *00009100
//*                                                                    *00009200
//* MODIFICO       :                                                   *00009000
//* FECHA          :                                                   *00009100
//*                                                                    *00009200
//* OBSERVACION    :  PROCESO MENSUAL.                                 *00009300
//*                                                                    *00009300
//**********************************************************************00009500
//*                                                                    *
//* OBJETIVO    :  RESPALDO DEL ARCHIVO MENSUAL SALDOS CASA DE BOLSA   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJI03P04 EXEC PGM=ICEGENER
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.SALDOS.SAT,DISP=SHR
//*
//SYSUT2   DD  DSN=MXCP.ZM.VA05.ECBP.SALD.SAT.D&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=165,RECFM=FB),
//             UNIT=FJVTPH,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSIN    DD DUMMY
//*
//**********************************************************************00009500
//*                                                                    *
//* OBJETIVO    :  RESPALDO DEL ARCHIVO MENSUAL TENENCIA CASA DE BOLSA *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJI03P03 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECBP.TENENCIA.SAT,DISP=SHR
//*
//SYSUT2   DD  DSN=MXCP.ZM.VA05.ECBP.TEN.SAT.D&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=100,RECFM=FB),
//             UNIT=FJVTPH,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSIN    DD DUMMY
//*
//**********************************************************************00009500
//*                                                                    *
//* OBJETIVO    :  RESPALDO SALDOS M.U.V. PARA EL SAT.                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJI03P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EMUV.SALDOS.SAT,DISP=SHR
//*
//SYSUT2   DD  DSN=MXCP.ZM.VA05.EMUV.SALD.D&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=165,RECFM=FB),
//             UNIT=FJVTPH,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSIN    DD DUMMY
//*
//**********************************************************************00009500
//*                                                                    *
//* OBJETIVO    :  RESPALDO DE TENENCIA M.U.V. PARA EL SAT             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PJI03P01 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EMUV.TENENCIA.SAT,DISP=SHR
//*
//SYSUT2   DD  DSN=MXCP.ZM.VA05.EMUV.TEN.D&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=100,RECFM=FB),
//             UNIT=FJVTPH,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSIN    DD DUMMY
//*
