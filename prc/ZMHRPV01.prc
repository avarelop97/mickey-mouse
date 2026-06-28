//ZMHRPV01 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                     <<<   V A L O R E S   >>>                      *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMHRPV01.                                           *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  GENERAR LAS PRIMERAS 4 VERSIONES DEL GDG            *00001100
//*                MXCP.ZM.GDGD.VAL.BANXIPZO.                          *00001200
//*                                                                    *00001400
//*   CORRE ANTES DE  :  NINGUNO                                       *00001500
//*                                                                    *00001600
//*   CORRE DESPUES DE:  NINGUNO                                       *00001700
//*                                                                    *00001800
//*   PERIODICIDAD    :  CORRERE UNA SOLA VEZ CUANDO SE INSTALE.       *00001900
//*                                                                    *00002000
//*   ELABORADO POR: SOFTTEK                                           *00002100
//*                                                                    *00002200
//*   FECHA:  NOVIEMBRE 2004.                                          *00002300
//*                                                                    *00002400
//**********************************************************************00002500
//*                      LOG DE MODIFICACIONES                         *00002600
//**********************************************************************00002700
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002800
//*--------------------------------------------------------------------*00002900
//*MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION   *00003000
//*      |          |       |        |                                 *00003100
//**********************************************************************00003200
//*-------------------------------------------------------------------* 00003900
//* PROGRAMA: IEBGENER                                                * 00004000
//* FUNCION:  GENERAR VERSION 1 DE GDG                                * 00004100
//* NO ACTUALIZA TABLAS.                                              * 00004200
//*-------------------------------------------------------------------* 00004300
//PHR01P04 EXEC PGM=IEBGENER                                            00004400
//PI601765 DD DUMMY                                                     00004500
//SYSUT1   DD  DUMMY,LRECL=117,BLKSIZE=0,RECFM=FB                       00004800
//SYSUT2   DD  DSN=MXCP.ZM.GDGD.VAL.BANXIPZO(+1),                       00004900
//             DISP=(NEW,CATLG,DELETE),                                 00005000
//             SPACE=(CYL,(6,3),RLSE),UNIT=3390,                        00005100
//             DCB=(BKUP.MODEL,RECFM=FB,LRECL=117,BLKSIZE=0,DSORG=PS)   00005200
//SYSIN    DD  DUMMY                                                    00005300
//SYSTSPRT DD SYSOUT=*                                                  00005900
//SYSPRINT DD SYSOUT=*                                                  00006000
//SYSOUT   DD SYSOUT=*                                                  00006100
//SYSDBOUT DD SYSOUT=*                                                  00006200
//SYSABOUT DD SYSOUT=*                                                  00006300
//SYSUDUMP DD DUMMY                                                     00006400
//*-------------------------------------------------------------------* 00181000
//* PROGRAMA: IEBGENER                                                * 00182000
//* FUNCION:  GENERAR VERSION 2 DE GDG                                * 00183000
//* NO ACTUALIZA TABLAS.                                              * 00184000
//*-------------------------------------------------------------------* 00185000
//PHR01P03 EXEC PGM=IEBGENER,COND=(4,LT)                                00186000
//PI601765 DD DUMMY                                                     00187000
//SYSUT1   DD  DUMMY,LRECL=117,BLKSIZE=0,RECFM=FB                       00188000
//SYSUT2   DD  DSN=MXCP.ZM.GDGD.VAL.BANXIPZO(+2),                       00189000
//             DISP=(NEW,CATLG,DELETE),                                 00189100
//             SPACE=(CYL,(6,3),RLSE),UNIT=3390,                        00189200
//             DCB=(BKUP.MODEL,RECFM=FB,LRECL=117,BLKSIZE=0,DSORG=PS)   00189300
//SYSIN    DD  DUMMY                                                    00189400
//SYSTSPRT DD SYSOUT=*                                                  00189500
//SYSPRINT DD SYSOUT=*                                                  00189600
//SYSOUT   DD SYSOUT=*                                                  00189700
//SYSDBOUT DD SYSOUT=*                                                  00189800
//SYSABOUT DD SYSOUT=*                                                  00189900
//SYSUDUMP DD DUMMY                                                     00190000
//*-------------------------------------------------------------------* 00190100
//* PROGRAMA: IEBGENER                                                * 00190200
//* FUNCION:  GENERAR VERSION 3 DE GDG                                * 00190300
//* NO ACTUALIZA TABLAS.                                              * 00190400
//*-------------------------------------------------------------------* 00190500
//PHR01P02 EXEC PGM=IEBGENER,COND=(4,LT)                                00190600
//PI601765 DD DUMMY                                                     00190700
//SYSUT1   DD  DUMMY,LRECL=117,BLKSIZE=0,RECFM=FB                       00190800
//SYSUT2   DD  DSN=MXCP.ZM.GDGD.VAL.BANXIPZO(+3),                       00190900
//             DISP=(NEW,CATLG,DELETE),                                 00191000
//             SPACE=(CYL,(6,3),RLSE),UNIT=3390,                        00191100
//             DCB=(BKUP.MODEL,RECFM=FB,LRECL=117,BLKSIZE=0,DSORG=PS)   00191200
//SYSIN    DD  DUMMY                                                    00191300
//SYSTSPRT DD SYSOUT=*                                                  00191400
//SYSPRINT DD SYSOUT=*                                                  00191500
//SYSOUT   DD SYSOUT=*                                                  00191600
//SYSDBOUT DD SYSOUT=*                                                  00191700
//SYSABOUT DD SYSOUT=*                                                  00191800
//SYSUDUMP DD DUMMY                                                     00191900
//*-------------------------------------------------------------------* 00192000
//* PROGRAMA: IEBGENER                                                * 00192100
//* FUNCION:  GENERAR VERSION 4 DE GDG                                * 00192200
//* NO ACTUALIZA TABLAS.                                              * 00192300
//*-------------------------------------------------------------------* 00192400
//PHR01P01 EXEC PGM=IEBGENER,COND=(4,LT)                                00192500
//PI601765 DD DUMMY                                                     00192600
//SYSUT1   DD  DUMMY,LRECL=117,BLKSIZE=0,RECFM=FB                       00192700
//SYSUT2   DD  DSN=MXCP.ZM.GDGD.VAL.BANXIPZO(+4),                       00192800
//             DISP=(NEW,CATLG,DELETE),                                 00192900
//             SPACE=(CYL,(6,3),RLSE),UNIT=3390,                        00193000
//             DCB=(BKUP.MODEL,RECFM=FB,LRECL=117,BLKSIZE=0,DSORG=PS)   00193100
//SYSIN    DD  DUMMY                                                    00193200
//SYSTSPRT DD SYSOUT=*                                                  00193300
//SYSPRINT DD SYSOUT=*                                                  00193400
//SYSOUT   DD SYSOUT=*                                                  00193500
//SYSDBOUT DD SYSOUT=*                                                  00193600
//SYSABOUT DD SYSOUT=*                                                  00193700
//SYSUDUMP DD DUMMY                                                     00193800
//*                                                                     00390000
