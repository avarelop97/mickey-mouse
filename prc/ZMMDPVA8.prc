//ZMMDPVA8 PROC                                                         00010000
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVA8  ***             00030000
//* SORT DEL ARCHIVO PLAZOS POR EL CAMPO CUENTA BPIGO                   00200000
//*-------------------------------------------------------------------- 00210000
//PMDA8P06 EXEC PGM=ICEMAN                                              00220000
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.PLAZOS,DISP=SHR                    00281001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.PLAZOS.SORT,                         00290001
//            DISP=(NEW,CATLG,DELETE),                                  00300000
//            SPACE=(CYL,(10,05),RLSE),                                 00310001
//            DCB=(DSORG=PS,LRECL=300,RECFM=FB,BLKSIZE=0),              00320000
//            UNIT=3390                                                 00330000
//SYSOUT   DD SYSOUT=*                                                  00340000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA8T06),DISP=SHR                   00350001
//*                                                                     00360000
//*-------------------------------------------------------------------- 00370000
//* CORRE PGM:ZM4VMW06 (PLAZOS) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 00380000
//*-------------------------------------------------------------------- 00390000
//PMDA8P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400000
//ZMMW06A1 DD DSN=MXCP.ZM.WKF.MIG1.PLAZOS.SORT,DISP=SHR                 00410001
//ZMMW06A2 DD DSN=MXCP.ZM.FIX.MIG1.PLAZOS.CESC300,                      00420001
//            DISP=(NEW,CATLG,DELETE),                                  00430000
//            SPACE=(CYL,(10,05),RLSE),                                 00440001
//            DCB=(DSORG=PS,LRECL=300,RECFM=FB,BLKSIZE=0),              00450000
//            UNIT=3390                                                 00460000
//ZMMW06A3 DD DSN=MXCP.ZM.FIX.MIG1.PLAZOS.CESC100,                      00470001
//            DISP=(NEW,CATLG,DELETE),                                  00480000
//            SPACE=(CYL,(10,05),RLSE),                                 00490001
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0),              00500000
//            UNIT=3390                                                 00510000
//SYSTSPRT DD SYSOUT=*                                                  00520000
//SYSPRINT DD SYSOUT=*                                                  00530000
//SYSOUT   DD SYSOUT=*                                                  00540000
//SYSDBOUT DD SYSOUT=*                                                  00550000
//SYSABOUT DD DUMMY                                                     00560000
//SYSUDUMP DD DUMMY                                                     00570000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA8T05),DISP=SHR                   00580001
//*                                                                     00590000
//*-------------------------------------------------------------------- 00600000
//* SORT PARA SEPARAR LOS MOVIMIENTOS DE PLAZOS                         00610000
//*-------------------------------------------------------------------- 00620000
//PMDA8P04 EXEC PGM=ICEMAN,COND=(4,LT)                                  00630000
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG1.PLAZOS.CESC300,DISP=SHR              00690001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.PLAZOS.C300PLA,                      00700001
//            DISP=(NEW,CATLG,DELETE),                                  00710000
//            SPACE=(CYL,(10,05),RLSE),                                 00720001
//            DCB=(DSORG=PS,LRECL=300,RECFM=FB,BLKSIZE=0),              00730000
//            UNIT=3390                                                 00740000
//SYSOUT   DD SYSOUT=*                                                  00750000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA8T04),DISP=SHR                   00760001
//*                                                                     00770000
//*-------------------------------------------------------------------- 00780000
//* SORT PARA SEPARAR LOS MOVIMIENTOS DE REPORTO                        00790000
//*-------------------------------------------------------------------- 00800000
//PMDA8P03 EXEC PGM=ICEMAN,COND=(4,LT)                                  00810000
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG1.PLAZOS.CESC300,DISP=SHR              00870001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.PLAZOS.C300REP,                      00880001
//            DISP=(NEW,CATLG,DELETE),                                  00890000
//            SPACE=(CYL,(10,05),RLSE),                                 00900001
//            DCB=(DSORG=PS,LRECL=300,RECFM=FB,BLKSIZE=0),              00910000
//            UNIT=3390                                                 00920000
//SYSOUT   DD SYSOUT=*                                                  00930000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA8T03),DISP=SHR                   00940001
//*                                                                     00950000
//*-------------------------------------------------------------------- 00960000
//* CORRE PGM:ZM4VMW26 (PLAZOS) CARGA ZMDTMGB (ZMDT610)                 00970000
//*-------------------------------------------------------------------- 00980000
//PMDA8P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00990000
//ZMMW26A1 DD DSN=MXCP.ZM.WKF.MIG1.PLAZOS.C300PLA,DISP=SHR              01000001
//ZMMW26A2 DD DSN=MXCP.ZM.FIX.MIG1.PLAZOS.L300ER26,                     01010001
//            DISP=(NEW,CATLG,DELETE),                                  01020000
//            SPACE=(CYL,(10,05),RLSE),                                 01030001
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),              01040000
//            UNIT=3390                                                 01050000
//ZMMW26A3 DD DSN=MXCP.ZM.FIX.MIG1.PLAZOS.L300PG26,                     01060001
//            DISP=(NEW,CATLG,DELETE),                                  01070000
//            SPACE=(CYL,(10,05),RLSE),                                 01080001
//            DCB=(RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS),              01090000
//            UNIT=3390                                                 01100000
//SYSTSPRT DD SYSOUT=*                                                  01110000
//SYSPRINT DD SYSOUT=*                                                  01120000
//SYSOUT   DD SYSOUT=*                                                  01130000
//SYSDBOUT DD SYSOUT=*                                                  01140000
//SYSABOUT DD DUMMY                                                     01150000
//SYSUDUMP DD DUMMY                                                     01160000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA8T02),DISP=SHR                   01170001
//*                                                                     01180000
//*-------------------------------------------------------------------- 01190000
//* CORRE PGM:ZM4VMW02 (REPORTOS) CARGA DE LAS TABLAS ZMDTMG2 Y ZMDTMG3 01200000
//*-------------------------------------------------------------------- 01210000
//PMDA8P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                01220000
//ZMMW02A1 DD DSN=MXCP.ZM.WKF.MIG1.PLAZOS.C300REP,DISP=SHR              01230001
//ZMMW02A2 DD DSN=MXCP.ZM.FIX.MIG1.PLAZOSRE.L300ER02,                   01240001
//            DISP=(NEW,CATLG,DELETE),                                  01250000
//            SPACE=(CYL,(10,05),RLSE),                                 01260001
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),              01270000
//            UNIT=3390                                                 01280000
//ZMMW02A3 DD DSN=MXCP.ZM.FIX.MIG1.PLAZOSRE.L300PG02,                   01290001
//            DISP=(NEW,CATLG,DELETE),                                  01300000
//            SPACE=(CYL,(10,05),RLSE),                                 01310001
//            DCB=(RECFM=FB,LRECL=166,BLKSIZE=0,DSORG=PS),              01320000
//            UNIT=3390                                                 01330000
//SYSTSPRT DD SYSOUT=*                                                  01340000
//SYSPRINT DD SYSOUT=*                                                  01350000
//SYSOUT   DD SYSOUT=*                                                  01360000
//SYSDBOUT DD SYSOUT=*                                                  01370000
//SYSABOUT DD DUMMY                                                     01380000
//SYSUDUMP DD DUMMY                                                     01390000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA8T01),DISP=SHR                   01400001
//*-------------------------------------------------------------------- 01430000
