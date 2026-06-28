//ZMJLPEA9 PROC                                                         00000135
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MERCADO DE CAPITALES >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00000700
//*                                                                   * 00000800
//*   JCL              :  SIVAXAP9                                    * 00000933
//*                                                                   * 00001000
//*   CADENA           :  OPCION ZA9 -> JCL SIVAXAP9 -> PRC ZMJLPEA9  * 00001134
//*                                                                   * 00001200
//*   OBJETIVO         :  ENCENDER CONDICION SIVAXAP9_OK              * 00001332
//*                                                                   * 00001500
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION 2 (ZAA7) P USUARIO* 00001604
//*                                                                   * 00001700
//*   CORRE ANTES   DE :  NINGUNO                                     * 00001800
//*                                                                   * 00001900
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00002000
//*                                                                   * 00002100
//*   ELABORADO POR    :  EVERIS                                      * 00002204
//*                                                                   * 00002300
//*   FECHA            :  NOVIEMBRE/ 2007                             * 00002404
//*                                                                   * 00002500
//********************************************************************* 00011038
//********************************************************************* 00011138
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO   * 00011238
//********************************************************************* 00011338
//PJL01P10 EXEC PGM=ZM3DG001,                                           00011441
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00011442
//SYSTSPRT DD SYSOUT=*                                                  00011638
//SYSPRINT DD SYSOUT=*                                                  00011738
//SYSOUT   DD SYSOUT=*                                                  00011838
//SYSDBOUT DD SYSOUT=*                                                  00011938
//SYSABOUT DD DUMMY                                                     00012038
//SYSUDUMP DD DUMMY                                                     00012138
//*                                                                     00012238
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA9,                   00012341
//            DISP=(NEW,CATLG,DELETE),                                  00012438
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00012538
//            UNIT=3390,                                                00012638
//            SPACE=(CYL,(2,1),RLSE)                                    00012738
//*                                                                     00012838
//**********************************************************************00012938
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROLM PARA QUE SEA LANZADO EL *00013032
//*            JCL CBJLNEA2: CARGA DE PRECIOS VALOR NORMAL.            *00013132
//**********************************************************************00014006
//PJLA7P01 EXEC  PGM=CTMCND,PARM='ADD COND     SIVAXAP9_OK     WDATE',  00015036
//         COND=(4,LT)                                                  00016039
//*                                                                     00016327
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00016328
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00016329
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00016330
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00016340
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00016350
//*                                                                     00016927
//PRTDBG   DD   SYSOUT=*                                                00017027
//SYSPRINT DD   DUMMY                                                   00017127
//SYSUDUMP DD   DUMMY                                                   00017227
//DAPRINT  DD   SYSOUT=*                                                00017327
//DACNDIN  DD   DDNAME=SYSIN                                            00017427
