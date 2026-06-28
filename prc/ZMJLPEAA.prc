//ZMJLPEAA PROC                                                         00000100
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MERCADO DE CAPITALES >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00000700
//*                                                                   * 00000800
//*   JCL              :  CBJLNEAA                                    * 00000900
//*                                                                   * 00001000
//*   CADENA           :  DESPUES DEL CIERRE DE SOCIEDADES DE INVERSION 00001100
//*                                                                   * 00001200
//*   OBJETIVO         :  ACTUALIZACION DE LAS OEPRACIONES CONTENIDAS * 00001300
//*                       EN LA TABLA ZMDT703 CON EL PRECIO DEL DIA   * 00001400
//*                                                                   * 00001500
//*   CORRE DESPUES DE :  CBJCND07                                    * 00001600
//*                                                                   * 00001700
//*   CORRE ANTES   DE :  NINGUNO                                     * 00001800
//*                                                                   * 00001900
//*   PERIODICIDAD     :  DIARIO                                      * 00002000
//*                                                                   * 00002100
//*   ELABORADO POR    :  BBVA BANCOMER                               * 00002200
//*                                                                   * 00002300
//*   FECHA            :  FEBRERO  / 2008                             * 00002400
//*                                                                   * 00002500
//**********************************************************************00004500
//*  PASO: 02     REALIZA LA ACTUALIZACION DE LAS OPERACIONES DE SOCIE *00004600
//*               DADES DE INVERSION DE LA TABLA ZMDT703 CON EL PRECIO *00004700
//*               DEL DIA                                              *00004800
//*  PJLAAP02                          SIVA MUV             ZM4DJA08   *00004900
//**********************************************************************00005000
//PJLAAP02 EXEC PGM=IKJEFT01                                            00005100
//*                                                                     00005200
//SYSTSPRT DD SYSOUT=*                                                  00006500
//SYSPRINT DD SYSOUT=*                                                  00006600
//SYSOUT   DD SYSOUT=*                                                  00006700
//SYSDBOUT DD SYSOUT=*                                                  00006800
//SYSABOUT DD SYSOUT=*                                                  00006900
//SYSUDUMP DD SYSOUT=*                                                  00007000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLAAT02),DISP=SHR                   00007100
//*                                                                     00007200
//**********************************************************************00007400
//*  PASO: 01     GENERACION DE ARCHIVO PARA EL CRUCE CON BOLSA        *00007500
//*               CON LAS OPERACIONES Y EL NUMERO DE OPERACIONES ASI   *00007600
//*               COMO EL PRECIO CONTABLE                              *00007700
//*  PJLAAP01                          SIVA MUV             ZM4DJA10   *00007800
//**********************************************************************00007900
//PJLAAP01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008000
//*                                                                     00009000
//ZMJA10A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CRUCE.VH,                   00010000
//            DISP=(NEW,CATLG,DELETE),                                  00010100
//            SPACE=(CYL,(20,10),RLSE),                                 00010200
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),              00010300
//            UNIT=3390                                                 00010400
//ZMJA10A2 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CRUCE.VN,                   00011000
//            DISP=(NEW,CATLG,DELETE),                                  00011100
//            SPACE=(CYL,(20,10),RLSE),                                 00011200
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),              00011300
//            UNIT=3390                                                 00011400
//SYSTSPRT DD SYSOUT=*                                                  00012000
//SYSPRINT DD SYSOUT=*                                                  00020000
//SYSOUT   DD SYSOUT=*                                                  00030000
//SYSDBOUT DD SYSOUT=*                                                  00040000
//SYSABOUT DD SYSOUT=*                                                  00050000
//SYSUDUMP DD SYSOUT=*                                                  00060000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLAAT01),DISP=SHR                   00070000
//*                                                                     00080000
//**********************************************************************00090000
//********************************************************************* 00100000
//*  PASO: 01    GEENRA ARCHIVO PARA CONCILIACION                     * 00110000
//*                                                                   * 00120000
//********************************************************************* 00130000
//PJLA2P0B EXEC PGM=IKJEFT01,COND=(4,LT)                                00140000
//*                                                                     00150000
//ZMCO01E1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA1,DISP=SHR           00160000
//*ZMCO01A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CONCIL.D%%FECHA,           00170001
//ZMCO01A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CONCIL,                     00170002
//            DISP=(NEW,CATLG,DELETE),                                  00180000
//            DCB=(LRECL=093,RECFM=FB,BLKSIZE=0,DSORG=PS),              00190000
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00200000
//SYSTSPRT DD SYSOUT=*                                                  00210000
//SYSPRINT DD SYSOUT=*                                                  00220000
//SYSOUT   DD SYSOUT=*                                                  00230000
//SYSDBOUT DD SYSOUT=*                                                  00240000
//SYSABOUT DD SYSOUT=*                                                  00250000
//SYSUDUMP DD SYSOUT=*                                                  00260000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA2T0B),DISP=SHR                   00270000
//********************************************************************* 00280000
