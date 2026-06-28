//ZMHFIZ19 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                     C A S A   D E   B O L S A                      *00000400
//*                     =========================                      *00000500
//*                     <<<   V A L O R E S   >>>                      *00000600
//*                                                                    *00000700
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000800
//*                                                                    *00000900
//*   PROCEDIM. :  ZMHFIZ19.                                           *00001000
//*                                                                    *00001100
//*   OBJETIVO  :  COMPROBANTE DE INVERSION DE PLAZOS (BATCH)          *00001200
//*                                                                    *00001300
//*                                                                    *00001400
//*   CORRE ANTES DE  :                                                *00001500
//*                                                                    *00001600
//*   CORRE DESPUES DE:           ZMHFIP19                             *00001700
//*                                                                    *00001800
//*   PERIODICIDAD    :                                                *00001900
//*                                                                    *00002000
//*   ELABORADO POR   :  EVERIS                                        *00002100
//*                                                                    *00002200
//*   FECHA:  MAYO 2009.                                               *00002300
//*                                                                    *00002400
//*   MODIFICA       :                                                 *00002500
//*   FECHA          :                                                 *00002600
//**********************************************************************00002700
//**********************************************************************00002800
//* PASO    : ZMHAFI03                                                 *00002900
//* PROGRAMA: IKJEFT01 / ZM4CFI35                                      *00003000
//* FUNCION : EJECUTA EL PROGRAMA ZM4CFI35 PARA VALIDAR PARAMETRO      *00003100
//*           DE MESA ASSET O MESA PRECIOS                             *00003200
//**********************************************************************00003300
//ZMHAFI03 EXEC PGM=IKJEFT01                                            00003400
//*                                                                     00003500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFID23),DISP=SHR                   00003600
//SYSTSPRT DD SYSOUT=*                                                  00003700
//SYSPRINT DD SYSOUT=*                                                  00003800
//SYSOUT   DD SYSOUT=*                                                  00003900
//SYSDBOUT DD SYSOUT=*                                                  00004000
//SYSABOUT DD DUMMY                                                     00004100
//SYSUDUMP DD DUMMY                                                     00004200
//*                                                                     00004300
//**********************************************************************00004400
// IF (ZMHAFI03.RC<4) THEN                                              00004500
//**********************************************************************00004600
//*-------------------------------------------------------------------* 00004700
//* PROGRAMA: ZM4CFI19                                                * 00004800
//* FUNCION:      COMPROBANTE DE INVERSION DE PLAZOS (BATCH)          * 00004900
//*-------------------------------------------------------------------* 00005000
//ZMHAFI01 EXEC PGM=IKJEFT01                                            00005100
//ZMHFIENT DD DSN=MXC&AMB..ZM.FIX.EBMC.ZMLCFI19,DISP=SHR                00005200
//ZMHFISAL DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00005300
//*                                                                     00005400
//SYSTSPRT DD SYSOUT=*                                                  00005500
//SYSPRINT DD SYSOUT=*                                                  00005600
//SYSOUT   DD SYSOUT=*                                                  00005700
//SYSDBOUT DD SYSOUT=*                                                  00005800
//SYSABOUT DD SYSOUT=*                                                  00005900
//SYSUDUMP DD DUMMY                                                     00006000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFID19),DISP=SHR                   00006100
//*                                                                     00006200
//*--------------------------------------------------------------------*00006300
// ENDIF                                                                00006400
//*--------------------------------------------------------------------*00006500
//**********************************************************************00006600
// IF (ZMHAFI03.RC=4) THEN                                              00006700
//**********************************************************************00006800
//*-------------------------------------------------------------------* 00006900
//* PROGRAMA: ZM4CFI19                                                * 00007000
//* FUNCION:      COMPROBANTE DE INVERSION DE PLAZOS (BATCH)          * 00007100
//*-------------------------------------------------------------------* 00007200
//ZMHAFI05 EXEC PGM=IKJEFT01                                            00007300
//ZMHFIENT DD DSN=MXC&AMB..ZM.FIX.EBMC.ZMLCFI19,DISP=SHR                00007400
//ZMHFISAL DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00007500
//*                                                                     00007600
//SYSTSPRT DD SYSOUT=*                                                  00007700
//SYSPRINT DD SYSOUT=*                                                  00007800
//SYSOUT   DD SYSOUT=*                                                  00007900
//SYSDBOUT DD SYSOUT=*                                                  00008000
//SYSABOUT DD SYSOUT=*                                                  00008100
//SYSUDUMP DD DUMMY                                                     00008200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFID19),DISP=SHR                   00008300
//*                                                                     00008400
//*--------------------------------------------------------------------*00008500
// ENDIF                                                                00008600
//*--------------------------------------------------------------------*00008700
