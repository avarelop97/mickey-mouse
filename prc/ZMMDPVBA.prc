//ZMMDPVBA PROC                                                         00010001
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVBA  ***             00030001
//*            SORT DEL ARCHIVO POSBP POR EL CAMPO CUENTA BPIGO         00040003
//*-------------------------------------------------------------------- 00050000
//PMDBAP17 EXEC PGM=ICEMAN                                              00060003
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.POSBP,DISP=SHR                     00120000
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.POSBP.SORT,                          00130000
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            SPACE=(CYL,(10,05),RLSE),                                 00150000
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),              00160000
//            UNIT=3390                                                 00170000
//SYSOUT   DD SYSOUT=*                                                  00180000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA1T04),DISP=SHR                   00190000
//*                                                                     00200000
//*-------------------------------------------------------------------- 00210000
//* CORRE PGM: ZM4VMW08 (POSBP) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 00220000
//*-------------------------------------------------------------------- 00230000
//PMDBAP16 EXEC PGM=IKJEFT01,COND=(4,LT)                                00240003
//ZMMW08A1 DD DSN=MXCP.ZM.WKF.MIG1.POSBP.SORT,DISP=SHR                  00250000
//ZMMW08A2 DD DSN=MXCP.ZM.FIX.MIGZ.POSBP.CESC200,                       00260000
//            DISP=(NEW,CATLG,DELETE),                                  00270000
//            SPACE=(CYL,(10,05),RLSE),                                 00280000
//            DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS),              00290000
//            UNIT=3390                                                 00300000
//ZMMW08A3 DD DSN=MXCP.ZM.FIX.MIGZ.POSBP.ESC0100,                       00310004
//            DISP=(NEW,CATLG,DELETE),                                  00320000
//            SPACE=(CYL,(10,05),RLSE),                                 00330000
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              00340000
//            UNIT=3390                                                 00350000
//SYSTSPRT DD SYSOUT=*                                                  00360000
//SYSPRINT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//SYSDBOUT DD SYSOUT=*                                                  00390000
//SYSABOUT DD DUMMY                                                     00400000
//SYSUDUMP DD DUMMY                                                     00410000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA1T03),DISP=SHR                   00420000
//*====================================================================*00820001
//* SORT DEL ARCHIVO RISRSOC POR EL CAMPO EMISORA BPIGO                 00830001
//*====================================================================*00840001
//PMDBAP15 EXEC PGM=ICEMAN,COND=(4,LT)                                  00850003
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.RISRSOC,DISP=SHR                   00910001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.RISRSOC2.SORT2,                      00920001
//            DISP=(NEW,CATLG,DELETE),                                  00930001
//            SPACE=(CYL,(10,05),RLSE),                                 00940001
//            DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0),              00950001
//            UNIT=3390                                                 00960001
//SYSOUT   DD SYSOUT=*                                                  00970001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA2T04),DISP=SHR                   00980001
//*                                                                     00990001
//*-------------------------------------------------------------------- 01000001
//* CORRE PGM: ZM4VMW10 (RISRSOC) PARA ENCONTRAR E-S-C DE MUV           01010001
//*-------------------------------------------------------------------- 01020001
//PMDBAP14 EXEC PGM=IKJEFT01,COND=(4,LT)                                01030003
//ZMMW10A1 DD DSN=MXCP.ZM.WKF.MIG1.RISRSOC2.SORT2,DISP=SHR              01040001
//ZMMW10A2 DD DSN=MXCP.ZM.FIX.MIGZ.RISRSOC2.CESC150,                    01050001
//            DISP=(NEW,CATLG,DELETE),                                  01060001
//            SPACE=(CYL,(10,05),RLSE),                                 01070001
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS),              01080001
//            UNIT=3390                                                 01090001
//SYSTSPRT DD SYSOUT=*                                                  01100001
//SYSPRINT DD SYSOUT=*                                                  01110001
//SYSOUT   DD SYSOUT=*                                                  01120001
//SYSDBOUT DD SYSOUT=*                                                  01130001
//SYSABOUT DD DUMMY                                                     01140001
//SYSUDUMP DD DUMMY                                                     01150001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA2T03),DISP=SHR                   01160001
//*                                                                     01170002
//*-------------------------------------------------------------------- 01170003
//* SORT DEL ARCHIVO RISRSOC POR EL CAMPO CUENTA BPIGO                  01170004
//*-------------------------------------------------------------------- 01170005
//PMDBAP13 EXEC PGM=ICEMAN,COND=(4,LT)                                  01170006
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.RISRSOC,DISP=SHR                   01170012
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.RISRSOC.SORT,                        01170013
//            DISP=(NEW,CATLG,DELETE),                                  01170014
//            SPACE=(CYL,(10,05),RLSE),                                 01170015
//            DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0),              01170016
//            UNIT=3390                                                 01170017
//SYSOUT   DD SYSOUT=*                                                  01170018
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA2T06),DISP=SHR                   01170019
//*                                                                     01170020
//*-------------------------------------------------------------------- 01170021
//* CORRE PGM: ZM4VMW1A (RISRSOC) PARA ENCONTRAR LA CUENTA MUV          01170022
//*-------------------------------------------------------------------- 01170023
//PMDBAP12 EXEC PGM=IKJEFT01,COND=(4,LT)                                01170024
//ZMMW1AA1 DD DSN=MXCP.ZM.WKF.MIG1.RISRSOC.SORT,DISP=SHR                01170025
//ZMMW1AA2 DD DSN=MXCP.ZM.FIX.MIGZ.RISRSOC.CESC150,                     01170026
//            DISP=(NEW,CATLG,DELETE),                                  01170027
//            SPACE=(CYL,(10,05),RLSE),                                 01170028
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS),              01170029
//            UNIT=3390                                                 01170030
//SYSTSPRT DD SYSOUT=*                                                  01170031
//SYSPRINT DD SYSOUT=*                                                  01170032
//SYSOUT   DD SYSOUT=*                                                  01170033
//SYSDBOUT DD SYSOUT=*                                                  01170034
//SYSABOUT DD DUMMY                                                     01170035
//SYSUDUMP DD DUMMY                                                     01170036
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA2T05),DISP=SHR                   01170037
//*                                                                     01170038
//*---------------------------------------------------------------------01170039
//* ZM4VMW12 - ACTUALIZA ARCHIVO DE PREAVISOS CON E-S-C Y CUENTA DEL MUV01170040
//*---------------------------------------------------------------------01170041
//PMDBAP11 EXEC PGM=IKJEFT01,COND=(4,LT)                                01170042
//ZMMW12A1 DD DSN=MXCP.ZM.FIX.MIG061.PREVISOS,DISP=SHR                  01170043
//ZMMW12A2 DD DSN=MXCP.ZM.FIX.MIGZ.PREVISOS.CESC210,                    01170044
//            DISP=(NEW,CATLG,DELETE),                                  01170045
//            SPACE=(CYL,(06,03),RLSE),                                 01170046
//            DCB=(LRECL=210,RECFM=FB,BLKSIZE=0,DSORG=PS),              01170047
//            UNIT=3390                                                 01170048
//ZMMW12A3 DD DSN=MXCP.ZM.FIX.MIGZ.PREVISOS.CESC100,                    01170049
//            DISP=(NEW,CATLG,DELETE),                                  01170050
//            SPACE=(CYL,(06,03),RLSE),                                 01170051
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS),              01170060
//            UNIT=3390                                                 01170070
//SYSTSPRT DD SYSOUT=*                                                  01170080
//SYSPRINT DD SYSOUT=*                                                  01170090
//SYSOUT   DD SYSOUT=*                                                  01170100
//SYSDBOUT DD SYSOUT=*                                                  01170200
//SYSABOUT DD DUMMY                                                     01170300
//SYSUDUMP DD DUMMY                                                     01170400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA6T02),DISP=SHR                   01170500
//*                                                                     01170600
//*-------------------------------------------------------------------- 01190001
//* SORT DEL ARCHIVO MOVHIS POR EL CAMPO CUENTA BPIGO                   01210001
//*-------------------------------------------------------------------- 01220001
//PMDBAP10 EXEC PGM=ICEMAN,COND=(4,LT)                                  01230003
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.MOVHIS,DISP=SHR                    01290001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.MOVHIS.SORT,                         01300001
//            DISP=(NEW,CATLG,DELETE),                                  01310001
//            SPACE=(CYL,(10,05),RLSE),                                 01320001
//            DCB=(DSORG=PS,LRECL=550,RECFM=FB,BLKSIZE=0),              01330001
//            UNIT=3390                                                 01340001
//SYSOUT   DD SYSOUT=*                                                  01350001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDBAT10),DISP=SHR                   01360001
//*                                                                     01370001
//*-------------------------------------------------------------------- 01380001
//* CORRE PGM:ZM4VMW09 (MOVHIS) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 01390001
//*-------------------------------------------------------------------- 01400001
//PMDBAP09 EXEC PGM=IKJEFT01,COND=(4,LT)                                01410003
//ZMMW09A1 DD DSN=MXCP.ZM.WKF.MIG1.MOVHIS.SORT,DISP=SHR                 01420001
//ZMMW09A2 DD DSN=MXCP.ZM.FIX.MIGZ.MOVHIS.CESC550,                      01430001
//            DISP=(NEW,CATLG,DELETE),                                  01440001
//            SPACE=(CYL,(10,05),RLSE),                                 01450001
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS),              01460001
//            UNIT=3390                                                 01470001
//ZMMW09A3 DD DSN=MXCP.ZM.FIX.MIGZ.MOVHIS.ESC0100,                      01480004
//            DISP=(NEW,CATLG,DELETE),                                  01490001
//            SPACE=(CYL,(10,05),RLSE),                                 01500001
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              01510001
//            UNIT=3390                                                 01520001
//SYSTSPRT DD SYSOUT=*                                                  01530001
//SYSPRINT DD SYSOUT=*                                                  01540001
//SYSOUT   DD SYSOUT=*                                                  01550001
//SYSDBOUT DD SYSOUT=*                                                  01560001
//SYSABOUT DD DUMMY                                                     01570001
//SYSUDUMP DD DUMMY                                                     01580001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDBAT09),DISP=SHR                   01590001
//*                                                                     01600001
//*====================================================================*01620001
//* SORT DEL ARCHIVO DE CAPAS POR EL CAMPO CUENTA BPIGO                 01640001
//*====================================================================*01650001
//PMDBAP08 EXEC PGM=ICEMAN,COND=(4,LT)                                  01660003
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.CAPAS,DISP=SHR                     01720001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.CAPAS.SORT,                          01730001
//            DISP=(NEW,CATLG,DELETE),                                  01740001
//            SPACE=(CYL,(10,05),RLSE),                                 01750001
//            DCB=(DSORG=PS,LRECL=152,RECFM=FB,BLKSIZE=0),              01760001
//            UNIT=3390                                                 01770001
//SYSOUT   DD SYSOUT=*                                                  01780001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDBAT08),DISP=SHR                   01790001
//*                                                                     01800001
//*-------------------------------------------------------------------- 01801003
//* CORRE PGM: ZM4VMW14 (CAPAS) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 01802003
//*-------------------------------------------------------------------- 01803003
//PMDBAP07 EXEC PGM=IKJEFT01,COND=(4,LT)                                01850003
//ZMMW14A1 DD DSN=MXCP.ZM.WKF.MIG1.CAPAS.SORT,DISP=SHR                  01860001
//ZMMW14A2 DD DSN=MXCP.ZM.FIX.MIGZ.CAPAS.CESC152,                       01870001
//            DISP=(NEW,CATLG,DELETE),                                  01880001
//            SPACE=(CYL,(10,05),RLSE),                                 01890001
//            DCB=(RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS),              01900001
//            UNIT=3390                                                 01910001
//ZMMW14A3 DD DSN=MXCP.ZM.FIX.MIGZ.CAPAS.CESC100,                       01920004
//            DISP=(NEW,CATLG,DELETE),                                  01930001
//            SPACE=(CYL,(10,05),RLSE),                                 01940001
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              01950001
//            UNIT=3390                                                 01960001
//SYSTSPRT DD SYSOUT=*                                                  01970001
//SYSPRINT DD SYSOUT=*                                                  01980001
//SYSOUT   DD SYSOUT=*                                                  01990001
//SYSDBOUT DD SYSOUT=*                                                  02000001
//SYSABOUT DD DUMMY                                                     02010001
//SYSUDUMP DD DUMMY                                                     02020001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDBAT07),DISP=SHR                   02030001
//*                                                                     02040001
//*-------------------------------------------------------------------- 02310002
//* SORT DEL ARCHIVO POSMUV POR EL CAMPO CUENTA BPIGO                   02330002
//*-------------------------------------------------------------------- 02340002
//PMDBAP06 EXEC PGM=ICEMAN,COND=(4,LT)                                  02350003
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.POSMUV,DISP=SHR                    02410002
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.POSMUV.SORT,                         02420002
//            DISP=(NEW,CATLG,DELETE),                                  02430002
//            SPACE=(CYL,(10,05),RLSE),                                 02440002
//            DCB=(DSORG=PS,LRECL=550,RECFM=FB,BLKSIZE=0),              02450002
//            UNIT=3390                                                 02460002
//SYSOUT   DD SYSOUT=*                                                  02470002
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDBAT06),DISP=SHR                   02480002
//*                                                                     02490002
//*-------------------------------------------------------------------- 02500002
//* CORRE PGM:ZM4VMW11 (POSMUV) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 02510002
//*-------------------------------------------------------------------- 02520002
//PMDBAP05 EXEC PGM=IKJEFT01,COND=(4,LT)                                02530003
//ZMMW11A1 DD DSN=MXCP.ZM.WKF.MIG1.POSMUV.SORT,DISP=SHR                 02540002
//ZMMW11A2 DD DSN=MXCP.ZM.FIX.MIGZ.POSMUV.CESC550,                      02550002
//           DISP=(NEW,CATLG,DELETE),                                   02560002
//            SPACE=(CYL,(10,05),RLSE),                                 02570002
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS),              02580002
//            UNIT=3390                                                 02590002
//ZMMW11A3 DD DSN=MXCP.ZM.FIX.MIGZ.POSMUV.CESC100,                      02600004
//            DISP=(NEW,CATLG,DELETE),                                  02610002
//            SPACE=(CYL,(10,05),RLSE),                                 02620002
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              02630002
//            UNIT=3390                                                 02640002
//SYSTSPRT DD SYSOUT=*                                                  02650002
//SYSPRINT DD SYSOUT=*                                                  02660002
//SYSOUT   DD SYSOUT=*                                                  02670002
//SYSDBOUT DD SYSOUT=*                                                  02680002
//SYSABOUT DD DUMMY                                                     02690002
//SYSUDUMP DD DUMMY                                                     02700002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDBAT05),DISP=SHR                   02710002
//*                                                                     02720002
//*-------------------------------------------------------------------- 02740002
//* SORT DEL ARCHIVO PLAZOS POR EL CAMPO CUENTA BPIGO                   02760002
//*-------------------------------------------------------------------- 02770002
//PMDBAP04 EXEC PGM=ICEMAN,COND=(4,LT)                                  02780003
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.PLAZOS,DISP=SHR                    02840002
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.PLAZOS.SORT,                         02850002
//            DISP=(NEW,CATLG,DELETE),                                  02860002
//            SPACE=(CYL,(10,05),RLSE),                                 02870002
//            DCB=(DSORG=PS,LRECL=300,RECFM=FB,BLKSIZE=0),              02880002
//            UNIT=3390                                                 02890002
//SYSOUT   DD SYSOUT=*                                                  02900002
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDBAT04),DISP=SHR                   02910002
//*                                                                     02920002
//*-------------------------------------------------------------------- 02930002
//* CORRE PGM:ZM4VMW06 (PLAZOS) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 02940002
//*-------------------------------------------------------------------- 02950002
//PMDBAP03 EXEC PGM=IKJEFT01,COND=(4,LT)                                02960003
//ZMMW06A1 DD DSN=MXCP.ZM.WKF.MIG1.PLAZOS.SORT,DISP=SHR                 02970002
//ZMMW06A2 DD DSN=MXCP.ZM.FIX.MIGZ.PLAZOS.CESC300,                      02980002
//            DISP=(NEW,CATLG,DELETE),                                  02990002
//            SPACE=(CYL,(10,05),RLSE),                                 03000002
//            DCB=(DSORG=PS,LRECL=300,RECFM=FB,BLKSIZE=0),              03010002
//            UNIT=3390                                                 03020002
//ZMMW06A3 DD DSN=MXCP.ZM.FIX.MIGZ.PLAZOS.CESC100,                      03030004
//            DISP=(NEW,CATLG,DELETE),                                  03040002
//            SPACE=(CYL,(10,05),RLSE),                                 03050002
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0),              03060002
//            UNIT=3390                                                 03070002
//SYSTSPRT DD SYSOUT=*                                                  03080002
//SYSPRINT DD SYSOUT=*                                                  03090002
//SYSOUT   DD SYSOUT=*                                                  03100002
//SYSDBOUT DD SYSOUT=*                                                  03110002
//SYSABOUT DD DUMMY                                                     03120002
//SYSUDUMP DD DUMMY                                                     03130002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDBAT03),DISP=SHR                   03140002
//*                                                                     03150002
//*-------------------------------------------------------------------- 03170003
//* SORT DEL ARCHIVO POS248 POR EL CAMPO CUENTA BPIGO                   03190003
//*-------------------------------------------------------------------- 03200003
//PMDBAP02 EXEC PGM=ICEMAN,COND=(4,LT)                                  03210003
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.POS248,DISP=SHR                    03270003
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.POS248.SORT,                         03280003
//            DISP=(NEW,CATLG,DELETE),                                  03290003
//            SPACE=(CYL,(06,03),RLSE),                                 03300003
//            DCB=(DSORG=PS,LRECL=550,RECFM=FB,BLKSIZE=0),              03310003
//            UNIT=3390                                                 03320003
//SYSOUT   DD SYSOUT=*                                                  03330003
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDBAT02),DISP=SHR                   03340003
//*                                                                     03350003
//*-------------------------------------------------------------------- 03360003
//* CORRE PGM:ZM4VMW33 (POS248) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 03370003
//*-------------------------------------------------------------------- 03380003
//PMDBAP01 EXEC PGM=IKJEFT01,COND=(4,LT)                                03390003
//ZMMW33A1 DD DSN=MXCP.ZM.WKF.MIG1.POS248.SORT,DISP=SHR                 03400003
//ZMMW33A2 DD DSN=MXCP.ZM.FIX.MIGZ.POS248.CESC550,                      03410003
//            DISP=(NEW,CATLG,DELETE),                                  03420003
//            SPACE=(CYL,(06,03),RLSE),                                 03430003
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS),              03440003
//            UNIT=3390                                                 03450003
//ZMMW33A3 DD DSN=MXCP.ZM.FIX.MIGZ.POS248.ESC0100,                      03460004
//            DISP=(NEW,CATLG,DELETE),                                  03470003
//            SPACE=(CYL,(06,03),RLSE),                                 03480003
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              03490003
//            UNIT=3390                                                 03500003
//SYSTSPRT DD SYSOUT=*                                                  03510003
//SYSPRINT DD SYSOUT=*                                                  03520003
//SYSOUT   DD SYSOUT=*                                                  03530003
//SYSDBOUT DD SYSOUT=*                                                  03540003
//SYSABOUT DD DUMMY                                                     03550003
//SYSUDUMP DD DUMMY                                                     03560003
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDBAT01),DISP=SHR                   03570003
//*-------------------------------------------------------------------- 03880003
