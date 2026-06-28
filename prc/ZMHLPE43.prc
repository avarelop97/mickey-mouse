//ZMHLPE43 PROC                                                         00001000
//*--------------------------------------------------------------------*00002000
//*                                                                    *00003000
//*                     C A S A   D E   B O L S A                      *00004000
//*                     =========================                      *00005000
//*                     <<  MERCADO DE VALORES >>                      *00006000
//*                                                                    *00007000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00008000
//*                                                                    *00009000
//*   PROCEDIMIENTO    : ZMHLPE43                                      *00009100
//*                                                                    *00009200
//*   OBJETIVO         : REPORTE PREVIO DE EJERCICIO DE TITULOS        *00009300
//*                      OPCIONALES ( WARRANTS ) ( OPCION 805 )        *00009400
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
//PHL43P04 EXEC PGM=ZM3DG001,REGION=0M,                                 00011200
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00011300
//PI601765 DD DUMMY                                                     00011400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00011500
//SYSPRINT DD SYSOUT=*                                                  00011600
//SYSOUT   DD SYSOUT=*                                                  00011700
//SYSDBOUT DD SYSOUT=*                                                  00011800
//SYSABOUT DD DUMMY                                                     00011900
//SYSUDUMP DD DUMMY                                                     00012000
//*                                                                     00012100
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE43,               00012200
//            DISP=(NEW,PASS),                                          00012300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00012400
//            UNIT=3390,                                                00012500
//            SPACE=(CYL,(2,1),RLSE)                                    00012600
//*                                                                     00014100
//*--------------------------------------------------------------------*00014200
//* PROGRAMA: ZM4DGJ79                                                 *00014300
//* FUNCION:  REPORTE PRELIMINAR DE WARRANTS                           *00014400
//*--------------------------------------------------------------------*00014500
//PHL43P03 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)                      00014600
//*                                                                     00014700
//ZMGJ79A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE43,               00014804
//            DISP=(OLD,PASS)                                           00014904
//*                                                                     00015004
//ZMGJ79R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015104
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00015200
//SYSPRINT DD SYSOUT=*                                                  00015300
//SYSOUT   DD SYSOUT=*                                                  00015400
//SYSDBOUT DD SYSOUT=*                                                  00015500
//SYSABOUT DD SYSOUT=*                                                  00015600
//SYSUDUMP DD DUMMY                                                     00015700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL43T01),DISP=SHR                   00015800
//*-------------------------------------------------------------------- 00015900
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00016000
//*-------------------------------------------------------------------- 00017000
//PHL43P02  EXEC PGM=MAILOPER,COND=(4,GE,PHL43P03),                     00018000
//         PARM=('/AVISAR A SOPROD QUE PROCESO ZMHLPE43',               00018100
//             ' TERMINO MAL.CONTESTAR SI PARA TERMINAR')               00018200
//****************************************************************      00018400
//*                SE ADICIONA CONDICION                         *      00018500
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00018600
//****************************************************************      00018700
//PHL43P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXEWA_IN_SEP_OK WDATE',   00018800
//         COND=(4,LT)                                                  00018900
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00019000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00019100
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00019200
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00019300
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00019400
//PRTDBG   DD SYSOUT=*                                                  00019500
//SYSPRINT DD DUMMY                                                     00019600
//SYSUDUMP DD DUMMY                                                     00019700
//DAPRINT  DD SYSOUT=*                                                  00019800
//DACNDIN  DD DDNAME=SYSIN                                              00019900
//SYSIN    DD DUMMY                                                     00020000
//*                                                                     00030000
