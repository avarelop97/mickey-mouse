//ZMJLPP48 PROC                                                         00000100
//********************************************************************* 00003000
//* PASO: 01 : ACTIVA LA CONDICION EN CONTROL-M PARA INDICAR QUE       *00007400
//*            TERMINO O.K. ESTE PROCESO                               *00007500
//**********************************************************************00007600
//PJD48P01 EXEC  PGM=CTMCND,PARM='ADD COND  CBJLPZ48_IN_OK WDATE',      00007700
//         COND=(4,LT)                                                  00007800
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00007900
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00008000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00008100
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00008200
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00008300
//PRTDBG   DD SYSOUT=*                                                  00008400
//SYSPRINT DD DUMMY                                                     00008500
//SYSUDUMP DD DUMMY                                                     00008600
//DAPRINT  DD SYSOUT=*                                                  00008700
//DACNDIN  DD DDNAME=SYSIN                                              00008800
//*                     C A S A   D E   B O L S A                     * 00009002
//*                     -> OPCION 8 (MOVTOS.X LIQ)                    * 00010002
//*                     =========================                     * 00020002
//*                    << MIGRACION DE SUCURSALES >>                  * 00030002
//*   APLICACION       :  MODULO UNICO DE VALORES CASA BOLSA          * 00040002
//*   JCL              :  SIVAXMIG                                    * 00050002
//*   CADENA           :  MENU CONCILIACION -> OPCION 8 (MOVTOS.X LIQ)* 00060002
//*   OBJETIVO         :  COMPARA ARCHIVOS DE CLIENTES MUV VS. AS400  * 00070002
//*   REPORTE             GENERA UN REPORTE DE DIFERENCIAS ENCONTRADAS* 00080002
//*   CORRE            :  ENVIADO A EJECUCION DESDE PANTALLA DE       * 00090002
//*                       USUARIO EN LA APLICACION DE CONCILIACION    * 00100002
//*                       OPCION 967 (SIVA)                           * 00110002
//*   OPCION LINEA     = 967H, TRANSACCION = ZA33, PREFIJO = SIVAXMIG * 00120002
//*   SUBMITIDO POR    : CBJLPZ48                                     * 00130002
//*   CORRE ANTES DE   :  NINGUNO                                     * 00140002
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           * 00150002
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     * 00160002
//*   FECHA            :  FEBRERO / 2007                              * 00170002
//********************************************************************* 00180002
