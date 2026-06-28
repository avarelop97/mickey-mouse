//ZMJLPEC3 PROC                                                         00001200
//********************************************************************* 00001300
//*                     C A S A   D E   B O L S A                     * 00001400
//*                     =========================                     * 00001500
//*                      SOCIEDADES DE INVERSION                      * 00001600
//*                                                                   * 00001700
//*   APLICACION       :  ZM@                                         * 00001800
//*                                                                   * 00001900
//*   JCL              :  CBJLNEC3                                    * 00002000
//*                                                                   * 00002100
//*   CADENA           :  INIDIA                                      * 00002200
//*                                                                   * 00002300
//*   OBJETIVO         :  CARGA AUTOMATICA DE FACTORES Y PRECIO FISC. * 00002400
//*                                                                   * 00002600
//*   CORRE DESPUES DE :  CBJLNEC1                                    * 00002700
//*                                                                   * 00002800
//*   CORRE ANTES   DE :  NINGUNO                                     * 00002900
//*                                                                   * 00003000
//*   PERIODICIDAD     :  DIARIA                                      * 00003100
//*                                                                   * 00003200
//*   ELABORADO POR    :  XM09014                                     * 00003300
//*                                                                   * 00003400
//*   FECHA            :  DICIEMBRE-2013                              * 00003500
//*                                                                   * 00003700
//********************************************************************* 00007300
//*         L O G    D E   M O D I F I C A C I O N E S                * 00007401
//*-------------------------------------------------------------------* 00007501
//*    MARCA      AUTOR    FECHA  DESCRIPCION                         * 00007601
//* ----------- --------- ------- ----------------------------------- * 00007701
//* FS-1.0.1-00  XMBB157  18OCT18 SE INTEGRAN LOS FACTORES DE FIBRAS  * 00007801
//*                               AL ARCHIVO DE INCIDENCIAS.          * 00007902
//*                               MXCP.ZM.FIX.FIS.FACPRE.D&FECHA..INCI* 00008002
//*                               POR TANTO SE INCREMENTA SU LONGITUD * 00008102
//*                               DE 118 A 156                        * 00008202
//*                                                                   * 00008302
//*-------------------------------------------------------------------* 00008303
//*    MARCA      AUTOR    FECHA  DESCRIPCION                         * 00008304
//* ----------- --------- ------- ----------------------------------- * 00008305
//* FS-1.0.2-00  XMBB157  14FEB19 SE INTEGRAN EL MANEJO DEL FACTOR DE * 00008306
//*                               ISR POR ACCIONES AL ARCHIVO.        * 00008307
//*                               MXCP.ZM.FIX.FIS.FACPRE.D&FECHA..INCI* 00008308
//*                               POR TANTO SE INCREMENTA SU LONGITUD * 00008309
//*                               DE 156 A 175                        * 00008310
//*                                                                   * 00008320
//*-------------------------------------------------------------------* 00008602
//*  PASO: 01      CARGA  DE LA TABLA DE FACTORES (FACTSOC)           * 00008702
//*                Y ACTUALIZA LA TABLA DE PRECIOS (PRECIO)           * 00008802
//********************************************************************* 00008902
//ZMPEC301 EXEC PGM=IKJEFT01,COND=(0,LT)                                00009002
//*                                                                     00009102
//ZMJC01E1 DD DSN=MXCP.ZM.FIX.FIS.FACPRE.D&FECHA,DISP=SHR               00009202
//*                                                                     00009302
//ZMJC01S1 DD DSN=MXCP.ZM.FIX.FIS.FACPRE.D&FECHA..INCI,                 00009402
//            DISP=(NEW,CATLG,DELETE),                                  00009502
//            DCB=(DSORG=PS,RECFM=FB,LRECL=175,BLKSIZE=0),              00009702
//            UNIT=3390,                                                00010002
//            SPACE=(CYL,(10,5),RLSE)                                   00010102
//*                                                                     00010202
//SYSTSPRT DD SYSOUT=*                                                  00010302
//SYSPRINT DD SYSOUT=*                                                  00010402
//SYSOUT   DD SYSOUT=*                                                  00010502
//SYSDBOUT DD SYSOUT=*                                                  00010602
//SYSABOUT DD SYSOUT=*                                                  00010702
//SYSUDUMP DD SYSOUT=*                                                  00011001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMEC3T02),DISP=SHR                   00020001
