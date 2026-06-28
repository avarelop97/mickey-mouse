//ZMJLPP50 PROC                                                         00000100
//**********************************************************************00003000
//* PASO: 0A : ACTIVA LA CONDICION EN CONTROL-M PARA INDICAR QUE       *00051400
//*            TERMINO O.K. ESTE PROCESO                               *00051500
//**********************************************************************00051600
//PJD50P0A EXEC  PGM=CTMCND,PARM='ADD COND  CBJLPZ50_IN_OK WDATE'       00051700
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00051900
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00052000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00052100
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00052200
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00052300
//PRTDBG   DD SYSOUT=*                                                  00052400
//SYSPRINT DD DUMMY                                                     00052500
//SYSUDUMP DD DUMMY                                                     00052600
//DAPRINT  DD SYSOUT=*                                                  00052700
//DACNDIN  DD DDNAME=SYSIN                                              00052800
//********************************************************************* 00052902
//*                     C A S A   D E   B O L S A                     * 00053002
//*                     =========================                     * 00053102
//*                    << MIGRACION DE SUCURSALES >>                  * 00053202
//*   APLICACION       :  MODULO UNICO DE VALORES CASA BOLSA          * 00053302
//*   JCL              :  SIVAXMIG                                    * 00053402
//*   CADENA           :  MENU CONCILIACION -> OPC.10 (ORDENAMIENTOS) * 00053502
//*   OBJETIVO         :  ORDENA TODOS LOS ARCHIVOS DE MUV Y AS400    * 00053602
//*                       Y LOS TRANSMITE A UN SERVIDOR               * 00053702
//*   REPORTE          :  NINGUNO                                     * 00053802
//*   CORRE            :  ENVIADO A EJECUCION DESDE PANTALLA DE       * 00053902
//*                       USUARIO EN LA APLICACION DE CONCILIACION    * 00054002
//*                       OPCION 967 (SIVA)                           * 00054102
//*   OPCION LINEA     = 967J, TRANSACCION = ZA33, PREFIJO = SIVAXMIG * 00054202
//*   SUBMITIDO POR    : SIVAXMIG                                     * 00054302
//*   CORRE ANTES DE   :  NINGUNO                                     * 00054402
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           * 00054502
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     * 00054602
//*   FECHA            :  MARZO /2007                                 * 00054702
//**********************************************************************00055000
