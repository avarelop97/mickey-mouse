//ZMULPZ24 PROC                                                         00001000
//*--------------------------------------------------------------------*00002000
//*                                                                    *00003000
//*                     C A S A   D E   B O L S A                      *00004000
//*                     =========================                      *00005000
//*                     <<  C O N T R A T O S  >>                      *00006000
//*                                                                    *00007000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00008000
//*                                                                    *00009000
//*   PROCEDIMIENTO    : ZMULPZ24                                      *00009100
//*                                                                    *00009200
//*   OBJETIVO         : REPORTE DE CONTRATOS CON CAMBIO DE PROMOTOR   *00009300
//*                      ( OPCION 488 ) POS. PROPIA BANCO              *00009400
//*                                                                    *00009500
//*   CORRE ANTES DE   : NINGUNO                                       *00009600
//*                                                                    *00009700
//*   CORRE DESPUES DE : NINGUNO                                       *00009800
//*                                                                    *00009900
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00010000
//*                                                                    *00010100
//*   FECHA            : AGOSTO 2020                                   *00010200
//*                                                                    *00010300
//*   AUTOR            : GETRONICS - MEXICO                            *00010400
//*                                                                    *00010500
//*--------------------------------------------------------------------*00010600
//* PROGRAMA: ZM4DG633                                                 *00014300
//* FUNCION:  REPORTE DE CONTRATOS CON CAMBIO DE PROMOTOR              *00014400
//*--------------------------------------------------------------------*00014500
//PUL24P03 EXEC PGM=IKJEFT01                                            00014600
//*                                                                     00014700
//ZMG633A1 DD DSN=MXCP.ZM.TMP.CON.EBCM.S000.ZMULPP24,DISP=SHR           00012000
//*                                                                     00014900
//ZMG633R1 DD DSN=MXCP.ZM.FIX.CON.EBCM.S000.CTOPROM.ZMULPE24,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=132,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00015200
//SYSPRINT DD SYSOUT=*                                                  00015300
//SYSOUT   DD SYSOUT=*                                                  00015400
//SYSDBOUT DD SYSOUT=*                                                  00015500
//SYSABOUT DD SYSOUT=*                                                  00015600
//SYSUDUMP DD DUMMY                                                     00015700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL14T01),DISP=SHR                   00015800
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO ANTERIOR
//* REPORTE  : REPORTE CONTRATOS POSICION PROPIA BANCO
//**********************************************************************
//PUL24P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.CON.EBCM.S000.CTOPROM.ZMULPE24,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
