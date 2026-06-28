//ZMJIPDA2 PROC                                                         00000100
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MERCADO DE CAPITALES >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00000700
//*                                                                   * 00000800
//*   JCL              :  CBJICDA2                                    * 00000900
//*                                                                   * 00001000
//*   CADENA           :  AL FINALIZAR EL INICIO DE DIA               * 00001100
//*                                                                   * 00001200
//*   OBJETIVO         :  GENERAR EL ARCHIVO CON LOS SALDOS INICIALES * 00001300
//*                       DE LOS FONDOS AL INICIO DE DIA              * 00001400
//*                                                                   * 00001500
//*   CORRE DESPUES DE :  CBJICD13                                    * 00001600
//*                       CBJICS14                                    * 00001700
//*   CORRE ANTES   DE :  NINGUNO                                     * 00001800
//*                                                                   * 00001900
//*   PERIODICIDAD     :  DIARIO                                      * 00002000
//*                                                                   * 00002100
//*   ELABORADO POR    :  BBVA BANCOMER                               * 00002200
//*                                                                   * 00002300
//*   FECHA            :  MAYO     / 2008                             * 00002400
//*                                                                   * 00002500
//**********************************************************************00004500
//*  PASO: 01     GENERA EL ARCHIVO CON LOS INSTRUMENTOS VIGENTES      *00004600
//*               EN SIVA                                              *00004700
//*  PJIA2P01                          SIVA MUV             ZM4DJA21   *00004900
//**********************************************************************00005000
//PJIA2P01 EXEC PGM=IKJEFT01                                            00005100
//*                                                                     00005200
//ZMJA21A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.INSTRUME,                   00006500
//            DISP=(NEW,CATLG,DELETE),                                  00006600
//            SPACE=(CYL,(40,20),RLSE),                                 00006700
//            DCB=(DSORG=PS,RECFM=FB,LRECL=090,BLKSIZE=0),              00006800
//            UNIT=3390                                                 00006900
//*                                                                     00007100
//SYSTSPRT DD SYSOUT=*                                                  00007200
//SYSPRINT DD SYSOUT=*                                                  00007300
//SYSOUT   DD SYSOUT=*                                                  00007400
//SYSDBOUT DD SYSOUT=*                                                  00007500
//SYSABOUT DD SYSOUT=*                                                  00007600
//SYSUDUMP DD SYSOUT=*                                                  00007700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJIA2T01),DISP=SHR                   00007800
//*                                                                     00007900
//**********************************************************************00008000
//*  PASO: 02     GENERA EL ARCHIVO CON LA POSICION DE LOS FONDOS      *00009000
//*               EN SIVA                                              *00010000
//*  PJIA2P02                          SIVA MUV             ZM4DJA20   *00020000
//**********************************************************************00030000
//PJIA2P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*                                                                     00050000
//ZMJA20A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.POSICION,                   00060000
//            DISP=(NEW,CATLG,DELETE),                                  00070000
//            SPACE=(CYL,(40,20),RLSE),                                 00080000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),              00090000
//            UNIT=3390                                                 00100000
//*                                                                     00110000
//SYSTSPRT DD SYSOUT=*                                                  00120000
//SYSPRINT DD SYSOUT=*                                                  00130000
//SYSOUT   DD SYSOUT=*                                                  00140000
//SYSDBOUT DD SYSOUT=*                                                  00150000
//SYSABOUT DD SYSOUT=*                                                  00160000
//SYSUDUMP DD SYSOUT=*                                                  00170000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJIA2T02),DISP=SHR                   00180000
//*                                                                     00190000
