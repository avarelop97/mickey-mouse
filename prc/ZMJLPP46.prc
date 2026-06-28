//ZMJLPP46 PROC
//**********************************************************************
//* PASO: 01 : ACTIVA LA CONDICION EN CONTROL-M PARA INDICAR QUE       *
//*            TERMINO O.K. ESTE PROCESO                               *
//**********************************************************************
//PJD46P01 EXEC  PGM=CTMCND,PARM='ADD COND  CBJLPZ46_IN_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*********************************************************************
//*                     C A S A   D E   B O L S A                     *
//*                       -> OPCION 6 (REPORTOS)                      *
//*                     =========================                     *
//*                    << MIGRACION DE SUCURSALES >>                  *
//*   APLICACION       :  MODULO UNICO DE VALORES CASA BOLSA          *
//*   JCL              :  SIVAXMIG                                    *
//*   CADENA           :  MENU CONCILIACION -> OPCION 6 (REPORTOS)    *
//*   OBJETIVO         :  COMPARA ARCHIVOS DE CLIENTES MUV VS. AS400  *
//*   REPORTE             GENERA UN REPORTE DE DIFERENCIAS ENCONTRADAS*
//*   CORRE            :  ENVIADO A EJECUCION DESDE PANTALLA DE       *
//*                       USUARIO EN LA APLICACION DE CONCILIACION    *
//*                       OPCION 967 (SIVA)                           *
//*   OPCION LINEA     = 967E, TRANSACCION = ZA33, PREFIJO = SIVAXMIG *
//*   SUBMITIDO POR    : CBJLPZ46                                     *
//*   CORRE ANTES DE   :  NINGUNO                                     *
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           *
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     *
//*   FECHA            :  FEBRERO / 2007                              *
//*********************************************************************
