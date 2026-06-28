//ZMJLPZ53 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA MOVIMIENTOS   BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCESO   :  ZMJLPZ53                                            *
//*                                                                    *
//*   OBJETIVO  :  TRANSFERENCIA ARCHIVOS INDRA CASA DE BOLSA          *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//MZME18P3 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ZMJLPZ53,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO       : MZIN3100                                              *
//* UTILERIA   : TANTIA20                                              *
//* OBJETIVO   : ESTE PASO REALIZA LA TRANSMISION DE ARCHIVO HOST A    *
//*              SERVIDOR DEL ARCHIVO DE SEGMENTOS CON SELLOS FISCALES *
//*--------------------------------------------------------------------*
//MZIN3100 EXEC PROC=TANTIA20,COND=(4,LT)
//*
//LFILE    DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.INDRA.DIGTA,
//            DISP=SHR
//SYSIN    DD *
DESTINO=CD.AZERTIA
TIPO=SEND
OPTS='ASCII,LF,NOTRUNC'
RUTA=/user1/BBVA_BANCOMER/Entrada_c/Cbolsa/
RFILE=JE_SIVA01%%MM.%%DD.TXT
/*
//*--------------------------------------------------------------------*
//* PASO       : MZIN3040                                              *
//* UTILERIA   : TANTIA20                                              *
//* OBJETIVO   : ESTE PASO REALIZA LA TRANSMISION DE ARCHIVO HOST A    *
//*              SERVIDOR DE ARCHIVO DE CIFRAS CONTROL (ESTADISTICAS)  *
//*--------------------------------------------------------------------*
//MZIN3040 EXEC PROC=TANTIA20,COND=(4,LT)
//*
//LFILE    DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.INDRA.CIFCTL,
//            DISP=SHR
//SYSIN    DD *
DESTINO=CD.AZERTIA
TIPO=SEND
OPTS='ASCII,LF,NOTRUNC'
RUTA=/user1/BBVA_BANCOMER/Entrada_c/Cbolsa/
RFILE=JE_CISIVA01%%MM.%%DD.TXT
/*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CAMBIO AL NUEVO ESQUEMA EDC                    *
//* PROCESO      : NO HAY PROCESO                                      *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : TRANSMISION DE LOS ARCHIVOS FORMATEADOS CON         *
//*                INFORMACION DE EDOS DE CUENTA DE CASA DE BOLSA CON  *
//*                SELLOS FISCALES                                     *
//*--------------------------------------------------------------------*
//*                     FIN DEL  MZMP9IN6                              *
//*--------------------------------------------------------------------*
