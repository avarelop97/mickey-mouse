//ZMJLPZ49 PROC                                                         00000100
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
//* OPCION LINEA     = 967I, TRANSACCION = ZA33, PREFIJO = SIVAXMIG   *
//* SUBMITIDO POR    : CBJLPZ49                                       *
//*   CORRE ANTES DE   :  NINGUNO                                     * 00001500
//*   PERIODICIDAD     :  EVENTUAL (A PETICION DEL USUARIO)           * 00001600
//*   ELABORADO POR    :  A. ADUNA G. (GETRONICS)                     * 00001700
//*   FECHA            :  FEBRERO / 2007                              * 00001800
//********************************************************************* 00001900
//*                                                                     00002000
//**********************************************************************00002100
//*  PASO: 04    RECIBE LOS PARAMETROS DE LOS 2 ARCHIVOS A PROCESAR    *00002200
//*              &INT1=ARCHIVO MUV, &INT2=ARCHIVO DE AS400             *00002300
//*              ORDENA ARCHIVO DE AS400                               *00002400
//*  PROGRAMA:   SORT                                                  *00002500
//**********************************************************************00002600
//PJD49P04 EXEC PGM=ICEMAN                                              00002700
//SYSOUT   DD SYSOUT=*                                                  00002800
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.ACOPLAZ,DISP=SHR                   00002900
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.ACOPLAZ.SORTED,                       00003000
//         DISP=(NEW,CATLG,DELETE),                                     00003100
//         DCB=(DSORG=PS,RECFM=FB,LRECL=247,BLKSIZE=0),                 00003200
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00003300
//SYSPRINT DD SYSOUT=*                                                  00003700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD49T01),DISP=SHR                   00003800
//*                                                                     00003900
//**********************************************************************00004000
//*  PASO: 03    ORDENA ARCHIVO DE MUV                                 *00004100
//*  PROGRAMA:   SORT                                                  *00004200
//**********************************************************************00004300
//PJD49P03 EXEC PGM=ICEMAN,COND=(4,LT)                                  00004400
//SYSOUT   DD SYSOUT=*                                                  00004500
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.CNTL.MPLAZOS,DISP=SHR                 00004600
//SORTOUT  DD DSN=MXCP.ZM.TMP.MIG.MPLAZOS.SORTED,                       00004700
//         DISP=(NEW,CATLG,DELETE),                                     00004800
//         DCB=(DSORG=PS,RECFM=FB,LRECL=159,BLKSIZE=0),                 00004900
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            00005000
//SYSPRINT DD SYSOUT=*                                                  00005400
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJD49T02),DISP=SHR                   00005500
//*                                                                     00005600
//**********************************************************************00005700
//*  PASO: 02  CONCILIA LOS 2 ARCHIVOS Y GENERA REPORTE DE DIFERENCIAS *00005800
//*  PROGRAMA: ZM4DH049                                                *00005900
//**********************************************************************00006000
//PJD49P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006100
//ZMH00IA2 DD DSN=MXCP.ZM.TMP.MIG.ACOPLAZ.SORTED,DISP=SHR               00006200
//ZMH00IA3 DD DSN=MXCP.ZM.TMP.MIG.MPLAZOS.SORTED,DISP=SHR               00006300
//*ZMH00IR1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00006400
//ZMH00IR1 DD SYSOUT=*                                                  00006410
//SYSTSPRT DD SYSOUT=*                                                  00006500
//SYSPRINT DD SYSOUT=*                                                  00006600
//SYSOUT   DD SYSOUT=*                                                  00006700
//SYSDBOUT DD SYSOUT=*                                                  00006800
//SYSABOUT DD SYSOUT=*                                                  00006900
//SYSUDUMP DD DUMMY                                                     00007000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD49T03),DISP=SHR                   00007100
//*                                                                     00007200
