//ZMUFPD14 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                     <<  C O N T R A T O S >>                       *00060000
//*                                                                    *00070000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080000
//*                                                                    *00090000
//*   OBJETIVO  : PROCESO DE DESBLOQUEO DE CONTRATOS                   *00100000
//*                                                                    *00110000
//*                                                                    *00120000
//*   CORRE ANTES DE  : PFDFDD07                                       *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE: CBJFCD05                                       *00150000
//*                                                                    *00160000
//*                                                                    *00170000
//*   PERIODICIDAD    :  DIARIO                                        *00180000
//*                                                                    *00190000
//*   FECHA: AGOSTO  2002                                              *00200000
//*                                                                    *00210000
//**********************************************************************00220000
//*                      LOG DE MODIFICACIONES                         *00230000
//**********************************************************************00240000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00250000
//*--------------------------------------------------------------------*00260000
//*      |          |       |        |                                 *00270000
//**********************************************************************00280000
//* PROGRAMA: ZM3DG001                                                  00290000
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE CSP Y/O COBOL           00300000
//*           Y LOS GRABA EN ARCHIVO                                    00310000
//**********************************************************************00320000
//PUF14P02 EXEC PGM=ZM3DG001,                                           00330000
//         PARM=('&EMP',' ',' ',' ',)                                   00340000
//PI601765 DD DUMMY                                                     00350000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00360000
//SYSPRINT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//SYSDBOUT DD SYSOUT=*                                                  00390000
//SYSABOUT DD DUMMY                                                     00400000
//SYSUDUMP DD DUMMY                                                     00410000
//*                                                                     00420000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..ZMUFPD14,                      00430000
//            DISP=(NEW,CATLG,DELETE),                                  00440000
//            SPACE=(CYL,(2,1),RLSE),                                   00450000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00460000
//            UNIT=3390                                                 00470000
//*                                                                     00480000
//**********************************************************************00490000
//* PROGRAMA: ZM4DUK04                                                  00500000
//* OBJETIVO: REPORTA LOS CONTRATOS DESBLOQUEADOS PARA OPERAR           00510000
//*           EN EL DIA.                                                00520000
//* ACTUALIZA TABLA : CUENTA.                                           00530000
//* PASO REINICIABLE POR RESTART                       ***CONTRATOS     00540000
//**********************************************************************00550000
//PUF14P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00560000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00570000
//SYSPRINT DD SYSOUT=*                                                  00580000
//SYSOUT   DD SYSOUT=*                                                  00590000
//SYSDBOUT DD SYSOUT=*                                                  00600000
//SYSUDUMP DD DUMMY                                                     00610000
//ZMLD04A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..ZMUFPD14,DISP=SHR              00620000
//ZMUK04R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00630000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF14T01),DISP=SHR                   00640000
//**********************************************************************00650000
//*               FIN DEL PROCEDIMIENTO ZMUFPD14                       *00660000
//**********************************************************************00670000
