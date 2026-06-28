//ZMJLPEA8 PROC                                                         00001201
//********************************************************************* 00001301
//*                     C A S A   D E   B O L S A                     * 00001400
//*                     =========================                     * 00001500
//*                    << MERCADO DE CAPITALES >>                     * 00001600
//*                                                                   * 00001700
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00001800
//*                                                                   * 00001900
//*   JCL              :  CBJLNEA8                                    * 00002001
//*                                                                   * 00002100
//*   CADENA           :  OPCION ZB7(1)-> JCL SIVAXAP0 -> PRC ZMJLPEA0* 00002201
//*                                                                   * 00002300
//*   OBJETIVO         :  CARGA AUTOMATICA DE PRECIOS (COVAF)         * 00002401
//*                                                                   * 00002600
//*   CORRE DESPUES DE :  SIVAXAP0                                    * 00002701
//*                                                                   * 00002800
//*   CORRE ANTES   DE :  NINGUNO                                     * 00002900
//*                                                                   * 00003000
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00003100
//*                                                                   * 00003200
//*   ELABORADO POR    :  EVERIS                                      * 00003301
//*                                                                   * 00003400
//*   FECHA            :  NOVIEMBRE/ 2007                             * 00003501
//*                                                                   * 00003600
//*                                                                   * 00003700
//********************************************************************* 00005300
//*  PASO: 03      FORMATEA EL ARCHIVO EN FORMATO XML A UN            * 00005401
//*                ARCHIVO SECUENCIAL                                 * 00005501
//********************************************************************* 00005600
//PJD08P03 EXEC PGM=ZM3DJA01                                            00005801
//*                                                                     00006001
//ZMJA0XE1 DD DSN=MXCP.ZM.FIX.SIN.PRECIO.D&FECHA,DISP=SHR               00006101
//ZMJA0XS1 DD DSN=MXCP.ZM.FIX.SIN.PRECIO.AUX,                           00006201
//            DISP=(NEW,CATLG,DELETE),                                  00006301
//            DCB=(LRECL=070,RECFM=FB,BLKSIZE=0,DSORG=PS),              00006401
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00006501
//SYSTSPRT DD SYSOUT=*                                                  00006601
//SYSPRINT DD SYSOUT=*                                                  00006701
//SYSOUT   DD SYSOUT=*                                                  00006801
//SYSDBOUT DD SYSOUT=*                                                  00006901
//SYSABOUT DD SYSOUT=*                                                  00007001
//SYSUDUMP DD SYSOUT=*                                                  00007101
//********************************************************************* 00007301
//*  PASO: 02      CARGA  DE LA TABLA DE PRECIOS                      * 00007401
//*                                                                   * 00007501
//********************************************************************* 00007601
//PJD08P02 EXEC PGM=IKJEFT01,COND=(0,LT)                                00007701
//*                                                                     00007901
//ZMJA05A1 DD DSN=MXCP.ZM.FIX.SIN.PRECIO.AUX,DISP=SHR                   00008001
//SYSTSPRT DD SYSOUT=*                                                  00008101
//SYSPRINT DD SYSOUT=*                                                  00008201
//SYSOUT   DD SYSOUT=*                                                  00008301
//SYSDBOUT DD SYSOUT=*                                                  00008401
//SYSABOUT DD SYSOUT=*                                                  00008501
//SYSUDUMP DD SYSOUT=*                                                  00008601
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA8T02),DISP=SHR                   00008701
//********************************************************************* 00008702
//*  PASO: 01      CORRECCION DE PRECIOS CERO                         * 00008703
//*                                                                   * 00008704
//********************************************************************* 00008705
//PJD08P01 EXEC PGM=IKJEFT01,COND=(0,LT)                                00008706
//*                                                                     00008707
//SYSTSPRT DD SYSOUT=*                                                  00008709
//SYSPRINT DD SYSOUT=*                                                  00008710
//SYSOUT   DD SYSOUT=*                                                  00008720
//SYSDBOUT DD SYSOUT=*                                                  00008730
//SYSABOUT DD SYSOUT=*                                                  00008740
//SYSUDUMP DD SYSOUT=*                                                  00008750
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA8T01),DISP=SHR                   00008760
//* FSW ITS - I                                                         00008761
//********************************************************************* 00008770
//*                                                                   * 00008771
//*  PASO: 00    IMPORTE DE LOS DISTRIBUIDORES DE FONDOS POR TERCEROS * 00008780
//*                                                                   * 00008790
//********************************************************************* 00008800
//PJD08P0A EXEC PGM=IKJEFT01,COND=(4,LT)                                00008900
//*                                                                     00009000
//SYSTSPRT DD SYSOUT=*                                                  00009100
//SYSPRINT DD SYSOUT=*                                                  00009200
//SYSOUT   DD SYSOUT=*                                                  00009300
//SYSDBOUT DD SYSOUT=*                                                  00009400
//SYSABOUT DD SYSOUT=*                                                  00009500
//SYSUDUMP DD SYSOUT=*                                                  00009600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA8T0A),DISP=SHR                   00009700
//* FSW ITS - F                                                         00009800
