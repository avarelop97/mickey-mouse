//ZMHLPE41 PROC                                                         00010000
//**********************************************************************00010100
//*                                                                    *00010200
//*                     C A S A   D E   B O L S A                      *00010300
//*                     =========================                      *00010400
//*                     <<  MERCADO DE VALORES >>                      *00010500
//*                                                                    *00010600
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00010700
//*                                                                    *00010800
//*   PROCEDIMIENTO    : ZMHLPE41                                      *00010900
//*                                                                    *00011000
//*   OBJETIVO         : MOSTRAR EL RESULTADO PRELIMINAR DE            *00011100
//*                      AMORTIZACION DE OBLIGACIONES                  *00011200
//*                                                                    *00011300
//*   CORRE ANTES DE   : NINGUNO                                       *00011400
//*                                                                    *00011500
//*   CORRE DESPUES DE : NINGUNO                                       *00011600
//*                                                                    *00011700
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *00011800
//*                                                                    *00011900
//*   FECHA            : MAYO     21, 2003                             *00012000
//*                                                                    *00012100
//*   AUTOR            : FERNANDO CABALLERO ROMAN (ASATECK)            *00012200
//*                                                                    *00012300
//*                                                                    *00012400
//**********************************************************************00012500
//*                                                                    *00012600
//**********************************************************************00012700
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00012800
//**********************************************************************00012900
//PHL41P05 EXEC PGM=ZM3DG001,                                           00013000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00013100
//PI601765 DD DUMMY                                                     00013200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00013300
//SYSPRINT DD SYSOUT=*                                                  00013400
//SYSOUT   DD SYSOUT=*                                                  00013500
//SYSDBOUT DD SYSOUT=*                                                  00013600
//SYSABOUT DD DUMMY                                                     00013700
//SYSUDUMP DD DUMMY                                                     00013800
//*                                                                     00013900
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE41,               00014000
//            DISP=(NEW,PASS),                                          00014100
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00014200
//            UNIT=3390,                                                00014300
//            SPACE=(CYL,(2,1),RLSE)                                    00014400
//*                                                                     00014500
//**********************************************************************00014600
//* PROGRAMA: ZM4EHA11                                                 *00014700
//* FUNCION:  ACTUALIZAR LAS TABLAS Y REPORTAR EL PROCESO PREVIO Y     *00014800
//*           DEFINITIVO DE AMORTIZACION DE OBLIGACIONES O DE PETROBONO*00014900
//**********************************************************************00015000
//PHL41P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00015100
//ZMHA11A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE41,               00015200
//            DISP=(OLD,PASS)                                           00015300
//ZMHA11R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00015700
//SYSPRINT DD SYSOUT=*                                                  00015800
//SYSOUT   DD SYSOUT=*                                                  00015900
//SYSDBOUT DD SYSOUT=*                                                  00016000
//SYSABOUT DD SYSOUT=*                                                  00016100
//SYSUDUMP DD DUMMY                                                     00016200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL41T01),DISP=SHR                   00016300
//*                                                                     00016400
//**********************************************************************00016500
//* PROGRAMA: ZM4EH431                                                 *00016600
//* FUNCION:  REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON     *00016700
//*           MERCADO DE CAPITALES                                     *00016800
//**********************************************************************00016900
//PHL41P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00017000
//ZMH431A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE41,               00017100
//            DISP=(OLD,PASS)                                           00017200
//ZMH431R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00017300
//ZMH431R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00017400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00017600
//SYSPRINT DD SYSOUT=*                                                  00017700
//SYSOUT   DD SYSOUT=*                                                  00017800
//SYSDBOUT DD SYSOUT=*                                                  00017900
//SYSABOUT DD SYSOUT=*                                                  00018000
//SYSUDUMP DD DUMMY                                                     00018100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL41T02),DISP=SHR                   00018200
//*                                                                     00018300
//**********************************************************************00018400
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00018500
//**********************************************************************00018600
//PHL41P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL41P03),                      00018700
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          00018800
//             'SIVAXAOP(ZMHLPE41)TERMINO MAL.CONTESTAR SI',            00018900
//             'PARA TERMINAR')                                         00019000
//*                                                                     00019100
//****************************************************************      00019200
//*                SE ADICIONA CONDICION                         *      00019300
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00019400
//****************************************************************      00019500
//PHL41P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXAOP_IN_SEP_OK WDATE',   00019600
//         COND=(4,LT)                                                  00019700
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00019800
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00019900
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00020000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00030000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00040000
//PRTDBG   DD  SYSOUT=*                                                 00050000
//SYSPRINT DD  DUMMY                                                    00060000
//SYSUDUMP DD  DUMMY                                                    00070000
//DAPRINT  DD  SYSOUT=*                                                 00080000
//DACNDIN  DD  DDNAME=SYSIN                                             00090000
//*                                                                     00100000
