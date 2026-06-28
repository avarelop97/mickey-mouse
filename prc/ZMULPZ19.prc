//ZMULPZ19 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<<     SEGURIDAD     >>>                      *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMULPZ19                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  REPORTE DE CREACION DE USUARIOS NO AUTORIZADOS      *00110000
//*                                                                    *00120000
//*   CORRE ANTES DE  :  NINGUNO                                       *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE:  NINGUNO                                       *00150000
//*                                                                    *00160000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00170000
//*                                                                    *00180000
//**********************************************************************00190000
//**                      LOG DE MODIFICACIONES                        *00200000
//**********************************************************************00210000
//**MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                     *00220000
//**-------------------------------------------------------------------*00230000
//**      |          |       |        |                                *00240000
//**********************************************************************00250000
//*        REPORTE DE APLICACIONES SUBMITIDORAS           ZM4IU719      00470000
//*                                                                     00480000
//*******************************************************************   00490000
//*                                                                     00500000
//PJU19P01  EXEC PGM=IKJEFT01                                           00510004
//*                                                                     00520000
//ZMU720P1 DD DSN=MXCP.ZM.WKF.SEG.EMP.ZMULPE19,DISP=SHR                 00530003
//ZMU720R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00551004
//*                                                                     00560000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00570000
//SYSPRINT DD SYSOUT=*                                                  00580000
//SYSOUT   DD SYSOUT=*                                                  00590000
//SYSDBOUT DD SYSOUT=*                                                  00600000
//SYSABOUT DD SYSOUT=*                                                  00610000
//SYSUDUMP DD DUMMY                                                     00620000
//*                                                                     00630000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJU19T01),DISP=SHR                   00640003
//**********************************************************************00820004
//*                 F I N   Z M U L P Z 1 9                            *00830004
//**********************************************************************00840004
