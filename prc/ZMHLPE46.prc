//ZMHLPE46 PROC                                                         00001000
//**********************************************************************00001100
//*                                                                    *00001200
//*                     C A S A   D E   B O L S A                      *00001300
//*                     =========================                      *00001400
//*                     <<  MERCADO DE VALORES >>                      *00001500
//*                                                                    *00001600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00001700
//*                                                                    *00001800
//*   PROCEDIMI.:  ZMHLPE46                                            *00001900
//*                                                                    *00002000
//*   OBJETIVO  :  DEFINITIVO DE CORTE DE CUPON DE RENTA VARIABLE      *00002100
//*                (OPCION 778)                                        *00002200
//*                                                                    *00002300
//*   CORRE ANTES DE  :  NINGUNO                                       *00002400
//*                                                                    *00002500
//*   CORRE DESPUES DE:  NINGUNO                                       *00002600
//*                                                                    *00002700
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00002800
//*                                                                    *00002900
//*   FECHA     :  JULIO 03, 2003                                      *00003000
//*                                                                    *00003100
//*   AUTOR     :  (GESFOR) GUADALUPE OROZCO OROZCO                    *00003200
//*                                                                    *00003300
//**********************************************************************00003400
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO    00003500
//**********************************************************************00003600
//PHL46P08 EXEC PGM=ZM3DG001,                                           00003700
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00003800
//PI601765 DD DUMMY                                                     00003900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00004000
//SYSPRINT DD SYSOUT=*                                                  00005000
//SYSOUT   DD SYSOUT=*                                                  00006000
//SYSDBOUT DD SYSOUT=*                                                  00007000
//SYSABOUT DD DUMMY                                                     00007100
//SYSUDUMP DD DUMMY                                                     00007200
//*                                                                     00007300
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE46,               00007400
//            DISP=(NEW,PASS),                                          00007700
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00007800
//            UNIT=3390,                                                00007900
//            SPACE=(CYL,(2,1),RLSE)                                    00008000
//**********************************************************************00008100
//* PASO: PHL46P03                                                     *00008200
//* OBJETIVO: PASO PARA COPIAR EL ARCHIVO DE PARAMETROS CICS           *00008300
//**********************************************************************00008400
//PHL46P07 EXEC PGM=IDCAMS,COND=(4,LT)                                  00008500
//PI601765 DD DUMMY                                                     00008600
//SYSPRINT DD SYSOUT=*                                                  00008700
//SYSOUT   DD SYSOUT=*                                                  00008800
//SYSUT1   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE46,               00008900
//            DISP=(OLD,PASS)                                           00009000
//SYSUT2   DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,                        00009200
//            DISP=(NEW,CATLG,CATLG),                                   00009300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00009400
//            UNIT=3390,                                                00009500
//            SPACE=(CYL,(2,1),RLSE)                                    00009600
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHL46T01),DISP=SHR                  00009700
//*                                                                     00009900
//**********************************************************************00010000
//* PROGRAMA: ZM4EH926                                                 *00010100
//* FUNCION:  DEFINITIVO DE CORTE DE CUPON RENTA VARIABLE              *00010200
//**********************************************************************00010300
//PHL46P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00011000
//ZMH926A1 DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,                        00012300
//            DISP=SHR                                                  00013000
//ZMH926R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00014000
//ZMH926RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015000
//*                                                                     00018000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00018100
//SYSPRINT DD SYSOUT=*                                                  00018200
//SYSOUT   DD SYSOUT=*                                                  00018300
//SYSDBOUT DD SYSOUT=*                                                  00018400
//SYSABOUT DD SYSOUT=*                                                  00018500
//SYSUDUMP DD DUMMY                                                     00018600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL46T02),DISP=SHR                   00018700
//*                                                                     00018900
//**********************************************************************00680000
//*       REPORTE DEFINITIVO DE CORTE DE CUPON DE RENTA VARIABLE PARA   00690000
//*       PROMOCION                                                     00700000
//*       PROGRAMA: ZM4EH975                     ANTES VIB975E          00710000
//**********************************************************************00720000
//PHL46P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00730000
//ZMH975A1 DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,                        00752000
//            DISP=SHR                                                  00760000
//ZMH975R1 DD SYSOUT=*                                                  00770000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00780000
//SYSPRINT DD SYSOUT=*                                                  00790000
//SYSOUT   DD SYSOUT=*                                                  00800000
//SYSDBOUT DD SYSOUT=*                                                  00810000
//SYSABOUT DD SYSOUT=*                                                  00820000
//SYSUDUMP DD DUMMY                                                     00830000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHL46T03),DISP=SHR                  00831000
//**********************************************************************00850000
//* PROGRAMA: ZM4EH431                                                 *00860000
//* FUNCION:  REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON     *00870000
//*           MERCADO DE CAPITALES                                     *00880000
//**********************************************************************00890000
//PHL46P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00900000
//ZMH431A1 DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,                        00912000
//            DISP=SHR                                                  00920000
//ZMH431R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00930000
//ZMH431R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00940000
//*                                                                     00950000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00960000
//SYSPRINT DD SYSOUT=*                                                  00970000
//SYSOUT   DD SYSOUT=*                                                  00980000
//SYSDBOUT DD SYSOUT=*                                                  00990000
//SYSABOUT DD SYSOUT=*                                                  01000000
//SYSUDUMP DD DUMMY                                                     01010000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHL46T04),DISP=SHR                  01011000
//*                                                                     01030000
//**********************************************************************01031000
//* PASO: PHL46P03                                                     *01032000
//* OBJETIVO: PASO PARA BORRAR EL ARCHIVO DE PARAMETROS CICS           *01033000
//**********************************************************************01034000
//PHL46P03 EXEC PGM=IDCAMS,COND=(4,LT)                                  01035000
//SYSPRINT DD  SYSOUT=*                                                 01036000
//SYSOUT   DD  SYSOUT=*                                                 01037000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHL46T05),DISP=SHR                  01038000
//*                                                                     01039000
//*-------------------------------------------------------------------- 01040000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          01050000
//*-------------------------------------------------------------------- 01060000
//PHL46P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL46P06),                      01070000
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          01080000
//             'SIVAXDRV(ZMHLPE46)TERMINO MAL.CONTESTAR SI',            01090000
//             'PARA TERMINAR')                                         01100000
//****************************************************************      01110000
//*                SE ADICIONA CONDICION                         *      01120000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      01130000
//****************************************************************      01140000
//PHL46P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXDRV_IN_SEP_OK WDATE',   01150000
//         COND=(4,LT)                                                  01160000
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 01170000
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 01180000
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               01190000
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 01200000
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 01210000
//PRTDBG   DD   SYSOUT=*                                                01220000
//SYSPRINT DD   DUMMY                                                   01230000
//SYSUDUMP DD   DUMMY                                                   01240000
//DAPRINT  DD   SYSOUT=*                                                01250000
//DACNDIN  DD   DDNAME=SYSIN                                            01260000
//SYSIN    DD   DUMMY                                                   01270000
//*                                                                     01280000
