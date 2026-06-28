//ZMJLPP49 PROC                                                         00000100
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                        -> OPCION 9 (PLAZOS)                       * 00000400
//*                     =========================                     * 00000500
//*                    << MIGRACION DE SUCURSALES >>                  * 00000600
//*   APLICACION       :  MODULO UNICO DE VALORES CASA BOLSA          * 00000700
//*   JCL              :  SIVAXMIG                                    * 00000800
//*   CADENA           :  MENU CONCILIACION -> OPCION 9 (PLAZOS)      * 00000900
//*   OBJETIVO         :  COMPARA ARCHIVOS DE CLIENTES MUV VS. AS400  * 00001000
//*   REPORTE             GENERA UN REPORTE DE DIFERENCIAS ENCONTRADAS* 00001100
//*   CORRE            :  ENVIADO A EJECUCION DESDE PANTALLA DE       * 00001200
//*                       USUARIO EN LA APLICACION DE CONCILIACION    * 00001300
//*                       OPCION 967 (SIVA)                           * 00001400
//*   OPCION LINEA     = 967I, TRANSACCION = ZA33, PREFIJO = SIVAXMIG * 00001501
//*   SUBMITIDO POR    :  SIVAXMIG                                    * 00001601
//*   CORRE ANTES DE   :  NINGUNO                                     * 00001700
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           * 00001800
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     * 00001900
//*   FECHA            :  FEBRERO / 2007                              * 00002000
//********************************************************************* 00003000
//* PASO: 01 : ACTIVA LA CONDICION EN CONTROL-M PARA INDICAR QUE       *00007400
//*            TERMINO O.K. ESTE PROCESO                               *00007500
//**********************************************************************00007600
//PJD49P01 EXEC  PGM=CTMCND,PARM='ADD COND  CBJLPZ49_IN_OK WDATE',      00007700
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
