//ZMHUNV05 PROC
//**********************************************************************00002000
//*                                                                    *00003000
//* SISTEMA        :  MODULO DE CAPITALES ( M.U.V).                    *00004000
//*                                                                    *00004200
//* PROCESO        :  CBHUNV05                                         *00004300
//*                                                                    *00004500
//* OBJETIVO       :  PROCESO DE RESPALDOS UNICO                       *00004600
//*                                                                    *00004800
//* OBSERVACION    :  ESTE PROCESO CORRE UNA SOLA VEZ.                 *00009300
//*                                                                    *00009400
//* CORRE                                                              *00004900
//* ANTES DE       :  N/A                                              *00005000
//*                                                                    *00006000
//* DESPUES DE     :  N/A                                              *00007000
//*                                                                    *00008000
//* REALIZO        :  AZERTIA(F.V.C.)                                  *00009000
//* FECHA          :  MARZO 2006.                                      *00009100
//*                                                                    *00009200
//* MODIFICO       :                                                   *00009000
//* FECHA          :                                                   *00009100
//*                                                                    *00009200
//* OBSERVACION    :                                                   *00009300
//*                                                                    *00009300
//*                                                                    *00009400
//*                                                                    *00009400
//**********************************************************************00009500
//**********************************************************************
//*                                                                    *
//* OBJETIVO    :  RESPALDO DE TABLAS ANTES DE DEPURACION              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PHUN5P01 EXEC PGM=ACPMAIN,PARM='MXP1,CBHUNV0501,NEW/RESTART',
//         COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*
//SYSCOP01 DD  DSN=MXCP.ZM.VD07.PRODUSVP.XBLOQBMV.D060303,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP02 DD  DSN=MXCP.ZM.VD07.PRODUSVP.XCRUCES.D060303,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP03 DD  DSN=MXCP.ZM.VD07.PRODUSVP.XHECHOS.D060303,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP04 DD  DSN=MXCP.ZM.VD07.PRODUSVP.XHISHECH.D060303,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP05 DD  DSN=MXCP.ZM.VD07.PRODUSVP.XORDCON.D060303,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP06 DD  DSN=MXCP.ZM.VD07.PRODUSVP.XORDNBMV.D060303,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP07 DD  DSN=MXCP.ZM.VD07.PRODUSVP.XPOSTURA.D060303,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  00045402
//UTPRINT  DD SYSOUT=*                                                  00045502
//SYSUDUMP DD SYSOUT=*                                                  00045602
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PHUN5P01),DISP=SHR                   00045702
//*
