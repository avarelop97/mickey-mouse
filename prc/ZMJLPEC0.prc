//ZMJLPEC0 PROC                                                         00000100
//**** **************************************************************** 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MERCADO DE CAPITALES >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :  MODULO UNICO DE VALORES BANCA PATRIMONIAL   * 00000700
//*                                                                   * 00000800
//*   JCL              :  SIVAXZIA                                    * 00000900
//*                                                                   * 00001000
//*   CADENA           :  ZB7 OP. 3  -> JCL SIVAXZIA -> PRC ZMJLPEC0  * 00001100
//*                                                                   * 00001200
//*   OBJETIVO         :  ENCENDER CONDICION SIVAXZIA_OK PARA LA      * 00001300
//*                       CARGA MANUAL DE DIVIDENDOS Y PRECIO FISCAL  * 00001400
//*                                                                   * 00001500
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION 4 (ZAA7) P/USUARIO* 00001600
//*                                                                   * 00001700
//*   CORRE ANTES   DE :  CBJLNEC2                                    * 00001800
//*                                                                   * 00001900
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00002000
//*                                                                   * 00002100
//*   ELABORADO POR    :  XM09014                                     * 00002200
//*                                                                   * 00002300
//*   FECHA            :  DICIEMBRE/ 2013                             * 00002400
//*                                                                   * 00002500
//********************************************************************* 00002600
//********************************************************************* 00002700
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO   * 00002800
//********************************************************************* 00002900
//PJEA0P10 EXEC PGM=ZM3DG001,                                           00003000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00003100
//SYSTSPRT DD SYSOUT=*                                                  00003200
//SYSPRINT DD SYSOUT=*                                                  00003300
//SYSOUT   DD SYSOUT=*                                                  00003400
//SYSDBOUT DD SYSOUT=*                                                  00003500
//SYSABOUT DD DUMMY                                                     00003600
//SYSUDUMP DD DUMMY                                                     00003700
//*                                                                     00003800
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEC0,                   00003900
//            DISP=(NEW,CATLG,DELETE),                                  00004000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00004100
//            UNIT=3390,                                                00004200
//            SPACE=(CYL,(2,1),RLSE)                                    00004300
//*                                                                     00004400
//**********************************************************************00004500
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROLM PARA QUE SEA LANZADO EL *00004600
//*            JCL CBJLNEC2: CARGA AUTOMATICA DE PRECIOS               *00004700
//**********************************************************************00004800
//*PJEA0P01 EXEC  PGM=CTMCND,PARM='ADD COND     SIVAXZIA_OK     WDATE', 00004900
//*         COND=(4,LT)                                                 00005000
//**                                                                    00005100
//*STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00005200
//*DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00005300
//*         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00005400
//*DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00005500
//*DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00005600
//**                                                                    00005700
//*PRTDBG   DD   SYSOUT=*                                               00005800
//*SYSPRINT DD   DUMMY                                                  00005900
//*SYSUDUMP DD   DUMMY                                                  00006000
//*DAPRINT  DD   SYSOUT=*                                               00006100
//**                                                                    00006200
//*--------------------------------------------------------------------*00006300
//*   PASO    :    PJEA0P00                                            *00006400
//*   PROGRAMA:    IOACND                                              *00006500
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR DATAX    *00006600
//*--------------------------------------------------------------------*00006700
//PJEA0P00 EXEC PGM=IOACND,COND=(4,LT),                                 00006800
//         PARM='ADD COND CBXCRX_ZMJLPEC000 WDATE'                      00006900
//*                                                                     00007000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00007100
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00007200
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00007300
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00007400
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00007500
//PRTDBG   DD SYSOUT=*                                                  00007600
//SYSPRINT DD DUMMY                                                     00007700
//SYSUDUMP DD DUMMY                                                     00007800
//DAPRINT  DD SYSOUT=*                                                  00007900
//DACNDIN  DD DDNAME=SYSIN                                              00008000
//*                                                                     00008100
