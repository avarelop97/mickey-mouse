//ZMHCPD92 PROC                                                         00010001
//*-------------------------------------------------------------------* 00030000
//*                     C A S A   D E   B O L S A                     * 00040000
//*                     =========================                     * 00050000
//*                    << MERCADO DE CAPITALES >>                     * 00060000
//*                                                                   * 00070000
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (SIVA)          * 00080000
//*   JCL              :  BCHCND91                                    * 00100000
//*                                                                   * 00110000
//*   CADENA           :  CONTROL-M  -> JCL BCHCND91 -> PRC ZMHCPD92  * 00120001
//*                                                                   * 00130000
//*   OBJETIVO         :  GENERA UNA BITACORA EN LA BASE DE DATOS     * 00140000
//*                       ZMDT106  CON LA FECHA Y LA HORA REAL A LA   * 00210000
//*                       SE EJECUTO EL PROCESO.                      * 00211000
//*   ELABORADO POR    :  CDA-INFORMATICA (CABS).                     * 00220000
//*   FECHA            :  10/MAR/2014.                                * 00240000
//*                                                                   * 00250000
//*-------------------------------------------------------------------* 00251000
//*-------------------------------------------------------------------* 00252000
//*  PASO    : ZMPD9200                                               * 00530002
//*  OBJETIVO: PERMITIRA IDENTIFICAR LAS ORDENES GLOBALES RECIBIDAS DE* 00540000
//*            XPOC.                                                  * 00541000
//*  PROGRAMA: IKJEFT01/ZM4DH061.                                     * 00550000
//*-------------------------------------------------------------------* 00560000
//ZMPD9200 EXEC PGM=IKJEFT01                                            00580002
//*                                                                     00581000
//ZMH061A1 DD DSN=MXCP.ZM.FIX.E&EMP..MDC.ZM4DH061.PRORRGLO,             00610000
//            DISP=(NEW,CATLG,DELETE),                                  00620000
//            DCB=(LRECL=4187,RECFM=FB,BLKSIZE=0,DSORG=PS),             00630000
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00640000
//*                                                                     00641000
//SYSTSPRT DD SYSOUT=*                                                  00650000
//SYSPRINT DD SYSOUT=*                                                  00660000
//SYSOUT   DD SYSOUT=*                                                  00670000
//SYSDBOUT DD SYSOUT=*                                                  00680000
//SYSABOUT DD DUMMY                                                     00681000
//SYSUDUMP DD DUMMY                                                     00682000
//SYSIN    DD DUMMY                                                     00684000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPD9100),DISP=SHR                   00685000
//*                                                                     00690000
//*-------------------------------------------------------------------* 00690100
//*  PASO    : ZMPD9299                                               * 00692002
//*  OBJETIVO: INFORMARA LAS COMISIONES O IMPUESTOS CORRESPONDIENTES  * 00693000
//*            A CADA CONTRATO.                                       * 00694000
//*  PROGRAMA: IKJEFT01/ZM4DH062.                                     * 00695000
//*-------------------------------------------------------------------* 00695100
//ZMPD9299 EXEC PGM=IKJEFT01,COND=(4,LT)                                00697002
//*                                                                     00698000
//ZMH062A1 DD DSN=MXCP.ZM.FIX.E&EMP..MDC.ZM4DH062.COMISION,             00699000
//            DISP=(NEW,CATLG,DELETE),                                  00699100
//            DCB=(LRECL=573,RECFM=FB,BLKSIZE=0,DSORG=PS),              00699200
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00699300
//*                                                                     00699400
//SYSTSPRT DD SYSOUT=*                                                  00699500
//SYSPRINT DD SYSOUT=*                                                  00699600
//SYSOUT   DD SYSOUT=*                                                  00699700
//SYSDBOUT DD SYSOUT=*                                                  00699800
//SYSABOUT DD DUMMY                                                     00699900
//SYSUDUMP DD DUMMY                                                     00700000
//SYSIN    DD DUMMY                                                     00700100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPD9199),DISP=SHR                   00700200
//*                                                                     00700300
//*-------------------------------------------------------------------* 00700400
//*                           FIN ZMHCPD92                            * 00710001
//*-------------------------------------------------------------------* 00730000
