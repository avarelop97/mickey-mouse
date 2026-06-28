//CCUPRFPR PROC IEMI=,ISER=,ICUP=,INSER=,INCUP=,ICON=,                  00010000
//         IPROC=,FINI=,ITIPO=,FFIN=,COMP=,                             00020000
//         SALS=,SALU=,CICS=,                                           00030000
//         UZPR=                                                        00040000
//*                                                                     00050000
//********************************************************************* 00060000
//*    RECIBE PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO  OSCT * 00070000
//********************************************************************* 00080000
//*                                                                     00090000
//PASO03  EXEC PGM=VOB942E,DYNAMNBR=20,REGION=4M,                       00100000
//        PARM=('&IEMI','&ISER','&ICUP','&INSER','&INCUP','&ICON',     -00110000
//         '&IPROC','&FINI','&ITIPO','&FFIN','&COMP')                   00120000
//STEPLIB DD DSN=SIVA.BIB.CARGA,DISP=SHR                                00130000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00140000
//SYSPRINT DD SYSOUT=&SALS                                              00150000
//SYSOUT   DD SYSOUT=&SALS                                              00160000
//SYSDBOUT DD SYSOUT=&SALS                                              00170000
//SYSABOUT DD DUMMY                                                     00180000
//SYSUDUMP DD DUMMY                                                     00190000
//*                                                                     00200000
//VOB942A1 DD DSN=&&ARCHPAR,                                            00210000
//           DISP=(NEW,PASS),                                           00220000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),                00230000
//           UNIT=SYSDA,                                                00240000
//           SPACE=(TRK,(1,1),RLSE)                                     00250000
//*                                                                     00260000
//*                                                                     00270000
//*--------------------------------------------------------------       00280000
//* EJECUCION DE PRELIMINAR DE CORTE DE CUPON DE RENTA FIJA             00290000
//* VOB992E   VALORES MARZO 1990                                        00300000
//*--------------------------------------------------------------       00310000
//PASO02  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00320000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VOB992A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             00340000
//VOB992R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                     00350000
//VOB992RX DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                     00360000
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                          00370000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00380000
//SYSPRINT DD SYSOUT=&SALS                                              00390000
//SYSOUT   DD SYSOUT=&SALS                                              00400000
//SYSDBOUT DD SYSOUT=&SALS                                              00410000
//SYSABOUT DD SYSOUT=(&SALU,&CICS,&UZPR)                                00420000
//SYSUDUMP DD DUMMY                                                     00430000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAMA6),DISP=SHR                          00440000
//*-------------------------------------------------------------------- 00450000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00460000
//*-------------------------------------------------------------------- 00470000
//PASO01   EXEC PGM=MAILOPER,COND=(4,GE,PASO02),                        00480000
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          00490000
//             'SIVAXPRF(CCUPRFPR)TERMINO MAL.CONTESTAR SI',            00500000
//             'PARA TERMINAR')                                         00510000
//****************************************************************      00520000
//*                SE ADICIONA CONDICION                         *      00530000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00540000
//****************************************************************      00550000
//PASO01B  EXEC  PGM=CTMCND,PARM='ADD COND CCUPRFPR_IN_SEP_OK WDATE',   00560000
//         COND=(4,LT)                                                  00570000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00580000
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00590000
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00600000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00610000
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00620000
//PRTDBG   DD  SYSOUT=*                                                 00630000
//SYSPRINT DD  DUMMY                                                    00640000
//SYSUDUMP DD  DUMMY                                                    00650000
//DAPRINT  DD  SYSOUT=*                                                 00660000
//DACNDIN  DD  DDNAME=SYSIN                                             00670000
