//ZMHUNV03 PROC
//**********************************************************************00002000
//*                                                                    *00003000
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V).                *00004000
//*                                                                    *00004200
//* PROCESO        :  CBHUNV03                                         *00004300
//*                   TENENCIA ESTADISTICA.                            *00004400
//*                                                                    *00004500
//* OBJETIVO       :  GENERAR RESPALDOS DE LAS TABLAS:                 *00004600
//*                   PARAM   GPOCONC SEULTC  EDVALCA EDDEPRE          *00004700
//*                   SEHIPRO SEPRULT SECATAC EDSECIN CARTERA          *00004800
//*                   AGPOCON SECATAP SEULTS  EDMOVED                  *00004800
//*                   CTLPROC SEULTP  SECATAS EDIMPUE                  *00004800
//*                                                                    *00004800
//* CORRE                                                              *00004900
//* ANTES DE       :  PROCESO DE UNICA VEZ                             *00005000
//*                                                                    *00006000
//* DESPUES DE     :  PROCESO DE UNICA VEZ                             *00007000
//*                                                                    *00008000
//* REALIZO        :  AZERTIA (F.V.C.)                                 *00009000
//* FECHA          :  JUNIO 2005.                                      *00009100
//*                                                                    *00009200
//* MODIFICO       :                                                   *00009000
//* FECHA          :                                                   *00009100
//*                                                                    *00009200
//* OBSERVACION    :                                                   *00009300
//*                                                                    *00009300
//**********************************************************************00009500
//*                                                                    *
//* OBJETIVO    :  RESPALDO DE TABLAS ANTES DE DEPURACION              *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PHUN3P01 EXEC PGM=ACPMAIN,PARM='MXP1,CBHUNV0301,NEW/RESTART'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*
//SYSCOP01 DD  DSN=MXCP.ZM.VD07.SEDVALCA.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP02 DD  DSN=MXCP.ZM.VD07.SEDSECIN.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP03 DD  DSN=MXCP.ZM.VD07.SEDMOVED.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP04 DD  DSN=MXCP.ZM.VD07.SEDIMPUE.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP05 DD  DSN=MXCP.ZM.VD07.SEDDEPRE.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP06 DD  DSN=MXCP.ZM.VD07.SCARTERA.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP07 DD  DSN=MXCP.ZM.VD07.SPARAM.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP08 DD  DSN=MXCP.ZM.VD07.SSEHIPRO.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP09 DD  DSN=MXCP.ZM.VD07.SAGPOCON.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP10 DD  DSN=MXCP.ZM.VD07.SCTLPROC.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP11 DD  DSN=MXCP.ZM.VD07.SGPOCONC.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP12 DD  DSN=MXCP.ZM.VD07.SSEPRULT.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP13 DD  DSN=MXCP.ZM.VD07.SSECATAP.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP14 DD  DSN=MXCP.ZM.VD07.SSEULTP.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP15 DD  DSN=MXCP.ZM.VD07.SSEULTC.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP16 DD  DSN=MXCP.ZM.VD07.SSECATAC.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP17 DD  DSN=MXCP.ZM.VD07.SSEULTS.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP18 DD  DSN=MXCP.ZM.VD07.SSECATAS.ZMHUNV03,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSPRINT DD SYSOUT=*                                                  00045402
//UTPRINT  DD SYSOUT=*                                                  00045502
//SYSUDUMP DD SYSOUT=*                                                  00045602
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUNV3T01),DISP=SHR                   00045702
//*
