//ZMJLPE16 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<< MERCADO DE TESORERIA >>>                   *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMJLPE16                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  REPORTE DE CONTRATOS POR RANGO DE EFECTIVO          *00110000
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
//**MODXXX|0001-01-01|USUARIO|PASO    |DESCRIPCION DE LA MODIFICACION  *00240000
//**      |2003-24-02|IDCEX08|PJL16P0A|TRANSFER                        *00250000
//**      |2005-05-11|A.G.R. |        |SE ELIMINAN LA FORMAS DE IMPRE--*00252000
//**      |          |AZERTIA|        |SION, SE ENVIA A CTROL-D        *00253000
//**********************************************************************00260000
//*                                                                    *00270000
//**********************************************************************00280000
//*                                                                    *00290000
//*                  MODULO DE TESORERIA                               *00300000
//*            REPORTE DE CONTRATOS POR RANGO DE EFECTIVO              *00310000
//*                                                                    *00320000
//**********************************************************************00330000
//*                                                                     00340000
//********************************************************************* 00350000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO   * 00360000
//********************************************************************* 00370000
//PJL16P04 EXEC PGM=ZM3DG001,                                           00380000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00390000
//SYSTSPRT DD SYSOUT=*                                                  00410000
//SYSPRINT DD SYSOUT=*                                                  00420000
//SYSOUT   DD SYSOUT=*                                                  00430000
//SYSDBOUT DD SYSOUT=*                                                  00440000
//SYSABOUT DD DUMMY                                                     00450000
//SYSUDUMP DD DUMMY                                                     00460000
//*                                                                     00470000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE16,               00480000
//           DISP=(NEW,CATLG,DELETE),                                   00490000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00500000
//           UNIT=3390,                                                 00510000
//           SPACE=(CYL,(2,1),RLSE)                                     00520000
//*                                                                     00530000
//********************************************************************* 00540000
//*        CONTRATOS POR RANGO DE EFECTIVO DE SUCURSALES              * 00550000
//*                                                      -ZM4EJ756-   * 00551000
//********************************************************************* 00560000
//PJL16P03  EXEC PGM=IKJEFT01,COND=(4,LT)                               00570000
//*                                                                     00590000
//ZMG756A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE16,DISP=SHR       00600000
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
//*                                                                     00740000
//*                                                                     00925800
//********************************************************************* 00925900
//*                   ---    IEBFR14    ---                           * 00926000
//*        BORRA ARCHIVO DE PASO POR SUCURSAL (PARAMETROS)            * 00927000
//*                                                                   * 00928000
//********************************************************************* 00929000
//PJL16P02 EXEC PGM=IEFBR14,                                            00930000
//         COND=(04,LT)                                                 00940000
//*                                                                     00950000
//ARCHPA   DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE16,               00960000
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
//PJL16P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCRE_IN_OK WDATE',       01020800
//         COND=(4,LT)                                                  01020900
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01021000
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
//*        TERMINA PROCESO ZMJLPE16 SIVA MULTIEMPRESA                  *01023000
//**********************************************************************01024000
