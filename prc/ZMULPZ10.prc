//ZMULPZ10 PROC                                                         00001000
//*--------------------------------------------------------------------*00002000
//*                                                                    *00003000
//*                     C A S A   D E   B O L S A                      *00004000
//*                     =========================                      *00005000
//*                     <<  C O N T R A T O S  >>                      *00006000
//*                                                                    *00007000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00008000
//*                                                                    *00009000
//*   PROCEDIMIENTO    : ZMULPZ10                                      *00009100
//*                                                                    *00009200
//*   OBJETIVO         : REPORTE DE ASIGNACION DE NUMERO DE CONTRATO   *00009300
//*                      ( OPCION 236 )                                *00009400
//*                                                                    *00009500
//*   CORRE ANTES DE   : NINGUNO                                       *00009600
//*                                                                    *00009700
//*   CORRE DESPUES DE : NINGUNO                                       *00009800
//*                                                                    *00009900
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00010000
//*                                                                    *00010100
//*   FECHA            : JUNIO 26, 2003                                *00010200
//*                                                                    *00010300
//*   AUTOR            : GETRONICS - MEXICO                            *00010400
//*
//*--------------------------------------------------------------------*00010600
//*   MODIFICO         : IDCJSL (JOSE OSCAR SEGURA PEREZ)             * 00010500
//*   FECHA            : JUNIO DE 2008                                 *00010200
//*--------------------------------------------------------------------*00010600
//*--------------------------------------------------------------------*00014200
//* PROGRAMA: ZM4DUK70 VOBK70O                                         *00014300
//* FUNCION:  REPORTE DE ASIGNACION DE NUMERO DE CONTRATO              *00014400
//*--------------------------------------------------------------------*00014500
//PUL10P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00014600
//*                                                                     00014700
//ZMUK70A1 DD DSN=MXCP.ZM.TMP.CON.EMP.SUC.ZMULPE10,DISP=SHR             00014800
//*                                                                     00014900
//ZMUK70R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00015200
//SYSPRINT DD SYSOUT=*                                                  00015300
//SYSOUT   DD SYSOUT=*                                                  00015400
//SYSDBOUT DD SYSOUT=*                                                  00015500
//SYSABOUT DD SYSOUT=*                                                  00015600
//SYSUDUMP DD DUMMY                                                     00015700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PUL10P03),DISP=SHR                   00015800
//*                                                                     00014900
//****************************************************************
//*        TERMINA PROCESO ZMULPZ10 SIVA MULTIEMPRESA            *
//****************************************************************
