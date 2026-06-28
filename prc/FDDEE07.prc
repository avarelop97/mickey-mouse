//FDDEE07   PROC                                                        00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                   I.D.S. COMERCIAL, S.A. DE C.V.                   *00000400
//*                                                                    *00000500
//*   APLICACION:  DISTRIBUCION DE FONDOS POR LA RED                   *00000600
//*                                                                    *00000700
//*   PROCEDIM. :  FDDEE07                                             *00000800
//*                                                                    *00000900
//*   OBJETIVO  :  OBTENCION DE LAS OPERACIONES A PARTIR DEL SIVA.     *00001000
//*                                                                    *00001100
//*   CORRE ANTES DE  :  TPJCCI09.                                     *00001200
//*                                                                    *00001300
//*   CORRE DESPUES DE:  INDEPENDIENTE                                 *00001400
//*                                                                    *00001500
//*   PERIODICIDAD    :  UNICA VEZ.   (CARGA INICIAL).                 *00001600
//*                                                                    *00001700
//*   ELABORADO POR: M.G.M.                     FECHA:  01-SEP-2000    *00001800
//*                  IDS COMERCIAL, S.A. DE C.V.                       *00001900
//**********************************************************************00002000
//*                BITACORA DE LAS MODIFICACIONES                      *00002100
//*                                                                    *00002200
//*  MODIFICADO POR:                         FECHA:                    *00002300
//*                                                                    *00002400
//*  DESCRIPCION   :                                                   *00002500
//*                                                                    *00002600
//*                                                                     00002700
//**********************************************************************00002800
//* PROGRAMA   DESCRIPCION                                             *00002900
//* VOBV91E    OBTENCION DE CLIENTE A UNA FECHA ESPECIFICA A PARTIR    *00003000
//*            DEL SIVA.   SIVA.SIA.FIX.MOVS.CONTRATO                  *00003100
//**********************************************************************00003200
//*                                                                     00003300
//FDDE0704 EXEC PGM=IKJEFT01,COND=(0,LT),REGION=0M                      00003400
//*                                                                     00003500
//VOBSOOPE DD DSN=SIVA.SIA.FIX.MOVS.CONTRATO,                           00003600
//            DISP=(NEW,CATLG,DELETE),                                  00003700
//            UNIT=SYSDA,                                               00003800
//            SPACE=(CYL,(5,0),RLSE),                                   00003900
//            DCB=(DSORG=PS,RECFM=FB,LRECL=91,BLKSIZE=0)                00004000
//SYSOUT   DD SYSOUT=*                                                  00004100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00004200
//SYSPRINT DD SYSOUT=*                                                  00004300
//SYSDBOUT DD SYSOUT=*                                                  00004400
//SYSABOUT DD SYSOUT=*                                                  00004500
//SYSUDUMP DD DUMMY                                                     00004600
//SYSTSIN  DD DSN=SIVA.CARDS(FDDE0704),DISP=SHR                         00004700
//*                                                                     00004800
//**********************************************************************00004900
//*  PASO         DESCRIPCION                                          *00005000
//*               SORT. ARCHIVO SIVA.SIA.FIX.POSICION                  *00005100
//*               POR FONDO,CONTRATO.                                   00005200
//**********************************************************************00005300
//*                                                                     00005400
//FDDE0703 EXEC PGM=SYNCSORT,COND=(0,LT)                                00005500
//*                                                                     00005600
//SORTIN   DD DSN=SIVA.SIA.FIX.POSICION.PASO.SIVA,                      00005700
//             DISP=SHR                                                 00005800
//SORTOUT  DD DSN=SIVA.SIA.FIX.POSICION.PASO.SIVA.SRT7,                 00005900
//             DISP=(NEW,CATLG,DELETE),                                 00006000
//             UNIT=SYSDA,                                              00006100
//             DCB=(LRECL=040,RECFM=FB,BLKSIZE=0,DSORG=PS),             00006200
//             SPACE=(CYL,(1,0),RLSE)                                   00006300
//SYSPRINT DD  SYSOUT=*                                                 00006400
//SYSOUT   DD  SYSOUT=*                                                 00006500
//SYSIN    DD  DSN=SIVA.CARDS(FDDE0703),DISP=SHR                        00006600
//*                                                                    *00006700
//**********************************************************************00006800
//*  PASO         DESCRIPCION                                          *00006900
//*               SORT. ARCHIVO SIVA.SIA.MOVS.CONTRATO                 *00007000
//*               POR FONDO,CONTRATO (ELIMINA DUPLICADOS).             *00007100
//**********************************************************************00007200
//*                                                                     00007300
//FDDE0702 EXEC PGM=SYNCSORT,COND=(0,LT)                                00007400
//*                                                                     00007500
//SORTIN   DD DSN=SIVA.SIA.FIX.MOVS.CONTRATO,                           00007600
//             DISP=SHR                                                 00007700
//SORTOUT  DD DSN=SIVA.SIA.FIX.MOVS.CONTRATO.SRT7,                      00007800
//             DISP=(NEW,CATLG,DELETE),                                 00007900
//             UNIT=SYSDA,                                              00008000
//             DCB=(LRECL=091,RECFM=FB,BLKSIZE=0,DSORG=PS),             00008100
//             SPACE=(CYL,(1,0),RLSE)                                   00008200
//SYSPRINT DD  SYSOUT=*                                                 00008300
//SYSOUT   DD  SYSOUT=*                                                 00008400
//SYSIN    DD  DSN=SIVA.CARDS(FDDE0702),DISP=SHR                        00008500
//*                                                                     00008600
//**********************************************************************00008700
//*  PROGRAMA     DESCRIPCION.                                         *00008800
//*  VOBV85E      GENERA ARCHIVO DE POSICION, AGREGANDO REG DE POSICION*00008900
//*               PARA AQUELLOS MOVIMIENTOS QUE NO TENIAN.             *00009000
//**********************************************************************00009100
//*                                                                     00009200
//FDDE0701 EXEC PGM=IKJEFT01,COND=(0,LT),REGION=0M                      00009300
//SIVAPOSI DD DSN=SIVA.SIA.FIX.POSICION.PASO.SIVA.SRT7,DISP=SHR         00009400
//SIVAMOVS DD DSN=SIVA.SIA.FIX.MOVS.CONTRATO.SRT7,DISP=SHR              00009500
//SIVAMTH  DD DSN=SIVA.SIA.FIX.POSICION.SIVA,                           00009600
//            DISP=(NEW,CATLG,DELETE),                                  00009700
//            UNIT=SYSDA,                                               00009800
//            SPACE=(CYL,(5,0),RLSE),                                   00009900
//            DCB=(DSORG=PS,RECFM=FB,LRECL=40,BLKSIZE=0)                00010000
//SYSOUT   DD SYSOUT=*                                                  00010100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00010200
//SYSPRINT DD SYSOUT=*                                                  00010300
//SYSDBOUT DD SYSOUT=*                                                  00010400
//SYSABOUT DD SYSOUT=*                                                  00010500
//SYSUDUMP DD DUMMY                                                     00010600
//SYSTSIN  DD DSN=SIVA.CARDS(FDDE0701),DISP=SHR                         00010700
//*                                                                     00010800
//**********************************************************************00010900
//*                          FIN DE FDDEE07                             00011000
//**********************************************************************00011100
