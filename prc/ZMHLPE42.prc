//ZMHLPE42 PROC                                                         00010000
//**********************************************************************00010100
//*                                                                    *00010200
//*                     C A S A   D E   B O L S A                      *00010300
//*                     =========================                      *00010400
//*                     <<  MERCADO DE VALORES >>                      *00010500
//*                                                                    *00010600
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00010700
//*                                                                    *00010800
//*   PROCEDIMIENTO    : ZMHLPE42                                      *00010900
//*                                                                    *00011000
//*   OBJETIVO         : MOSTRAR EL RESULTADO DEFINITIVO DE            *00011100
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
//PHL42P06 EXEC PGM=ZM3DG001,                                           00013000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00013100
//PI601765 DD DUMMY                                                     00013200
//SYSTSPRT DD SYSOUT=*                                                  00013300
//SYSPRINT DD SYSOUT=*                                                  00013400
//SYSOUT   DD SYSOUT=*                                                  00013500
//SYSDBOUT DD SYSOUT=*                                                  00013600
//SYSABOUT DD DUMMY                                                     00013700
//SYSUDUMP DD DUMMY                                                     00013800
//*                                                                     00013900
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE42,               00014000
//            DISP=(NEW,CATLG,DELETE),                                  00014100
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00014200
//            UNIT=3390,                                                00014300
//            SPACE=(CYL,(2,1),RLSE)                                    00014400
//*                                                                     00014500
//**********************************************************************00014600
//* PROGRAMA: ZM4EHA11                                                 *00014700
//* FUNCION:  ACTUALIZAR LAS TABLAS Y REPORTAR EL PROCESO PREVIO Y     *00014800
//*           DEFINITIVO DE AMORTIZACION DE OBLIGACIONES O DE PETROBONO*00014900
//**********************************************************************00015000
//PHL42P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00015100
//ZMHA11A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE42,DISP=SHR       00015200
//ZMHA11R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015400
//SYSTSPRT DD SYSOUT=*                                                  00015700
//SYSPRINT DD SYSOUT=*                                                  00015800
//SYSOUT   DD SYSOUT=*                                                  00015900
//SYSDBOUT DD SYSOUT=*                                                  00016000
//SYSABOUT DD SYSOUT=*                                                  00016100
//SYSUDUMP DD DUMMY                                                     00016200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL42T01),DISP=SHR                   00016300
//*                                                                     00016400
//**********************************************************************00016500
//* PROGRAMA: ZM4EJ104                                                 *00016600
//* FUNCION:  COMPRA AUTOMATICA SOBRE UN FONDO DE SOC. DE INV.         *00016700
//*           SOBRE LA BONIFICACION HECHA DEL EJERCICIO DE DERECHO:    *00016800
//*                    DIVIDENDOS, INTERESES Y AMORTIZACIONES.         *00016900
//**********************************************************************00017000
//PHL42P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00017100
//ZMJ104A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE42,DISP=SHR       00017200
//ZMJ104R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00017400
//SYSTSPRT DD SYSOUT=*                                                  00017700
//SYSPRINT DD SYSOUT=*                                                  00017800
//SYSOUT   DD SYSOUT=*                                                  00017900
//SYSDBOUT DD SYSOUT=*                                                  00018000
//SYSABOUT DD SYSOUT=*                                                  00018100
//SYSUDUMP DD DUMMY                                                     00018200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL42T02),DISP=SHR                   00018300
//*                                                                     00018400
//*-------------------------------------------------------------------- 00044000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00044100
//*-------------------------------------------------------------------- 00044200
//PHL42P03 EXEC PGM=MAILOPER,COND=(4,GE,PHL42P05),                      00044300
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          00044400
//             'SIVAXAMD(AMORTODF)TERMINO MAL.CONTESTAR SI',            00045000
//             'PARA TERMINAR')                                         00046000
//*-------------------------------------------------------------------- 00047000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00048000
//*-------------------------------------------------------------------- 00049000
//PHL42P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL42P04),                      00050000
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          00060000
//             'SIVAXAMD(AMORTODF)TERMINO MAL.CONTESTAR SI',            00070000
//             'PARA TERMINAR')                                         00080000
//*                                                                     00090000
//****************************************************************      00100000
//*                SE ADICIONA CONDICION                         *      00110000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00120000
//****************************************************************      00130000
//PHL42P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXAMD_IN_SEP_OK WDATE',   00140000
//         COND=(4,LT)                                                  00150000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00160000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00170000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00180000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00190000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00200000
//PRTDBG   DD  SYSOUT=*                                                 00210000
//SYSPRINT DD  DUMMY                                                    00220000
//SYSUDUMP DD  DUMMY                                                    00230000
//DAPRINT  DD  SYSOUT=*                                                 00240000
//DACNDIN  DD  DDNAME=SYSIN                                             00250000
//*                                                                     00260000
//****************************************************************      00270000
//*                SE ADICIONA CONDICION                         *      00280000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00290000
//****************************************************************      00300000
//PHL42P00 EXEC  PGM=CTMCND,                                            00310000
//         PARM='ADD COND BCLLND04_BCM_SIVA_OK WDATE',                  00311000
//         COND=(4,LT)                                                  00320000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00330000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00340000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00350000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00360000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00370000
//PRTDBG   DD  SYSOUT=*                                                 00380000
//SYSPRINT DD  DUMMY                                                    00390000
//SYSUDUMP DD  DUMMY                                                    00400000
//DAPRINT  DD  SYSOUT=*                                                 00410000
//DACNDIN  DD  DDNAME=SYSIN                                             00420000
//*                                                                     00430000
