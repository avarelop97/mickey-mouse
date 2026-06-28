//ZMUEPV04 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMUEPV04                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  GENERACION DE ARCHIVOS MUV   PARA HISTORICO E IMPRE.*00110001
//*                DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL Y CUSTODIA*00120000
//*                INTERNACIONAL                                       *00130000
//*                                                                    *00140000
//*   CORRE ANTES DE  : UNICA VEZ                                      *00150000
//*                                                                    *00160000
//*   CORRE DESPUES DE: UNICA VEZ                                      *00170000
//*                                                                    *00180000
//*   PERIODICIDAD    :  EVENTUAL                                      *00190000
//*                                                                    *00200000
//**********************************************************************00210000
//*                                                                     00320000
//**********************************************************************00330000
//*    RECIBE LOS PARAMETROS A PROCESAR (SEPTIEMBRE-2006)              *00340000
//**********************************************************************00350000
//PUE04P20 EXEC PGM=ZM3DG001,                                           00360001
//         PARM=('BCM','','0000001-9999999','060929',)                  00370000
//SYSTSPRT DD SYSOUT=*                                                  00390000
//SYSPRINT DD SYSOUT=*                                                  00400000
//SYSOUT   DD SYSOUT=*                                                  00410000
//SYSDBOUT DD SYSOUT=*                                                  00420000
//SYSABOUT DD DUMMY                                                     00430000
//SYSUDUMP DD DUMMY                                                     00440000
//*                                                                     00450000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPSEP,                        00460000
//            DISP=(NEW,CATLG,DELETE),                                  00470000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00480000
//            UNIT=3390,                                                00490000
//            SPACE=(CYL,(2,1),RLSE)                                    00500000
//*                                                                     00510000
//**********************************************************************00520000
//*                     * SORT   *                                     *00530000
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *00540000
//*           POR NUMERO DE CUENTA    (SEPTIEMBRE-2006)                *00550000
//**********************************************************************00560000
//PUE04P19 EXEC PGM=ICEMAN,COND=(0,NE)                                  00570001
//SYSOUT   DD SYSOUT=*                                                  00590000
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01.G0062V00,            00600000
//            DISP=SHR                                                  00600000
//*                                                                     00610000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.SEP,                  00620000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//*                                                                     00660000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13T01),DISP=SHR                   00710000
//*                                                                     01020000
//**********************************************************************01030000
//*                    -- ZM4MU011  --                                  01040000
//*  GENERA ARCHIVOS PARA TARJETAS DE SORT REQUERIDOS EN LA GENERACION  01050000
//*  DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL                          01060000
//**********************************************************************01070000
//PUE04P18 EXEC PGM=IKJEFT01,COND=(0,NE)                                01080001
//ZMU011A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPSEP,DISP=SHR                01100000
//*                                                                     01110000
//ZMU011F1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SEPPF01,                   01120000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01130000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               01140000
//            SPACE=(CYL,(1,1),RLSE)                                    01150000
//ZMU011F2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SEPPF02,                   01160000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01170000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               01180000
//            SPACE=(CYL,(1,1),RLSE)                                    01190000
//ZMU011F3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SEPPF03,                   01200000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01210000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               01220000
//            SPACE=(CYL,(1,1),RLSE)                                    01230000
//SYSTSPRT DD SYSOUT=*                                                  01240000
//SYSPRINT DD SYSOUT=*                                                  01250000
//SYSOUT   DD SYSOUT=*                                                  01260000
//SYSDBOUT DD SYSOUT=*                                                  01270000
//SYSABOUT DD SYSOUT=*                                                  01280000
//SYSUDUMP DD DUMMY                                                     01290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T03),DISP=SHR                   01300000
//*                                                                     01310000
//**********************************************************************01320000
//*                    -- ZM4MU012  --                                 *01330000
//*  SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS PARA EL HISTORICO DE E.C.*01340000
//*  DE ACUERDO A LOS CRITERIOS DE SEPARACION PROPORCIONADOS EN LINEA  *01350000
//*  MEDIANTE LA TABLA PRODUSVP.PARAM ('ESP') DE BANCA PATRIMONIAL     *01360000
//*                                        (SEPTIEMBRE-2006)           *01370000
//**********************************************************************01380000
//PUE04P17 EXEC PGM=IKJEFT01,COND=(0,NE)                                01390001
//ZMU012A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPSEP,DISP=SHR                01410000
//ZMU012E1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.SEP,DISP=SHR          01420000
//*                                                                     01430000
//ZMU012HS DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HISEP,                 01440000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01450000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             01460000
//            SPACE=(CYL,(200,100),RLSE)                                01470000
//ZMU012IM DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMSEP,                 01480000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01490000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             01500000
//            SPACE=(CYL,(200,100),RLSE)                                01510000
//SYSTSPRT DD SYSOUT=*                                                  01520000
//SYSPRINT DD SYSOUT=*                                                  01530000
//SYSOUT   DD SYSOUT=*                                                  01540000
//SYSDBOUT DD SYSOUT=*                                                  01550000
//SYSABOUT DD SYSOUT=*                                                  01560000
//SYSUDUMP DD DUMMY                                                     01570000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T04),DISP=SHR                   01580000
//*                                                                     01590000
//**********************************************************************01600000
//*                     * SORT   *     (SEPTIEMBRE-2006)               *01610000
//* OBJETIVO: ORDENA EL ARCHIVO HISTORICO DE DATOS ADMTIVOS. MES ACTUAL*01620000
//*           DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO ('ESR')      *01630000
//**********************************************************************01640000
//PUE04P16 EXEC PGM=ICEMAN,COND=(0,NE)                                  01650001
//SYSOUT   DD SYSOUT=*                                                  01660000
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HISEP,DISP=SHR         01670000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HISEP,DISP=SHR         01680000
//*                                                                     01690000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SEPPF01,DISP=SHR           01740000
//*                                                                     01750000
//**********************************************************************01760000
//*                     * SORT   *     (SEPTIEMBRE-2006)               *01770000
//* OBJETIVO: ORDENA EL ARCHIVO DE IMPRESION DE DATOS ADM. MES ACTUAL  *01780000
//*           DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO ('ESR')      *01790000
//**********************************************************************01800000
//PUE04P15 EXEC PGM=ICEMAN,COND=(0,NE)                                  01810001
//SYSOUT   DD SYSOUT=*                                                  01820000
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMSEP,DISP=SHR         01830000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMSEP,DISP=SHR         01840000
//*                                                                     01850000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SEPPF01,DISP=SHR           01900000
//*                                                                     01910000
//**********************************************************************01920000
//*                     * SORT   *        (SEPTIEMBRE-2006)            *01930000
//* OBJETIVO: ORDENA EL ARCHIVO DETALLADO DE POSICION MES ACTUAL       *01940000
//*           POR: OFICINA, CUENTA, PLAZA                              *01950000
//**********************************************************************01960000
//PUE04P14 EXEC PGM=ICEMAN,COND=(0,NE)                                  01970001
//SYSOUT   DD SYSOUT=*                                                  01980000
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF02.G0057V00,            00600000
//            DISP=SHR                                                  00600000
//*                                                                     00610000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.SEP,                  00620000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=321,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//*                                                                     02010000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SEPPF02,DISP=SHR           02060000
//*                                                                     02070000
//**********************************************************************02080000
//*                     * SORT   *        (SEPTIEMBRE-2006)            *02090000
//* OBJETIVO: ORDENA EL ARCHIVO DE MOVIMIENTOS DEL MES ACTUAL          *02100000
//*           POR: OFICINA, CUENTA, PLAZA                              *02110000
//**********************************************************************02120000
//PUE04P13 EXEC PGM=ICEMAN,COND=(0,NE)                                  02130001
//SYSOUT   DD SYSOUT=*                                                  02140000
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF03.G0057V00,            00600000
//            DISP=SHR                                                  00600000
//*                                                                     00610000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.SEP,                  00620000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=297,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//*                                                                     02010000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SEPPF03,DISP=SHR           02220000
//*                                                                     02230000
//**********************************************************************02240000
//*                    -- ZM3MU010  -- (SEPTIEMBRE-2006)                02250000
//*  RECORTA LOS ARCHIVOS DE MUV   PARA DEJARLOS DE ACUERDO AL LAY-OUT  02260001
//*  DE BANCA PATRIMONIAL                                               02270000
//**********************************************************************02280000
//PUE04P12 EXEC PGM=IKJEFT01,COND=(0,NE)                                02290001
//ZMU010A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPSEP,DISP=SHR                02310000
//ZMU010A2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HISEP,DISP=SHR         02320000
//ZMU010A3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMSEP,DISP=SHR         02330000
//ZMU010A4 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.SEP,DISP=SHR          02340000
//ZMU010A5 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.SEP,DISP=SHR          02350000
//*                                                                     02360000
//ZMU010A6 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01HSEP,                  02370000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=1214,RECFM=FB,BLKSIZE=0),             00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010A7 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01ISEP,                  02410000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=1214,RECFM=FB,BLKSIZE=0),             00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010A8 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02ISEP,                  02450000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=214,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010A9 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03ISEP,                  02490000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=224,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010AA DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPRIV.PF01HSEP,                  02521000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=1214,RECFM=FB,BLKSIZE=0),             00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010AB DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPRIV.PF01ISEP,                  02525000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=1214,RECFM=FB,BLKSIZE=0),             00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010AC DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPRIV.PF02ISEP,                  02529000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=214,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010AD DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPRIV.PF03ISEP,                  02529400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=224,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//SYSTSPRT DD SYSOUT=*                                                  02530000
//SYSPRINT DD SYSOUT=*                                                  02540000
//SYSOUT   DD SYSOUT=*                                                  02550000
//SYSDBOUT DD SYSOUT=*                                                  02560000
//SYSABOUT DD SYSOUT=*                                                  02570000
//SYSUDUMP DD DUMMY                                                     02580000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T05),DISP=SHR                   02590000
//*                                                                     02600000
//**********************************************************************02602001
//*                    -- ZM4MU020  -- (SEPTIEMBRE-2006)                02603001
//*  ACTUALIZA LA BASE DE DATOS HISTORICA DE ESTADOS DE CUENTA DE       02604001
//*  ACUERDO AL LAYOUT DE LOS ARCHIVOS DE BANCA PATRIMONIAL             02605001
//**********************************************************************02606001
//PUE04P11 EXEC PGM=IKJEFT01,COND=(0,NE)                                02607001
//ZMU020P1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPSEP,DISP=SHR                02609002
//*                                                                     02609103
//*---- ARCHIVOS ENTRADA MUV       E.C. IMPRESOS SIN RECORTAR           02609203
//ZMU020M1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMSEP,DISP=SHR         02609303
//ZMU020M2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.SEP,DISP=SHR          02609403
//ZMU020M3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.SEP,DISP=SHR          02609503
//*                                                                     02609603
//*---- ARCHIVOS ENTRADA BPATR/BPRIV E.C. IMPRESOS RECORTADOS           02609703
//ZMU020B1 DD DUMMY                                                     02609803
//ZMU020B2 DD DUMMY                                                     02609903
//ZMU020B3 DD DUMMY                                                     02610003
//ZMU020B4 DD DUMMY                                                     02610167
//*                                                                     02610168
//ZMU020B5 DD DUMMY                                                     02610169
//ZMU020B6 DD DUMMY                                                     02610170
//ZMU020B7 DD DUMMY                                                     02610180
//ZMU020B8 DD DUMMY                                                     02610267
//*                                                                     02610367
//*---- ARCHIVO SALIDA BPIGO/MUV E.C. IMPRESO PF01 ADMN SIN RECORTAR    02610467
//ZMU020HS DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.ASEP,                  02610567
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       02610667
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             02610767
//            SPACE=(CYL,(200,100),RLSE)                                02610867
//*                                                                     02610967
//SYSTSPRT DD SYSOUT=*                                                  02611067
//SYSPRINT DD SYSOUT=*                                                  02611167
//SYSOUT   DD SYSOUT=*                                                  02611267
//SYSDBOUT DD SYSOUT=*                                                  02611367
//SYSABOUT DD SYSOUT=*                                                  02611467
//SYSUDUMP DD DUMMY                                                     02611567
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T12),DISP=SHR                   02612001
//*                                                                     02613401
//**********************************************************************00330000
//*    RECIBE LOS PARAMETROS A PROCESAR (OCTUBRE-2006)                 *00340000
//**********************************************************************00350000
//PUE04P10 EXEC PGM=ZM3DG001,COND=(0,NE),                               00360001
//         PARM=('BCM','','0000001-9999999','061031',)                  00370000
//SYSTSPRT DD SYSOUT=*                                                  00390000
//SYSPRINT DD SYSOUT=*                                                  00400000
//SYSOUT   DD SYSOUT=*                                                  00410000
//SYSDBOUT DD SYSOUT=*                                                  00420000
//SYSABOUT DD DUMMY                                                     00430000
//SYSUDUMP DD DUMMY                                                     00440000
//*                                                                     00450000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPOCT,                        00460000
//            DISP=(NEW,CATLG,DELETE),                                  00470000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00480000
//            UNIT=3390,                                                00490000
//            SPACE=(CYL,(2,1),RLSE)                                    00500000
//*                                                                     00510000
//**********************************************************************00520000
//*                     * SORT   *                                     *00530000
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *00540000
//*           POR NUMERO DE CUENTA    (OCTUBRE-2006)                   *00550000
//**********************************************************************00560000
//PUE04P09 EXEC PGM=ICEMAN,COND=(0,NE)                                  00570001
//SYSOUT   DD SYSOUT=*                                                  00590000
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01.G0063V00,            00600000
//            DISP=SHR                                                  00600000
//*                                                                     00610000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.OCT,                  00620000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//*                                                                     00660000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13T01),DISP=SHR                   00710000
//*                                                                     01020000
//**********************************************************************01030000
//*                    -- ZM4MU011  --                                  01040000
//*  GENERA ARCHIVOS PARA TARJETAS DE SORT REQUERIDOS EN LA GENERACION  01050000
//*  DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL                          01060000
//**********************************************************************01070000
//PUE04P08 EXEC PGM=IKJEFT01,COND=(0,NE)                                01080001
//ZMU011A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPOCT,DISP=SHR                01100000
//*                                                                     01110000
//ZMU011F1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.OCTPF01,                   01120000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01130000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               01140000
//            SPACE=(CYL,(1,1),RLSE)                                    01150000
//ZMU011F2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.OCTPF02,                   01160000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01170000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               01180000
//            SPACE=(CYL,(1,1),RLSE)                                    01190000
//ZMU011F3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.OCTPF03,                   01200000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01210000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               01220000
//            SPACE=(CYL,(1,1),RLSE)                                    01230000
//SYSTSPRT DD SYSOUT=*                                                  01240000
//SYSPRINT DD SYSOUT=*                                                  01250000
//SYSOUT   DD SYSOUT=*                                                  01260000
//SYSDBOUT DD SYSOUT=*                                                  01270000
//SYSABOUT DD SYSOUT=*                                                  01280000
//SYSUDUMP DD DUMMY                                                     01290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T03),DISP=SHR                   01300000
//*                                                                     01310000
//**********************************************************************01320000
//*                    -- ZM4MU012  --                                 *01330000
//*  SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS PARA EL HISTORICO DE E.C.*01340000
//*  DE ACUERDO A LOS CRITERIOS DE SEPARACION PROPORCIONADOS EN LINEA  *01350000
//*  MEDIANTE LA TABLA PRODUSVP.PARAM ('ESP') DE BANCA PATRIMONIAL     *01360000
//*                                        (OCTUBRE-2006)              *01370000
//**********************************************************************01380000
//PUE04P07 EXEC PGM=IKJEFT01,COND=(0,NE)                                01390001
//ZMU012A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPOCT,DISP=SHR                01410000
//ZMU012E1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.OCT,DISP=SHR          01420000
//*                                                                     01430000
//ZMU012HS DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HIOCT,                 01440000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01450000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             01460000
//            SPACE=(CYL,(200,100),RLSE)                                01470000
//ZMU012IM DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMOCT,                 01480000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01490000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             01500000
//            SPACE=(CYL,(200,100),RLSE)                                01510000
//SYSTSPRT DD SYSOUT=*                                                  01520000
//SYSPRINT DD SYSOUT=*                                                  01530000
//SYSOUT   DD SYSOUT=*                                                  01540000
//SYSDBOUT DD SYSOUT=*                                                  01550000
//SYSABOUT DD SYSOUT=*                                                  01560000
//SYSUDUMP DD DUMMY                                                     01570000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T04),DISP=SHR                   01580000
//*                                                                     01590000
//**********************************************************************01600000
//*                     * SORT   *     (OCTUBRE-2006)                  *01610000
//* OBJETIVO: ORDENA EL ARCHIVO HISTORICO DE DATOS ADMTIVOS. MES ACTUAL*01620000
//*           DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO ('ESR')      *01630000
//**********************************************************************01640000
//PUE04P06 EXEC PGM=ICEMAN,COND=(0,NE)                                  01650001
//SYSOUT   DD SYSOUT=*                                                  01660000
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HIOCT,DISP=SHR         01670000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HIOCT,DISP=SHR         01680000
//*                                                                     01690000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.OCTPF01,DISP=SHR           01740000
//*                                                                     01750000
//**********************************************************************01760000
//*                     * SORT   *     (OCTUBRE-2006)                  *01770000
//* OBJETIVO: ORDENA EL ARCHIVO DE IMPRESION DE DATOS ADM. MES ACTUAL  *01780000
//*           DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO ('ESR')      *01790000
//**********************************************************************01800000
//PUE04P05 EXEC PGM=ICEMAN,COND=(0,NE)                                  01810001
//SYSOUT   DD SYSOUT=*                                                  01820000
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMOCT,DISP=SHR         01830000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMOCT,DISP=SHR         01840000
//*                                                                     01850000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.OCTPF01,DISP=SHR           01900000
//*                                                                     01910000
//**********************************************************************01920000
//*                     * SORT   *        (OCTUBRE-2006)               *01930000
//* OBJETIVO: ORDENA EL ARCHIVO DETALLADO DE POSICION MES ACTUAL       *01940000
//*           POR: OFICINA, CUENTA, PLAZA                              *01950000
//**********************************************************************01960000
//PUE04P04 EXEC PGM=ICEMAN,COND=(0,NE)                                  01970001
//SYSOUT   DD SYSOUT=*                                                  01980000
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF02.G0058V00,            00600000
//            DISP=SHR                                                  00600000
//*                                                                     00610000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.OCT,                  00620000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=321,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//*                                                                     02010000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.OCTPF02,DISP=SHR           02060000
//*                                                                     02070000
//**********************************************************************02080000
//*                     * SORT   *        (OCTUBRE-2006)               *02090000
//* OBJETIVO: ORDENA EL ARCHIVO DE MOVIMIENTOS DEL MES ACTUAL          *02100000
//*           POR: OFICINA, CUENTA, PLAZA                              *02110000
//**********************************************************************02120000
//PUE04P03 EXEC PGM=ICEMAN,COND=(0,NE)                                  02130001
//SYSOUT   DD SYSOUT=*                                                  02140000
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF03.G0058V00,            00600000
//            DISP=SHR                                                  00600000
//*                                                                     00610000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.OCT,                  00620000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=297,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//*                                                                     02010000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.OCTPF03,DISP=SHR           02220000
//*                                                                     02230000
//**********************************************************************02240000
//*                    -- ZM3MU010  -- (OCTUBRE-2006)                   02250000
//*  RECORTA LOS ARCHIVOS DE MUV   PARA DEJARLOS DE ACUERDO AL LAY-OUT  02260001
//*  DE BANCA PATRIMONIAL                                               02270000
//**********************************************************************02280000
//PUE04P02 EXEC PGM=IKJEFT01,COND=(0,NE)                                02290001
//ZMU010A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPOCT,DISP=SHR                02310000
//ZMU010A2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HIOCT,DISP=SHR         02320000
//ZMU010A3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMOCT,DISP=SHR         02330000
//ZMU010A4 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.OCT,DISP=SHR          02340000
//ZMU010A5 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.OCT,DISP=SHR          02350000
//*                                                                     02360000
//ZMU010A6 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01HOCT,                  02370000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=1214,RECFM=FB,BLKSIZE=0),             00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010A7 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01IOCT,                  02410000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=1214,RECFM=FB,BLKSIZE=0),             00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010A8 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02IOCT,                  02450000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=214,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010A9 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03IOCT,                  02490000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=224,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010AA DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPRIV.PF01HOCT,                  02521000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=1214,RECFM=FB,BLKSIZE=0),             00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010AB DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPRIV.PF01IOCT,                  02525000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=1214,RECFM=FB,BLKSIZE=0),             00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010AC DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPRIV.PF02IOCT,                  02529000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=214,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//ZMU010AD DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPRIV.PF03IOCT,                  02529400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00630000
//            DCB=(DSORG=PS,LRECL=224,RECFM=FB,BLKSIZE=0),              00640000
//            SPACE=(CYL,(200,100),RLSE)                                00650000
//SYSTSPRT DD SYSOUT=*                                                  02530000
//SYSPRINT DD SYSOUT=*                                                  02540000
//SYSOUT   DD SYSOUT=*                                                  02550000
//SYSDBOUT DD SYSOUT=*                                                  02560000
//SYSABOUT DD SYSOUT=*                                                  02570000
//SYSUDUMP DD DUMMY                                                     02580000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T05),DISP=SHR                   02590000
//*                                                                     02600000
//**********************************************************************02602001
//*                    -- ZM4MU020  -- (OCTUBRE-2006)                   02603001
//*  ACTUALIZA LA BASE DE DATOS HISTORICA DE ESTADOS DE CUENTA DE       02604001
//*  ACUERDO AL LAYOUT DE LOS ARCHIVOS DE BANCA PATRIMONIAL             02605001
//**********************************************************************02606001
//PUE04P01 EXEC PGM=IKJEFT01,COND=(0,NE)                                02607001
//ZMU020P1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPOCT,DISP=SHR                02609002
//*                                                                     02609103
//*---- ARCHIVOS ENTRADA MUV       E.C. IMPRESOS SIN RECORTAR           02609203
//ZMU020M1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMOCT,DISP=SHR         02609303
//ZMU020M2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.OCT,DISP=SHR          02609403
//ZMU020M3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.OCT,DISP=SHR          02609503
//*                                                                     02609603
//*---- ARCHIVOS ENTRADA BPATR/BPRIV E.C. IMPRESOS RECORTADOS           02609703
//ZMU020B1 DD DUMMY                                                     02609803
//ZMU020B2 DD DUMMY                                                     02609903
//ZMU020B3 DD DUMMY                                                     02610003
//ZMU020B4 DD DUMMY                                                     02610167
//*                                                                     02610168
//ZMU020B5 DD DUMMY                                                     02610169
//ZMU020B6 DD DUMMY                                                     02610170
//ZMU020B7 DD DUMMY                                                     02610180
//ZMU020B8 DD DUMMY                                                     02610267
//*                                                                     02610367
//*---- ARCHIVO SALIDA BPIGO/MUV E.C. IMPRESO PF01 ADMN SIN RECORTAR    02610467
//ZMU020HS DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.AOCT,                  02610567
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       02610667
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             02610767
//            SPACE=(CYL,(200,100),RLSE)                                02610867
//*                                                                     02610967
//SYSTSPRT DD SYSOUT=*                                                  02611067
//SYSPRINT DD SYSOUT=*                                                  02611167
//SYSOUT   DD SYSOUT=*                                                  02611267
//SYSDBOUT DD SYSOUT=*                                                  02611367
//SYSABOUT DD SYSOUT=*                                                  02611467
//SYSUDUMP DD DUMMY                                                     02611567
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T12),DISP=SHR                   02612001
//*                                                                     02613401
//**********************************************************************05650000
//*        TERMINA PROCESO ZMUEPV04 SIVA MULTIEMPRESA                  *05660000
//**********************************************************************05670000
