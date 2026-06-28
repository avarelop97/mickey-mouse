//ZMULPE11 PROC                                                         00001000
//*--------------------------------------------------------------------*00002000
//*                                                                    *00003000
//*                     C A S A   D E   B O L S A                      *00004000
//*                     =========================                      *00005000
//*                     <<  C O N T R A T O S  >>                      *00006000
//*                                                                    *00007000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00008000
//*                                                                    *00009000
//*   PROCEDIMIENTO    : ZMULPE11                                      *00009100
//*                                                                    *00009200
//*   OBJETIVO         : REPORTE DE ALTAS                              *00009300
//*                      ( OPCION 485 )                                *00009400
//*                                                                    *00009500
//*   CORRE ANTES DE   : NINGUNO                                       *00009600
//*                                                                    *00009700
//*   CORRE DESPUES DE : NINGUNO                                       *00009800
//*                                                                    *00009900
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00010000
//*                                                                    *00010100
//*   FECHA            : JUNIO 27, 2003                                *00010200
//*                                                                    *00010300
//*   AUTOR            : GETRONICS - MEXICO                            *00010400
//*                                                                    *00010500
//*--------------------------------------------------------------------*00010600
//*--------------------------------------------------------------------*00010700
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00010800
//*--------------------------------------------------------------------*00010900
//PUL11P04 EXEC PGM=ZM3DG001,                                           00011000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00011100
//PI601765 DD DUMMY                                                     00011200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00011300
//SYSPRINT DD SYSOUT=*                                                  00011400
//SYSOUT   DD SYSOUT=*                                                  00011500
//SYSDBOUT DD SYSOUT=*                                                  00011600
//SYSABOUT DD DUMMY                                                     00011700
//SYSUDUMP DD DUMMY                                                     00011800
//*                                                                     00011900
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMULPE11,               00012000
//            DISP=(NEW,CATLG,DELETE),                                  00012100
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00012200
//            UNIT=3390,                                                00012300
//            SPACE=(CYL,(2,1),RLSE)                                    00012400
//*                                                                     00014100
//*--------------------------------------------------------------------*00014200
//* PROGRAMA: ZM4DG628                                                 *00014300
//* FUNCION:  REPORTE DE ALTAS                                         *00014400
//*--------------------------------------------------------------------*00014500
//PUL11P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00014600
//*                                                                     00014700
//ZMG628A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMULPE11,DISP=SHR       00012000
//*                                                                     00014900
//ZMG628R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00015200
//SYSPRINT DD SYSOUT=*                                                  00015300
//SYSOUT   DD SYSOUT=*                                                  00015400
//SYSDBOUT DD SYSOUT=*                                                  00015500
//SYSABOUT DD SYSOUT=*                                                  00015600
//SYSUDUMP DD DUMMY                                                     00015700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL11T01),DISP=SHR                   00015800
//*
//*--------------------------------------------------------------------*00020200
//*               AVISO EN CASO DE ERROR A LA CONSOLA                  *00020300
//*--------------------------------------------------------------------*00020400
//PUL11P02 EXEC PGM=MAILOPER,COND=(4,GE,PUL11P03),                      00020500
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE PROCESO ',          00020600
//             'SIVAXALT(ZMULPE11)TERMINO MAL.CONTESTAR SI',            00020700
//             'PARA TERMINAR')                                         00020800
//*                                                                     00018400
//*--------------------------------------------------------------------*00021000
//*            CONDICION PARA SER TOMADA POR CONTROL-D                 *00021100
//*--------------------------------------------------------------------*00021200
//PUL11P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXALT_IN_SEP_OK WDATE',   00021300
//         COND=(4,LT)                                                  00021400
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*                                                00021900
//SYSPRINT DD   DUMMY                                                   00022000
//SYSUDUMP DD   DUMMY                                                   00022100
//DAPRINT  DD   SYSOUT=*                                                00022200
//DACNDIN  DD   DDNAME=SYSIN                                            00022300
