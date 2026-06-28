//ZMPFID01 PROC                                                         00010000
//*---------------------------------------------------------------------00020000
//* PROGRAMA: ZM4CRX23                                                  00030000
//* OBJETIVO: GENERA ARCHIVOS CON LAS ALTAS DEL DIA DE FIDEICOMISOS PARA00040000
//*           SU CAMBIO EN LAS RELACIONES DE PRODUCTO 21 EN PERSONAS.   00050000
//*---------------------------------------------------------------------00060000
//PMPFID04 EXEC PGM=IKJEFT01                                            00070000
//ARCHFID  DD DSN=MXCP.ZM.FIX.ALTA.CLIENTES.CAMBFID.PREV,               00080000
//            DISP=(NEW,CATLG,DELETE),                                  00090000
//            SPACE=(CYL,(80,40),RLSE),                                 00100000
//            DCB=(DSORG=PS,LRECL=1035,RECFM=FB,BLKSIZE=0),             00110000
//            UNIT=3390                                                 00120000
//ARCHAUT  DD DSN=MXCP.ZM.FIX.ALTPRD21.INTERV.CAMBFID,                  00130000
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            SPACE=(CYL,(80,40),RLSE),                                 00150000
//            DCB=(DSORG=PS,LRECL=1035,RECFM=FB,BLKSIZE=0),             00160000
//            UNIT=3390                                                 00170000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=1024                                 00180000
//SYSPRINT DD SYSOUT=*                                                  00190000
//SYSOUT   DD SYSOUT=*                                                  00200000
//SYSDBOUT DD SYSOUT=*                                                  00210000
//SYSABOUT DD DUMMY                                                     00220000
//SYSUDUMP DD DUMMY                                                     00230000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCFID04),DISP=SHR                   00240000
//SYSIN    DD DUMMY                                                     00250000
//*                                                                     00260000
//**********************************************************************00270000
//*  PROGRAMA: ICEMAN                                                  *00280000
//*  OBJETIVO: SORT AL ARCHIVO DE ALTA DE FIDEICOMISOS PARA ORDENARLO  *00290000
//*            POR CUENTA DE INVERSION PATRIMONIAL.                    *00300000
//**********************************************************************00310000
//PMPFID03 EXEC PGM=ICEMAN,COND=(4,LT)                                  00320000
//SORTIN   DD  DSN=MXCP.ZM.FIX.ALTA.CLIENTES.CAMBFID.PREV,              00330000
//             DISP=SHR                                                 00340000
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ALTA.CLIENTES.CAMBFID,                   00350000
//             DISP=(NEW,CATLG,DELETE),                                 00360000
//             SPACE=(CYL,(700,350),RLSE),UNIT=3390,                    00370000
//             DCB=(LRECL=1035,RECFM=FB,BLKSIZE=0,DSORG=PS)             00380000
//*                                                                     00390000
//SYSOUT   DD  SYSOUT=*                                                 00400000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMCFID03),                          00410000
//             DISP=SHR                                                 00420000
//*                                                                     00430000
//**********************************************************************00440000
//*  PROGRAMA: ZM3CRX01                                                *00450000
//*  OBJETIVO: INTEGRA EL CODIGO, CLAVE DE IDENTIFICACION Y TELEFONOS  *00460000
//*            AL LAYOUT DEL ARCHIVO DE ALTAS DE FIDEICOMISOS.         *00470000
//**********************************************************************00480000
//PMPFID02 EXEC PGM=ZM3CRX01,COND=(4,LT)                                00490000
//*                                                                     00500000
//SYSPRINT DD  SYSOUT=*                                                 00510000
//SYSTSPRT DD  SYSOUT=*                                                 00520000
//SYSDUMP  DD  SYSOUT=*                                                 00530000
//SYSABOUT DD  SYSOUT=*                                                 00540000
//SYSOUT   DD  SYSOUT=*                                                 00550000
//AAF001   DD DSN=MXCP.ZM.TMP.ALTA.CLIENTES.CAMBFID,                    00560000
//            DISP=SHR                                                  00570000
//AMCP001  DD DSN=MXCP.ZM.FIX.CON.AMCP,                                 00580000
//            DISP=SHR                                                  00590000
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ALTA.CLIENTES.CAMBFID,                    00600000
//            DISP=(NEW,CATLG,DELETE),                                  00610000
//            UNIT=3390,BUFNO=30,                                       00620000
//            SPACE=(CYL,(1000,500),RLSE),                              00630000
//            DCB=(RECFM=FB,LRECL=1035,BLKSIZE=0,DSORG=PS)              00640000
//*                                                                     00650000
//**********************************************************************00660000
//*  PROGRAMA: ZM3CRX02                                                *00670000
//*  OBJETIVO: GENERA EL ARCHIVO DE ENTRADA AL PROCESO DE BAJAS DEL    *00680000
//*            PRODUCTO 21.                                            *00690000
//**********************************************************************00700000
//PMPFID01 EXEC PGM=ZM3CRX02,COND=(4,LT)                                00710000
//*                                                                     00720000
//SYSPRINT DD  SYSOUT=*                                                 00730000
//SYSTSPRT DD  SYSOUT=*                                                 00740000
//SYSDUMP  DD  SYSOUT=*                                                 00750000
//SYSABOUT DD  SYSOUT=*                                                 00760000
//SYSOUT   DD  SYSOUT=*                                                 00770000
//AMBP001  DD DSN=MXCP.ZM.TMP.ALTA.CLIENTES.CAMBFID,                    00780000
//            DISP=SHR                                                  00790000
//AMCP002  DD DSN=MXCP.ZM.FIX.CON.AMCP,                                 00800000
//            DISP=SHR                                                  00810000
//ARCHSAL  DD DSN=MXCP.ZM.FIX.AMCP.PROD21.FIDEICOM,                     00820000
//            DISP=(NEW,CATLG,DELETE),                                  00830000
//            UNIT=3390,BUFNO=30,                                       00840000
//            SPACE=(CYL,(1000,500),RLSE),                              00850000
//            DCB=(RECFM=FB,LRECL=512,BLKSIZE=0,DSORG=PS)               00860000
//*                                                                     00870000
//*---------------------------------------------------------------------00880000
//* PROGRAMA: ZM4CRM23                                                  00890000
//* OBJETIVO: GENERA ARCHIVOS DE CLIENTES Y BAJAS PARA LA CANCELACION   00900000
//*           DEL PRODUCTO 21 EN PERSONAS                               00910000
//*---------------------------------------------------------------------00920000
//PMPFID0A EXEC PGM=IKJEFT01,COND=(4,LT)                                00930000
//ARCHENT  DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR                         00940001
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ZM4CRM23.CLIENTES,                        00950001
//            DISP=(NEW,CATLG,DELETE),                                  00960000
//            SPACE=(CYL,(20,10),RLSE),                                 00970000
//            DCB=(DSORG=PS,LRECL=1035,RECFM=FB,BLKSIZE=0),             00980000
//            UNIT=3390                                                 00990000
//ARCHSAL2 DD DSN=MXCP.ZM.FIX.ZM4CRM23.BAJAS,                           01000000
//            DISP=(NEW,CATLG,DELETE), E                                01010001
//            SPACE=(CYL,(20,10),RLSE),                                 01020000
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),              01030000
//            UNIT=3390                                                 01040000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=1024                                 01050000
//SYSPRINT DD SYSOUT=*                                                  01060000
//SYSOUT   DD SYSOUT=*                                                  01070000
//SYSDBOUT DD SYSOUT=*                                                  01080000
//SYSABOUT DD DUMMY                                                     01090000
//SYSUDUMP DD DUMMY                                                     01100000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCFID0A),DISP=SHR                   01110000
//SYSIN    DD DUMMY                                                     01120000
//*                                                                     01130000
//********************************************************************* 01140000
//*   PROGRAMA:    IOACND                                               01150000
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR PU Y SE   01160000
//*                EJECUTE AUTOMATICAMENTE EL PROCESO AJJCCB06.         01170000
//********************************************************************* 01180000
//PMPFID00 EXEC PGM=IOACND,PARM='ADD COND BCJFID01_OK_PR WDATE',        01190000
//         COND=(4,LT)                                                  01200000
//         INCLUDE MEMBER=IOASET                                        01210000
//         INCLUDE MEMBER=IOAENV                                        01220000
//SYSIN    DD DUMMY                                                     01230000
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG                  01240000
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES                  01250000
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD                  01260000
//PRTDBG   DD  SYSOUT=*                                                 01270000
//SYSPRINT DD  DUMMY                                                    01280000
//DAPRINT  DD  SYSOUT=*                                                 01290000
//DACNDIN  DD  DDNAME=SYSIN                                             01300000
//*                                                                     01310000
//**********************************************************************01320000
