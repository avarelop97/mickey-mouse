//ZMHHPD15 PROC                                                         00000100
//*--------------------------------------------------------------------*00000200
//*                                                                    *00000300
//*                     C A S A   D E   B O L S A                      *00000400
//*                     =========================                      *00000500
//*                     <<  MERCADO DE DINERO  >>                      *00000600
//*                     <<     Y CAPITALES     >>                      *00000700
//*                                                                    *00000800
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00000900
//*                                                                    *00001000
//*   PROCEDIMIENTO    : ZMHHPD15                                      *00001100
//*                                                                    *00001200
//*   JCL              : SIVAXHH1                                      *00001300
//*                                                                    *00001400
//*   LO EJECUTA       : TRANSACCION ZV75 CICLICAMENTE.                *00001500
//*                                                                    *00001600
//*   OBJETIVO         : EJECUTA PROCESO DE VALIDACION DE RESPUESTAS   *00001700
//*                      QUE SE RECIBEN DE PLUS.                       *00001800
//*                                                                    *00001900
//*   FECHA            : 25/MAYO/2009.                                 *00002000
//*                                                                    *00002100
//*   PERIODICIDAD     : CICLICO.                                      *00002200
//*                                                                    *00002300
//*   AUTOR            : DAMIAN LUNA PE#A.                             *00002400
//*                                                                    *00002500
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE EJECUTA MAS DE UNA VEZ  *00002600
//*                      DURANTE EL DIA.                               *00002700
//*                                                                    *00002800
//*--------------------------------------------------------------------*00002900
//* PROGRAMA: ZM4DHH15                                                 *00003000
//* FUNCION : PROCESA RESPUESTA QUE LLEGAN A SIVA DE PLUS.             *00003100
//*           PROCESA REGISTROS: (LB, LD, LQ, LE, LG).                 *00003200
//*--------------------------------------------------------------------*00003300
//PHL15P01 EXEC PGM=IKJEFT01                                            00003400
//SYSTSPRT  DD SYSOUT=*                                                 00003500
//SYSPRINT  DD SYSOUT=*                                                 00003600
//SYSOUT    DD SYSOUT=*                                                 00003700
//SYSDBOUT  DD SYSOUT=*                                                 00003800
//SYSABOUT  DD SYSOUT=*                                                 00003900
//SYSUDUMP  DD SYSOUT=*                                                 00004000
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZHH02T01)                   00004200
//*--------------------------------------------------------------------*00004300
//* PROGRAMA: ZM3DG001                                                 *00004400
//* FUNCION : GENERACION DE ARCHIVO DE PARAMETROS.                     *00004500
//*           PROCESA REGISTROS: (LB, LD, LQ, LE, LG).                 *00004600
//*--------------------------------------------------------------------*00004700
//PHL15P00 EXEC PGM=ZM3DG001,COND=(4,LE),                               00004800
//         PARM=('&EMP','&SUC','&INT1','&INT2')                         00004900
//SYSTSPRT DD SYSOUT=*                                                  00005000
//SYSPRINT DD SYSOUT=*                                                  00005100
//SYSOUT   DD SYSOUT=*                                                  00005200
//SYSDBOUT DD SYSOUT=*                                                  00005300
//SYSABOUT DD SYSOUT=*                                                  00005400
//SYSUDUMP DD DUMMY                                                     00005500
//ZMHH01A1 DD DSN=MXCP.ZM.FIX.PAR.ZMHHPD15,                             00005600
//            DISP=(NEW,DELETE,DELETE),                                 00005700
//            SPACE=(CYL,(5,1),RLSE),                                   00005800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00005900
//            UNIT=3390                                                 00005910
//*                                                                     00006000
