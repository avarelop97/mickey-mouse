//ZMHLPE61 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                   <<   V A L O R E S   >>                          *00050000
//*                                                                    *00060000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00070000
//*                                                                    *00080000
//* PROCESO        :  SIVAXCSR                                         *00090000
//*                   CANJE, SPLIT Y REVERSPLIT DE CUSTODIA            *00100000
//*                                                                    *00110000
//* OBJETIVO       :  APLICAR EL CANJE, SPLIT Y/O REVERSPLIT A CON-    *00120000
//*                   TRATOS DE CUSTODIA. SE PALICAN 48 HORAS DESPUES  *00130000
//*                   DE LO QUE LO HACEN LAS DEMAS EMPRESAS.           *00140000
//*                                                                    *00150000
//* CORRE          :  LO SUBMITE EL USUARIO POR LA APLICACION 814      *00160000
//*                                                                    *00170000
//* REALIZO        :  DAVID GUTIERREZ CASILLAS     (GETRONICS MEX)     *00180000
//* FECHA          :  MARZO 2005                                       *00190000
//*                                                                    *00200000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00210000
//*                                                                    *00220000
//**********************************************************************00230000
//*                       ¢¢¢  ZM3DG001  !!!                           *00240000
//*                                                                    *00250000
//* PASO: 03  PHL61P03                                                 *00260000
//*                                                                    *00270000
//*                                                                    *00280000
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS   *00290000
//*            GRABA EN ARCHIVO SECUENCIAL.                            *00300000
//*                                                                    *00310000
//**********************************************************************00320000
//PHL61P03 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')       00330000
//*                                                                     00340000
//SYSTSPRT DD SYSOUT=X                                                  00370000
//SYSPRINT DD SYSOUT=X                                                  00380000
//SYSOUT   DD SYSOUT=X                                                  00390000
//SYSDBOUT DD SYSOUT=X                                                  00400000
//SYSABOUT DD SYSOUT=X                                                  00410000
//SYSUDUMP DD DUMMY                                                     00420000
//*                                                                     00430000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE61,               00440000
//            DISP=(NEW,CATLG,DELETE),                                  00450000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00460000
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)                        00470000
//**********************************************************************00480000
//*                       ¢¢¢  ZM4DH030  !!!                           *00490000
//* PASO  02 : PHL61P02                                                *00500000
//* OBJETIVO : PREVIO CANJE/SPLIT/REVERSPLIT DE CUSTODIA               *00510000
//* PASO REINICIABLE POR RESTART                                       *00520000
//**********************************************************************00530000
//PHL61P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00540000
//ZMH030A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE61,DISP=SHR       00550000
//SYSTSPRT DD SYSOUT=*                                                  00560000
//ZMH030R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00580002
//SYSPRINT DD SYSOUT=*                                                  00600000
//SYSOUT   DD SYSOUT=*                                                  00610000
//SYSDBOUT DD SYSOUT=*                                                  00620000
//SYSABOUT DD DUMMY                                                     00630000
//SYSUDUMP DD DUMMY                                                     00640000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL61T02),DISP=SHR                   00650000
//**********************************************************************00660000
//*               AVISO EN CASO DE ERROR A LA CONSOLA                  *00670000
//**********************************************************************00680000
//PHL61P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL61P02),                      00690000
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          00700000
//             'SIVAXCSR(ZMHLPE61)TERMINO MAL.CONTESTAR SI',            00710000
//             'PARA TERMINAR')                                         00720000
//****************************************************************      00730000
//*                SE ADICIONA CONDICION                         *      00740000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00750000
//****************************************************************      00760000
//PHL61P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCSR_IN_SEP_OK WDATE',   00770000
//         COND=(4,LT)                                                  00780000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00790001
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00800000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00810000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00820001
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00830001
//PRTDBG   DD  SYSOUT=*                                                 00840000
//SYSPRINT DD  DUMMY                                                    00850000
//SYSUDUMP DD  DUMMY                                                    00860000
//DAPRINT  DD  SYSOUT=*                                                 00870000
//DACNDIN  DD  DDNAME=SYSIN                                             00880000
