//ZMGIPD13 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                    <<  PROCESO PROMOTORES  >>                      *00060000
//*                                                                    *00070000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080000
//*                                                                    *00090000
//*   OBJETIVO  :  SUSTITUIR AL VLD365 DEL AS/400 SOLO DIARIO          *00100000
//*                                                                    *00110000
//*   REALIZACION : HECTOR PAZ CONCHA (ASATECK)                        *00120000
//*                                                                    *00130000
//*   FECHA:  ENERO 2003                                               *00140000
//*                                                                    *00150000
//**********************************************************************00160000
//*                                                                    *00180100
//**********************************************************************00240000
//* PROGRAMA: ZM3DG001                                                 *00250000
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE CSP Y GRABA EN ARCHIVO *00260000
//**********************************************************************00280000
//PGI13P11 EXEC PGM=ZM3DG001,                                           00290001
//         PARM=('&EMP',' ',' ',' ',)                                   00300000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPD13,                      00380000
//            DISP=(NEW,CATLG,DELETE),                                  00390000
//            SPACE=(CYL,(2,1),RLSE),                                   00400000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00410000
//            UNIT=3390                                                 00420000
//SYSTSPRT DD SYSOUT=*                                                  00420100
//SYSPRINT DD SYSOUT=*                                                  00420200
//SYSOUT   DD SYSOUT=*                                                  00420300
//SYSDBOUT DD SYSOUT=*                                                  00420400
//SYSABOUT DD SYSOUT=*                                                  00420500
//SYSUDUMP DD DUMMY                                                     00420600
//**********************************************************************00440001
//*                    * ZM4DQQ03 *                                    *00450001
//* OBJETIVO : BALANCEO DE CUENTAS DE EFECTIVO VS CUENTAS DE VALORES   *00460001
//*            DE CUSTODIA INTERNACIONAL.                              *00470001
//*                                                                    *00500001
//* PASO REINICIABLE POR RESTART.                                      *00510001
//**********************************************************************00530001
//PGI13P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00550001
//SYSTSPRT DD SYSOUT=*                                                  00550003
//SYSPRINT DD SYSOUT=*                                                  00550004
//SYSOUT   DD SYSOUT=*                                                  00550005
//SYSDBOUT DD SYSOUT=*                                                  00550006
//SYSABOUT DD SYSOUT=*                                                  00550007
//SYSUDUMP DD DUMMY                                                     00550008
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGI13T11),DISP=SHR                  00620002
//**********************************************************************00620003
//*                    * ZM4DJ201 *                                    *00620004
//* OBJETIVO: GENERA REPORTE DE MOVIMIENTOS . SDI SOC. DE INVERSION    *00660000
//*                                                                    *00660100
//* PASO REINICIABLE POR RESTART Y RERUN DE CONTROL-M,R                *00670000
//**********************************************************************00670100
//PGI13P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00690000
//SYSTSPRT DD SYSOUT=*                                                  00690100
//SYSPRINT DD SYSOUT=*                                                  00690200
//SYSOUT   DD SYSOUT=*                                                  00690300
//SYSDBOUT DD SYSOUT=*                                                  00690400
//SYSABOUT DD SYSOUT=*                                                  00690410
//SYSUDUMP DD DUMMY                                                     00690600
//ZMJ201R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00760000
//ZMJ201R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00770000
//ZMJ201P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPD13,DISP=SHR              00790000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI13T09),DISP=SHR                   00800000
//**********************************************************************00800100
//*                    * ZM4DJ004 *                                    *00800200
//* OBJETIVO: AJUSTAR EL PRECIO DE LAS EMISORAS QUE MANEJAN FESTIVOS   *00800400
//*           MEXICO Y DE OTROS PAISES CUANDO ES FESTIVO EN EL OTRO    *00800500
//*           PAIS Y ES HABIL EN MEXICO. SDI SOC. DE INVERSION         *00800510
//*                                                                    *00800520
//* PASO REINICIABLE POR RESTART Y RERUN DE CONTROL-M,R                *00800600
//**********************************************************************00800700
//PGI13P9A EXEC PGM=IKJEFT01,COND=(4,LT)                                00890000
//SYSTSPRT DD SYSOUT=*                                                  00900003
//SYSPRINT DD SYSOUT=*                                                  00910000
//SYSOUT   DD SYSOUT=*                                                  00920000
//SYSDBOUT DD SYSOUT=*                                                  00930000
//SYSABOUT DD SYSOUT=*                                                  00940000
//SYSUDUMP DD DUMMY                                                     00950000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI13T10),DISP=SHR                   00960000
//**********************************************************************00960100
//*                    * ZM4DJ245 *                                    *00960200
//* OBJETIVO: TRANSFIERE MOVIMIENTOS DE OPERAVA                        *00960300
//*           EXTRAE DE OPERAVA LOS REGISTROS DONDE CLAVE DE OPERACION *00960400
//*           SEA 301 Y 401 PARA QUE SEAN PROCESADAS DURANTE INTERFAZ  *00960500
//*           DE INICIO DE DIA DEL AS/400.                             *00960600
//**********************************************************************00960800
//PGI13P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                01050000
//PSOCIN   DD DSN=MXCP.ZM.FIX.SIN.E&EMP..OPESACP,                       01090000
//            DISP=(NEW,CATLG,DELETE),                                  01100000
//            SPACE=(CYL,(10,5),RLSE),                                  01110000
//            DCB=(RECFM=FB,LRECL=94,BLKSIZE=0,DSORG=PS),               01120000
//            UNIT=3390                                                 01130000
//ZMJ245P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPD13,DISP=SHR              01130100
//ZMB239R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01140000
//SYSTSPRT DD SYSOUT=*                                                  01140100
//SYSPRINT DD SYSOUT=*                                                  01140200
//SYSOUT   DD SYSOUT=*                                                  01150000
//SYSDBOUT DD SYSOUT=*                                                  01160000
//SYSABOUT DD SYSOUT=*                                                  01160100
//SYSUDUMP DD DUMMY                                                     01180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI13T08),DISP=SHR                   01200000
//**********************************************************************01200100
//*                    *  CTMCND  *                                    *01200200
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "PTEPED01_IN" PARA QUE SE  *01200300
//*           EJECUTE EL PROCESO ESTADISTICO YA QUE PUEDE CORRER EN PA-*01200400
//*           RALELO CON ESTE A PARTIR DE ESTE PASO                    *01200500
//*                                                                    *01200600
//* PASO REINICIABLE POR RESTART                                       *01200610
//**********************************************************************01200700
//PGI13P07 EXEC PGM=CTMCND,PARM='ADD COND PTEPED01&CND.IN &FECHA',      01290000
//         COND=(4,LT)                                                  01300000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01310000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01320000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01330000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01340000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01350000
//PRTDBG   DD SYSOUT=*                                                  01360000
//SYSPRINT DD DUMMY                                                     01370000
//SYSUDUMP DD DUMMY                                                     01380000
//DAPRINT  DD SYSOUT=*                                                  01390000
//DACNDIN  DD DDNAME=SYSIN                                              01400000
//**********************************************************************01400100
//*                    *  IDCAMS  *                                    *01400200
//* OBJETIVO: BORRAR EL ARCHIVO QUE CONTIENE EL REPORTE PARA EL BANCO  *01400300
//*                                                                    *01400500
//* PASO REINICIABLE POR RESTART                                       *01400600
//**********************************************************************01400700
//PGI13P06 EXEC PGM=IDCAMS,COND=(4,LT)                                  01470000
//SYSPRINT DD SYSOUT=*                                                  01480000
//SYSOUT   DD SYSOUT=*                                                  01490000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGI13T06),DISP=SHR                   01500000
//**********************************************************************01500100
//*                    * ZM4DGP02 *                                    *01500200
//* OBJETIVO: GENERAR REPORTE DE POSICION Y SALDO AL DIA               *01500300
//*                                                                    *01500400
//**********************************************************************01500600
//PGI13P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                01560000
//ZMGP02P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPD13,DISP=SHR              01560100
//ZMGP02R1 DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGIPD13.ARCH2,                01640000
//            DISP=(NEW,CATLG,DELETE),                                  01650000
//            SPACE=(CYL,(10,5),RLSE),                                  01660000
//            DCB=(LRECL=147,RECFM=FBA,BLKSIZE=0,DSORG=PS),             01670000
//            UNIT=3390                                                 01680000
//SYSTSPRT DD SYSOUT=*                                                  01690100
//SYSPRINT DD SYSOUT=*                                                  01690200
//SYSOUT   DD SYSOUT=*                                                  01690300
//SYSDBOUT DD SYSOUT=*                                                  01690400
//SYSABOUT DD SYSOUT=*                                                  01690500
//SYSUDUMP DD DUMMY                                                     01690600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI13T05),DISP=SHR                   01700000
//**********************************************************************01700100
//*                    * ICEGENER *                                    *01700200
//* OBJETIVO: MANDA AL SPOOL REPORTE DE POSICION Y SALDO AL DIA        *01700300
//*                                                                    *01700400
//* PASO REINICIABLE POR RESTART                                       *01700500
//**********************************************************************01700600
//PGI13P04 EXEC PGM=ICEGENER,COND=(4,LT)                                01770000
//SYSPRINT DD SYSOUT=*                                                  01780000
//SYSOUT   DD SYSOUT=*                                                  01790000
//SYSIN    DD DUMMY                                                     01800000
//SYSUT1   DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGIPD13.ARCH2,DISP=SHR        01810000
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01820000
//**********************************************************************01820100
//*                    * ZM4DGP01 *                                    *01820200
//* OBJETIVO: REPORTE A PROMOCION DE LAS LIQUIDACIONES                 *01820300
//*           SUSTITUYE AL VLD505 DEL AS/400 (DIARIO)                  *01820400
//*           LO GENERA A ARCHIVO SECUENCIAL. PROMOTORES               *01820410
//*                                                                    *01820430
//* PASO REINICIABLE POR RESTART                                       *01820500
//**********************************************************************01820600
//PGI13P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                01910000
//ZMGP01R1 DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGIPD13.REPOFCB,              01990000
//            DISP=(NEW,CATLG,DELETE),                                  02000000
//            SPACE=(CYL,(10,5),RLSE),                                  02010000
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS),             02020000
//            UNIT=3390                                                 02030000
//ZMGP01R2 DD DSN=SIVA.OTR.FIX.E&EMP..LIQM.CBOLSA.F&FECH2,              02030010
//            DISP=(NEW,CATLG,DELETE),                                  02030020
//            SPACE=(CYL,(10,5),RLSE),                                  02030030
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS),             02030040
//            UNIT=3390                                                 02030050
//ZMGP01P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPD13,DISP=SHR              02030060
//SYSTSPRT DD SYSOUT=*                                                  02030100
//SYSPRINT DD SYSOUT=*                                                  02030200
//SYSOUT   DD SYSOUT=*                                                  02030300
//SYSDBOUT DD SYSOUT=*                                                  02030400
//SYSABOUT DD SYSOUT=*                                                  02030500
//SYSUDUMP DD DUMMY                                                     02030600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI13T03),DISP=SHR                   02140000
//**********************************************************************02140100
//*                    * ICEGENER *                                    *02140200
//* OBJETIVO: MANDA AL SPOOL REPORTE DE PROMOCION DE LIQUIDACIONES     *02140300
//*                                                                    *02140400
//* PASO REINICIABLE POR RESTART                                       *02140500
//**********************************************************************02140600
//PGI13P02 EXEC PGM=ICEGENER,COND=(4,LT)                                02210000
//SYSPRINT DD SYSOUT=*                                                  02220000
//SYSOUT   DD SYSOUT=*                                                  02230000
//SYSIN    DD DUMMY                                                     02240000
//SYSUT1   DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGIPD13.REPOFCB,DISP=SHR      02250000
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02260000
//**********************************************************************02260100
//*                    * ICEGENER *                                    *02260200
//* OBJETIVO: MANDA AL SPOOL REPORTE CON SITUACION DEL EFECTIVO X PROM *02260300
//*                                                                    *02260400
//* PASO REINICIABLE POR RESTART                                       *02260500
//**********************************************************************02260600
//PGI13P01 EXEC PGM=ICEGENER,COND=(4,LT)                                02330000
//SYSPRINT DD SYSOUT=*                                                  02340000
//SYSOUT   DD SYSOUT=*                                                  02350000
//SYSIN    DD DUMMY                                                     02360000
//SYSUT1   DD DSN=SIVA.OTR.FIX.E&EMP..LIQM.CBOLSA.F&FECH2,DISP=SHR      02410000
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02430000
//*                                                                     02440000
