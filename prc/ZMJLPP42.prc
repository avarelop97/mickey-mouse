//ZMJLPP42 PROC
//**********************************************************************
//* PASO: 01 : ACTIVA LA CONDICION EN CONTROL-M PARA INDICAR QUE       *
//*            TERMINO O.K. ESTE PROCESO                               *
//**********************************************************************
//PJD42P01 EXEC  PGM=CTMCND,PARM='ADD COND  CBJLPZ42_IN_OK WDATE',
//         COND=(4,LT)
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
//*                      -> OPCION 2 (POSICIONES)                     *
//*                     =========================                     *
//*                    << MIGRACION DE SUCURSALES >>                  *
//*   APLICACION       :  MODULO UNICO DE VALORES CASA BOLSA          *
//*   JCL              :  SIVAXMIG                                    *
//*   CADENA           :  MENU CONCILIACION -> OPCION 2 (POSICIONES)  *
//*   OBJETIVO         :  COMPARA ARCHIVOS DE CLIENTES MUV VS. AS400  *
//*   REPORTE             GENERA UN REPORTE DE DIFERENCIAS ENCONTRADAS*
//*   CORRE            :  ENVIADO A EJECUCION DESDE PANTALLA DE       *
//*                       USUARIO EN LA APLICACION DE CONCILIACION    *
//*                       OPCION 967 (SIVA)                           *
//*   OPCION LINEA     = 967B, TRANSACCION = ZA33, PREFIJO = SIVAXMIG *
//*   SUBMITIDO POR    :  SIVAXMIG                                     *
//*   CORRE ANTES DE   :  NINGUNO                                     *
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           *
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     *
//*   FECHA            :  FEBRERO / 2007                              *
//**********************************************************************
