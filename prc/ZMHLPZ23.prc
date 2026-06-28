//ZMHLPZ23 PROC                                                         00000100
//**********************************************************************00000200
//*                                                                    *00000300
//*                     C A S A   D E   B O L S A                      *00000400
//*                     =========================                      *00000500
//*                     <<  MERCADO DE VALORES >>                      *00000600
//*                                                                    *00000700
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00000800
//*                                                                    *00000900
//*   PROCEDIMIENTO    : ZMHLPZ23                                      *00001000
//*                                                                    *00001100
//*   OBJETIVO         : MOSTRAR EL RESULTADO PRELIMINAR DE UN CANJE,  *00001200
//*                      SPLIT O REVERSPLIT                            *00001300
//*                                                                    *00001400
//*   CORRE ANTES DE   : NINGUNO                                       *00001500
//*                                                                    *00001600
//*   CORRE DESPUES DE : NINGUNO                                       *00001700
//*                                                                    *00001800
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *00001900
//*                                                                    *00002000
//*   FECHA            : AGOSTO 2003                                   *00002100
//*                                                                    *00002200
//*   AUTOR            : OSCAR URBANO F. GETRONICS.                    *00002300
//*                                                                    *00002400
//*                                                                    *00002500
//**********************************************************************00002600
//*  SE AGREGA NUEVA SALIDA DE REPORTE ZMHA06R2 PARA CTRL 'D'           00002700
//*  MODIFICO: OUF 21/07/04 GETRONICS                                   00002710
//*  ANS-1.1.0-x:  Modificaciones por cambio en COMMIT-s (Junio 2014)  *
//**********************************************************************00002800
//* PROGRAMA: ZM4EHA06                                                 *00004800
//* FUNCION:  MOSTRAR EL RESULTADO PRELIMINAR O DEFINITIVO             *00004900
//*           (SEGUN SEA EL CASO)  DE UN  CANJE,  SPLIT  O REVERSPLIT) *00005000
//**********************************************************************00005100
//PHL23P02 EXEC PGM=IKJEFT01                                            00005200
//ZMHA06A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMHLPE23,                     00005300
//            DISP=(OLD,PASS)                                           00005400
//*                                                      ANS-1.1.0-INI
//ZMHA06A3 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE23.ARCH03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=77,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//ZMHA06A4 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE23.ARCH04,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=150,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//ZMHA06A5 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE23.ARCH05,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=205,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//ZMHA06A6 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE23.ARCH06,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=77,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*                                                      ANS-1.1.0-FIN
//ZMHA06R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00005500
//ZMHA06R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00005600
//SYSTSPRT DD SYSOUT=*                                                  00005800
//SYSPRINT DD SYSOUT=*                                                  00005900
//SYSOUT   DD SYSOUT=*                                                  00006000
//SYSDBOUT DD SYSOUT=*                                                  00006100
//SYSABOUT DD SYSOUT=*                                                  00006200
//SYSUDUMP DD DUMMY                                                     00006300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL23T01),DISP=SHR                   00006400
//*                                                                     00006500
