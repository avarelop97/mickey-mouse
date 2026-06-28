//CCUPRVPR PROC IEMI=,ISER=,ICUP=,INSER=,INCUP=,ICON=,                  00010000
//         IPROC=,FINI=,ITIPO=,FFIN=,COMP=,                             00020000
//         SALS=,SALU=,CICS=,                                           00030000
//         UZPR=                                                        00040000
//*                                                                     00050000
//********************************************************************* 00060000
//*    RECIBE PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO  OSCT * 00070000
//********************************************************************* 00080000
//PASO03  EXEC PGM=VOB942E,DYNAMNBR=20,REGION=4M,                       00090000
//        PARM=('&IEMI','&ISER','&ICUP','&INSER','&INCUP','&ICON',     -00100000
//         '&IPROC','&FINI','&ITIPO','&FFIN','&COMP')                   00110000
//STEPLIB DD DSN=SIVA.BIB.CARGA,DISP=SHR                                00120000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00130000
//SYSPRINT DD SYSOUT=&SALS                                              00140000
//SYSOUT   DD SYSOUT=&SALS                                              00150000
//SYSDBOUT DD SYSOUT=&SALS                                              00160000
//SYSABOUT DD DUMMY                                                     00170000
//SYSUDUMP DD DUMMY                                                     00180000
//*                                                                     00190000
//VOB942A1 DD DSN=&&ARCHPAR,                                            00200000
//           DISP=(NEW,PASS),                                           00210000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),                00220000
//           UNIT=SYSDA,                                                00230000
//           SPACE=(TRK,(1,1),RLSE)                                     00240000
//*                                                                     00250000
//*                                                                     00260000
//*--------------------------------------------------------------       00270000
//* EJECUCION DE PRELIMINAR DE CORTE DE CUPON DE RENTA FIJA             00280000
//* VOB926E   VALORES MARZO 1990                                        00290000
//*--------------------------------------------------------------       00300000
//PASO02  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00310000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VOB926A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             00330000
//VOB926R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                     00340000
//VOB926RX DD SYSOUT=(&SALU,&CICS,&UZPR)                                00350000
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                          00360000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00370000
//SYSPRINT DD SYSOUT=&SALS                                              00380000
//SYSOUT   DD SYSOUT=&SALS                                              00390000
//SYSDBOUT DD SYSOUT=&SALS                                              00400000
//SYSABOUT DD SYSOUT=(&SALU,&CICS,&UZPR)                                00410000
//SYSUDUMP DD DUMMY                                                     00420000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAMA0),DISP=SHR                          00430000
//*-------------------------------------------------------------------- 00440000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00450000
//*-------------------------------------------------------------------- 00460000
//PASO01   EXEC PGM=MAILOPER,COND=(4,GE,PASO02),                        00470000
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          00480000
//             'SIVAXPRF(CCUPRVPR)TERMINO MAL.CONTESTAR SI',            00490000
//             'PARA TERMINAR')                                         00500000
//****************************************************************      00510000
//*                SE ADICIONA CONDICION                         *      00520000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00530000
//****************************************************************      00540000
//PASO01B  EXEC  PGM=CTMCND,PARM='ADD COND CCUPRVPR_IN_SEP_OK WDATE',   00550000
//         COND=(4,LT)                                                  00560000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00570000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00580000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00590000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00600000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00610000
//PRTDBG   DD  SYSOUT=*                                                 00620000
//SYSPRINT DD  DUMMY                                                    00630000
//SYSUDUMP DD  DUMMY                                                    00640000
//DAPRINT  DD  SYSOUT=*                                                 00650000
//DACNDIN  DD  DDNAME=SYSIN                                             00660000
