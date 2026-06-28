//ZMHLPE44 PROC                                                         00001000
//*--------------------------------------------------------------------*00002000
//*                                                                    *00003000
//*                     C A S A   D E   B O L S A                      *00004000
//*                     =========================                      *00005000
//*                     <<  MERCADO DE VALORES >>                      *00006000
//*                                                                    *00007000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00008000
//*                                                                    *00009000
//*   PROCEDIMIENTO    : ZMHLPE44                                      *00009100
//*                                                                    *00009200
//*   OBJETIVO         : REPORTE DEFINITIVO DE EJERCICIO DE TITULOS    *00009300
//*                      OPCIONALES ( WARRANTS ) ( OPCION 810 )        *00009400
//*                                                                    *00009700
//*   CORRE ANTES DE   : NINGUNO                                       *00009800
//*                                                                    *00009900
//*   CORRE DESPUES DE : NINGUNO                                       *00010000
//*                                                                    *00010100
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00010200
//*                                                                    *00010300
//*   FECHA            : JUNIO 03, 2003                                *00010400
//*                                                                    *00010500
//*   AUTOR            : GETRONICS - MEXICO                            *00010600
//*                                                                    *00010700
//*--------------------------------------------------------------------*00010800
//*--------------------------------------------------------------------*00010900
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00011000
//*--------------------------------------------------------------------*00011100
//PHL44P04 EXEC PGM=ZM3DG001,                                           00011200
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00011300
//PI601765 DD DUMMY                                                     00011400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00011500
//SYSPRINT DD SYSOUT=*                                                  00011600
//SYSOUT   DD SYSOUT=*                                                  00011700
//SYSDBOUT DD SYSOUT=*                                                  00011800
//SYSABOUT DD DUMMY                                                     00011900
//SYSUDUMP DD DUMMY                                                     00012000
//*                                                                     00012100
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE44,               00012200
//            DISP=(NEW,PASS),                                          00012300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00012400
//            UNIT=3390,                                                00012500
//            SPACE=(CYL,(2,1),RLSE)                                    00012600
//*                                                                     00014100
//*--------------------------------------------------------------------*00014200
//* PROGRAMA: ZM4DGJ79                                                 *00014300
//* FUNCION:  REPORTE DEFINITIVO DE WARRANTS                           *00014400
//*--------------------------------------------------------------------*00014500
//PHL44P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00014600
//*                                                                     00014700
//ZMGJ79A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE44,               00014804
//            DISP=(OLD,PASS)                                           00014904
//*                                                                     00015104
//ZMGJ79R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015204
//ZMGA52R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015304
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00015404
//SYSPRINT DD SYSOUT=*                                                  00015504
//SYSOUT   DD SYSOUT=*                                                  00015604
//SYSDBOUT DD SYSOUT=*                                                  00015704
//SYSABOUT DD SYSOUT=*                                                  00015804
//SYSUDUMP DD DUMMY                                                     00015904
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL43T01),DISP=SHR                   00016004
//*                                                                     00017004
//CHNGDUMP DD SYSOUT=*                                                  00019100
//*-------------------------------------------------------------------- 00019200
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00019300
//*-------------------------------------------------------------------- 00019400
//PHL44P02  EXEC PGM=MAILOPER,COND=(4,GE,PHL44P03),                     00019500
//         PARM=('/AVISAR A SOPROD QUE PROCESO ZMHLPE44',               00019600
//             ' TERMINO MAL.CONTESTAR SI PARA TERMINAR')               00019700
//****************************************************************      00019900
//*                SE ADICIONA CONDICION                         *      00020000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00021000
//****************************************************************      00022000
//PHL44P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXEW1_IN_SEP_OK WDATE',   00023000
//         COND=(4,LT)                                                  00024000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00025000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00026000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00027000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00030000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00040000
//PRTDBG   DD SYSOUT=*                                                  00050000
//SYSPRINT DD DUMMY                                                     00060000
//SYSUDUMP DD DUMMY                                                     00070000
//DAPRINT  DD SYSOUT=*                                                  00080000
//DACNDIN  DD DDNAME=SYSIN                                              00090000
//SYSIN    DD DUMMY                                                     00091000
//*                                                                     00100000
