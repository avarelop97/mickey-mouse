//ZMJLPZ16 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<< MERCADO DE TESORERIA >>>                   *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMJLPZ16 (CBJLPZ16)                                 *00090000
//*                                                                    *00100000
//*   ANTES     :  SIVAXCRE PRC ZMJLPE16                               *00101000
//*                                                                    *00102000
//*   OBJETIVO  :  REPORTE DE CONTRATOS POR RANGO DE EFECTIVO          *00110000
//*                                                                    *00120000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00170000
//*                                                                    *00180000
//*   MODIFICO        : OSCAR URBANO F. (AZERTIA).                     *00181000
//*   FECHA           : OCTUBRE 2008.                                  *00182000
//**********************************************************************00190000
//********************************************************************* 00540000
//*        CONTRATOS POR RANGO DE EFECTIVO DE SUCURSALES              * 00550000
//*                                                      -ZM4EJ756-   * 00551000
//********************************************************************* 00560000
//PJL16P03  EXEC PGM=IKJEFT01,COND=(4,LT)                               00570000
//*                                                                     00590000
//ZMG756A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE16,DISP=SHR             00600000
//ZMG798A1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00610000
//*                                                                     00650000
//SYSTSPRT DD SYSOUT=*                                                  00660000
//SYSPRINT DD SYSOUT=*                                                  00670000
//SYSOUT   DD SYSOUT=*                                                  00680000
//SYSDBOUT DD SYSOUT=*                                                  00690000
//SYSABOUT DD SYSOUT=*                                                  00700000
//SYSUDUMP DD DUMMY                                                     00710000
//*                                                                     00720000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL16T01),DISP=SHR                   00730000
//*                                                                     00925800
//********************************************************************* 00925900
//*                   ---    IEBFR14    ---                           * 00926000
//*        BORRA ARCHIVO DE PASO POR SUCURSAL (PARAMETROS)            * 00927000
//*                                                                   * 00928000
//********************************************************************* 00929000
//PJL16P02 EXEC PGM=IEFBR14,                                            00930000
//         COND=(04,LT)                                                 00940000
//*                                                                     00950000
//ARCHPA   DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE16,                     00960000
//            DISP=(OLD,DELETE,DELETE)                                  00970000
//*                                                                     00980000
//SYSTSPRT DD SYSOUT=*                                                  00990000
//SYSPRINT DD SYSOUT=*                                                  01000000
//SYSOUT   DD SYSOUT=*                                                  01010000
//SYSDBOUT DD SYSOUT=*                                                  01020000
//SYSABOUT DD DUMMY                                                     01020100
//SYSUDUMP DD DUMMY                                                     01020200
//*                                                                     01020300
//****************************************************************      01020400
//*                SE ADICIONA CONDICION                         *      01020500
//*                PARA QUE SEA TOMADA POR TRANSFER              *      01020600
//****************************************************************      01020700
//PJL16P01 EXEC  PGM=CTMCND,PARM='ADD COND CBJLPZ16_OK WDATE',          01020800
//         COND=(4,LT)                                                  01020900
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01021004
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01022000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01022100
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01022200
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01022300
//PRTDBG   DD SYSOUT=*                                                  01022400
//SYSPRINT DD DUMMY                                                     01022500
//SYSUDUMP DD DUMMY                                                     01022600
//DAPRINT  DD SYSOUT=*                                                  01022700
//DACNDIN  DD DDNAME=SYSIN                                              01022800
//**********************************************************************01022900
//*        TERMINA PROCESO ZMJLPZ16 SIVA MULTIEMPRESA                  *01023000
//**********************************************************************01024000
