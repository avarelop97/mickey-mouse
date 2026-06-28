//SID2100 PROC
//* SISTEMA             : SOCIEDADES DE INVERSION/SEGURIDAD LOGICA
//*
//* PROCESO             : SID2100
//*
//* OBJETIVO            : ALTA AUTOMATICA DE USUARIOS DE BANCO
//*                       EN SIVA Y RACF
//*
//* REALIZO             : ADRIAN DEL RIO SALDIVAR
//*
//* FECHA               : SEPTIEMBRE DE 2000
//********************************************************************* 00040000
//*  IMPRIME REPORTE DE ALTAS, BAJAS Y MODIFICACIONES, GENERA ARCHIVO   00050000
//*  CON REGISTROS VALIDADOS                                            00050000
//********************************************************************* 00060000
//SID2106 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,       00070000
//        PARM='/DEBUG',TIME=100                                        00090000
//*                                                                     00130000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//DIREJE   DD DSN=SIVA.SIN.FIX.USUARIOS.PROMEX,DISP=SHR                 00300000
//VOB334R1 DD DSN=SIVA.SIN.FIX.USUARIOS.PROMEX.REPORTE,                 00300000
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(300,150),RLSE),UNIT=3390,
//            DCB=(LRECL=133,RECFM=FBA,DSORG=PS)
//DIREJES  DD DSN=SIVA.SIN.FIX.USUARIOS.SELE.PROMEX,                    00300000
//            DISP=(NEW,CATLG,DELETE),                                  00300000
//            SPACE=(TRK,(300,150),RLSE),UNIT=3390,                     00300000
//            DCB=(LRECL=107,RECFM=FB,DSORG=PS)                         00300000
//SYSDHOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(SID2102),DISP=SHR                          00300000
//********************************************************************* 00060000
//*  GENERA ARCHIVO - JCL PARA ALTAS Y BAJAS EN RACF                    00050000
//********************************************************************* 00060000
//SID2105 EXEC PGM=VIB336D,DYNAMNBR=20,COND=(4,LT),REGION=4096K         00070000
//*                                                                     00130000
//SYSOUT DD SYSOUT=*                                                    00130000
//*                                                                     00130000
//DIREJE   DD DSN=SIVA.SIN.FIX.USUARIOS.SELE.PROMEX,DISP=SHR            00300000
//ARMAJCL  DD DSN=SIVA.SIN.FIX.USUARIOS.ARJC.PROMEX,                    00300000
//         DISP=(NEW,CATLG,DELETE),                                     00300000
//         SPACE=(TRK,(300,150),RLSE),UNIT=3390,                        00300000
//         DCB=(LRECL=080,BLKSIZE=0,RECFM=FB)                           00300000
//*                                                                     00310000
//********************************************************************* 00060000
//*  ADICIONA CONDICION PARA PROCESO RACF PROMEX                      * 00050000
//*********************************************************************
//SID2104  EXEC  PGM=CTMCND,PARM='ADD COND  PAUSID22_IN     WDATE',
//     COND=(0,NE,SID2106)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//*PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
//********************************************************************* 00040000
//*  IMPRIME REPORTE DE ALTAS, BAJAS Y MODIFICACIONES, GENERA ARCHIVO   00050000
//*  CON REGISTROS VALIDADOS                                            00050000
//********************************************************************* 00060000
//SID2103 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K        00070000
//*                                                                     00130000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//DIREJE   DD DSN=SIVA.SIN.FIX.USUARIOS.PROMEX,DISP=SHR                 00300000
//VOB334R1 DD DSN=SIVA.SIN.FIX.USUARIOS.BANCOMER.REPORTE,               00300000
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(300,150),RLSE),UNIT=3390,
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS)
//DIREJES  DD DSN=SIVA.SIN.FIX.USUARIOS.SELE.BANCOMER,                  00300000
//            DISP=(NEW,CATLG,DELETE),                                  00300000
//            SPACE=(TRK,(300,150),RLSE),UNIT=3390,                     00300000
//            DCB=(LRECL=107,BLKSIZE=0,RECFM=FB,DSORG=PS)               00300000
//SYSDHOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(SID1602),DISP=SHR                          00300000
//********************************************************************* 00060000
//*  GENERA ARCHIVO - JCL PARA ALTAS Y BAJAS EN RACF                    00050000
//********************************************************************* 00060000
//SID2102 EXEC PGM=VIB336D,DYNAMNBR=20,COND=(4,LT),REGION=4096K         00070000
//*                                                                     00130000
//SYSOUT DD SYSOUT=*                                                    00130000
//*                                                                     00130000
//DIREJE   DD DSN=SIVA.SIN.FIX.USUARIOS.SELE.BANCOMER,DISP=SHR          00300000
//ARMAJCL  DD DSN=SIVA.SIN.FIX.USUARIOS.ARJC.BANCOMER,                  00300000
//         DISP=(NEW,CATLG,DELETE),                                     00300000
//         SPACE=(TRK,(300,150),RLSE),UNIT=3390,                        00300000
//         DCB=(LRECL=080,BLKSIZE=0,RECFM=FB)                           00300000
//*                                                                     00310000
//********************************************************************* 00060000
//*  ADICIONA CONDICION PARA PROCESO RACF BANCOMER                    * 00050000
//*********************************************************************
//SID2101  EXEC  PGM=CTMCND,PARM='ADD COND  PAUSID24_IN     WDATE',
//     COND=(0,NE,SID2103)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
