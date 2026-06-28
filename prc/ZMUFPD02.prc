//ZMUFPD02 PROC                                                         00010000
//**********************************************************************00020000
//*                          ===   COPIA  ===                          *00030000
//*                                                                    *00040000
//* OBJETIVO : COPIAR ARCHIVO CON INTERFAZ REGRESO DE POZOS DE BG      *00050000
//*            MXCP.ZM.FIX.ZM4DU750.POZOBG                             *00060000
//*  A ===>    MXCP.ZM.GDGD.ECO.EBCM.POZOS                             *00070000
//**********************************************************************00080000
//*--------------------------------------------------------------------*00080100
//*         L O G   D E   M O D I F I C A C I O N E S                  *00080200
//*--------------------------------------------------------------------*00080300
//* MARCA     AUTOR   FECHA   DESCRIPCION                              *00080400
//* ------- --------- ------- -----------------------------------------*00080500
//* M001     XM1614   010323  SE AUMENTA LA LONGITUD DE ARCHIVO        *00080600
//*                           POZOS DE 386  A 389.                     *00080700
//*--------------------------------------------------------------------*00080800
//ZUF02P09 EXEC PGM=ICEGENER                                            00090000
//SYSPRINT DD SYSOUT=*                                                  00100000
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZM4DU750.POZOBG,DISP=SHR                  00110000
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECO.EBCM.POZOS(+1),                      00120000
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//*M001 I                                                              *00130100
//*           DCB=(BKUP.MODEL,LRECL=386,RECFM=FB,BLKSIZE=0,DSORG=PS),  *00140001
//*M001 F                                                              *00140002
//            DCB=(BKUP.MODEL,LRECL=389,RECFM=FB,BLKSIZE=0,DSORG=PS),   00140003
//            SPACE=(CYL,(100,50),RLSE),                                00150000
//            UNIT=3390                                                 00160000
//SYSIN    DD DUMMY                                                     00170000
//*                                                                     00180000
//**********************************************************************00190000
//* OBJETIVO : SORTEA ARCHIVO QUE REGRESA DE POZO.                     *00200000
//**********************************************************************00210000
//ZUF02P08 EXEC PGM=ICEMAN,COND=(4,LT)                                  00220000
//SYSOUT   DD SYSOUT=*                                                  00230000
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DU750.POZOBG,DISP=SHR                  00240000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DU850.POZOBG.SORT,                     00250000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00260000
//            SPACE=(CYL,(40,20),RLSE),                                 00270000
//*M001 I                                                              *00270100
//*           DCB=(RECFM=FB,DSORG=PS,LRECL=386,BLKSIZE=0)              *00270200
//*M001 F                                                              *00270300
//            DCB=(RECFM=FB,DSORG=PS,LRECL=389,BLKSIZE=0)               00280001
//**SORTWK01 DD UNIT=3390,SPACE=(CYL,(30,15),RLSE)                      00290000
//**SORTWK02 DD UNIT=3390,SPACE=(CYL,(30,15),RLSE)                      00300000
//**SORTWK03 DD UNIT=3390,SPACE=(CYL,(30,15),RLSE)                      00310000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF02T02),DISP=SHR                   00320000
//*                                                                     00330000
//**********************************************************************00340000
//* PROGRAMA: ZM4DU848                                                  00350000
//* OBJETIVO: CON ARCHIVO RESPUESTA DE BG SE ACTUALIZA ZMDT629          00360000
//**********************************************************************00370000
//ZUF02P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00380000
//SYSTSPRT DD SYSOUT=*                                                  00390000
//ZMPOZO03 DD DSN=MXCP.ZM.TMP.ZM4DU850.POZOBG.SORT,DISP=SHR             00400000
//SYSPRINT DD SYSOUT=*                                                  00410000
//SYSOUT   DD SYSOUT=*                                                  00420000
//SYSDBOUT DD SYSOUT=*                                                  00430000
//SYSABOUT DD DUMMY                                                     00440000
//SYSUDUMP DD DUMMY                                                     00450000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF02T03),DISP=SHR                   00460000
//*                                                                     00470000
//**********************************************************************00480000
//* PROGRAMA: ZM4DU850                                                  00490000
//* OBJETIVO: RECIBE ARCHIVO DE BG Y LO CARGA EN ZMDT623                00500000
//**********************************************************************00510000
//ZUF02P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00520000
//SYSTSPRT DD SYSOUT=*                                                  00530000
//ZMPOZO01 DD DSN=MXCP.ZM.TMP.ZM4DU850.POZOBG.SORT,DISP=SHR             00540000
//SYSPRINT DD SYSOUT=*                                                  00550000
//SYSOUT   DD SYSOUT=*                                                  00560000
//SYSDBOUT DD SYSOUT=*                                                  00570000
//SYSABOUT DD DUMMY                                                     00580000
//SYSUDUMP DD DUMMY                                                     00590000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF02T01),DISP=SHR                   00600000
//*                                                                     00610000
//**********************************************************************00620000
//*                          ===   SORT   ===                          *00630000
//*                                                                    *00640000
//*            >>>>> POZOS SOCIEDADES DE INVERSION <<<<<               *00650000
//* OBJETIVO : CLASIFICA POR CARGO/ABONO, OBSERVACIONES, CUENTA BG     *00660000
//*            Y FOLIO BG                                              *00670000
//*                                                                    *00680000
//**********************************************************************00690000
//ZUF02P05 EXEC PGM=ICEMAN,COND=(4,LT)                                  00700000
//SYSOUT   DD SYSOUT=*                                                  00710000
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DU750.POZOBG,DISP=SHR                  00720000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.POZOSS.F&FECHA,                00730000
//        DISP=(NEW,CATLG,DELETE),                                      00740000
//        SPACE=(CYL,(40,20),RLSE),                                     00750000
//*M001 I                                                              *00750100
//*       DCB=(DSORG=PS,RECFM=FB,LRECL=386,BLKSIZE=0),                 *00760001
//*M001 F                                                              *00760002
//        DCB=(DSORG=PS,RECFM=FB,LRECL=389,BLKSIZE=0),                  00760003
//        UNIT=3390                                                     00770000
//**SORTWK01 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)                      00780000
//**SORTWK02 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)                      00790000
//**SORTWK03 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)                      00800000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T12),DISP=SHR                   00810000
//*                                                                     00820000
//**********************************************************************00830000
//*                          ===  ZM4DU855  ===                        *00840000
//*                                                                    *00850000
//* OBJETIVO : GENERA REPORTE CON MOVIMIENTOS DE EFECTIVO OK Y RECHAZO *00860000
//*                   >>>>> SOCIEDADES DE INVERSION <<<<<              *00870000
//*                                                                    *00880000
//**********************************************************************00890000
//ZUF02P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00900000
//SYSTSPRT DD SYSOUT=*                                                  00910000
//ZMU855T1 DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.POZOSS.F&FECHA,DISP=SHR        00920000
//ZMU855R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00930000
//ZMU855R2 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00940000
//SYSPRINT DD SYSOUT=*                                                  00950000
//SYSOUT   DD SYSOUT=*                                                  00960000
//SYSDBOUT DD SYSOUT=*                                                  00970000
//SYSABOUT DD DUMMY                                                     00980000
//SYSUDUMP DD DUMMY                                                     00990000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T13),DISP=SHR                   01000000
//*                                                                     01010000
//**********************************************************************01020000
//* PROGRAMA: ZM4DU880                                                  01030000
//* OBJETIVO: CREA ARCHIVO CON LOS MOVIMIENTOS DEL DIA EN LAS           01040000
//*           TABLAS ZMDT623 Y ZMDT633                                  01050000
//**********************************************************************01060000
//ZUF02P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                01070000
//SYSTSPRT DD SYSOUT=*                                                  01080000
//ZMU880T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.CONP10BG.F&FECHA,              01090000
//         DISP=(NEW,CATLG,DELETE),                                     01100000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=97,BLKSIZE=0),                  01110000
//         UNIT=3390,                                                   01120000
//         SPACE=(CYL,(40,20),RLSE)                                     01130000
//SYSPRINT DD SYSOUT=*                                                  01140000
//SYSOUT   DD SYSOUT=*                                                  01150000
//SYSDBOUT DD SYSOUT=*                                                  01160000
//SYSABOUT DD DUMMY                                                     01170000
//SYSUDUMP DD DUMMY                                                     01180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF02T04),DISP=SHR                   01190000
//*                                                                     01200000
//**********************************************************************01210000
//*                          === ZM3DU880 ===                          *01220000
//*                                                                    *01230000
//* OBJETIVO : GENERA ARCHIVO CON MOVIMIENTOS DIARIOS DE EFECTIVO      *01240000
//*            EDITADO PARA TRANSFERENCIA                              *01250000
//*                                                                    *01260000
//**********************************************************************01270000
//ZUF02P02 EXEC PGM=ZM3DU880,COND=(4,LT)                                01280000
//ZM3880T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.CONP10BG.F&FECHA,DISP=SHR      01290000
//ZM3880T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.CONPEDIT,                      01300000
//         DISP=(NEW,CATLG,DELETE),                                     01310000
//         SPACE=(CYL,(40,20),RLSE),                                    01320000
//         DCB=(DSORG=PS,RECFM=FB,LRECL=110,BLKSIZE=0),                 01330000
//         UNIT=3390                                                    01340000
//SYSTSPRT DD SYSOUT=*                                                  01350000
//SYSPRINT DD SYSOUT=*                                                  01360000
//SYSOUT   DD SYSOUT=*                                                  01370000
//SYSDBOUT DD SYSOUT=*                                                  01380000
//SYSABOUT DD DUMMY                                                     01390000
//SYSUDUMP DD DUMMY                                                     01400000
//SYSTSIN  DD DUMMY                                                     01410000
//*                                                                     01420000
//*M001 I                                                              *01420100
//*-------------------------------------------------------------------**01430000
//*  PASO: 1      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE CONCILIACION *01440000
//*               DE PRODUCTO 10 DE BG VS MUV                          *01450000
//*                                                                    *01460000
//*  TRANSMITE :  &DSN1='MXCP.ZM.FIX.ECO.INTFAZ.CONPEDIT'              *01470000
//*               &DSN2='\\CBNOCFS03\C_CB003\ZM\CUSTODIA\CONP10BG.TXT' *01480000
//*-------------------------------------------------------------------**01490000
//*ZUF02P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)                 01500002
//*                                                                     01510000
//*STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                   01520002
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP                    01530002
//*DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS                      01540002
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG                       01550002
//*DMPRINT   DD SYSOUT=*                                                01560002
//*SYSPRINT  DD SYSOUT=*                                                01570002
//*NDMCMDS   DD SYSOUT=*                                                01580002
//*SYSUDUMP  DD DUMMY                                                   01590002
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZUF02T05),DISP=SHR                 01600002
//*                                                                     01610000
//*M001 F                                                              *01610100
//**********************************************************************01620000
//**SE INHIBE REPORTE DE EFECTIVO MIGRADOS *****************************01630000
//**********************************************************************01640000
//* OBJETIVO : SORTEA ARCHIVO: MXCP.ZM.TMP.ECO.INTFAZ.POZOSS.F&FECHA   *01650000
//*            POR EL INDICADOR DE MIGRACION PARA GENERAR REPORTE DE   *01660000
//*            MOVIMIENTOS DE EFECTIVO MIGRADOS OK.                    *01670000
//**********************************************************************01680000
//*ZUF02PA2 EXEC PGM=ICEMAN,COND=(4,LT)                                 01690000
//*SYSOUT   DD SYSOUT=*                                                 01700000
//*SORTIN   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.POZOSS.F&FECHA,DISP=SHR       01710000
//*SORTOUT  DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.POZOSS.SORTMIG,               01720000
//*            DISP=(NEW,CATLG,DELETE),                                 01730000
//*            SPACE=(CYL,(40,20),RLSE),                                01740000
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=389,BLKSIZE=0),             01750001
//*            UNIT=3390                                                01760000
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF02TA2),DISP=SHR                  01770000
//**                                                                    01780000
//**********************************************************************01790000
//*                          ===  ZM4DU855  ===                        *01800000
//*                                                                    *01810000
//* OBJETIVO : GENERA REPORTE CON MOVIMIENTOS DE EFECTIVO MIGRADOS OK  *01820000
//*                   >>>>> SOCIEDADES DE INVERSION <<<<<              *01830000
//*                                                                    *01840000
//**********************************************************************01850000
//*ZUF02PA1 EXEC PGM=IKJEFT01,COND=(4,LT)                               01860000
//*SYSTSPRT DD SYSOUT=*                                                 01870000
//*ZMU855T1 DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.POZOSS.SORTMIG,DISP=SHR       01880000
//*ZMU855R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    01890000
//*SYSPRINT DD SYSOUT=*                                                 01900000
//*SYSOUT   DD SYSOUT=*                                                 01910000
//*SYSDBOUT DD SYSOUT=*                                                 01920000
//*SYSABOUT DD DUMMY                                                    01930000
//*SYSUDUMP DD DUMMY                                                    01940000
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T13),DISP=SHR                  01950000
//*                                                                     01960000
