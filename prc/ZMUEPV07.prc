//ZMUEPV07 PROC EMP=,SUC=,VER=0,INT1=,FECHA=                            00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMUEPV07                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  GENERACION DE BASE DE DATOS DE ESTADOS DE CUENTA DE *00110000
//*                BANCA PATRIMONIAL (MUV)                             *00120000
//*                                                                    *00130000
//*   CORRE ANTES DE  : NINGUNO                                        *00140000
//*                                                                    *00150000
//*   CORRE DESPUES DE: NINGUNO                                        *00160000
//*                                                                    *00170000
//*   PERIODICIDAD    :  EVENTUAL UNICA VEZ                            *00180000
//*                                                                    *00190000
//**********************************************************************00200000
//*                      LOG DE MODIFICACIONES                         *00210000
//**********************************************************************00220000
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *00230000
//**********************************************************************00240000
//PUE07P08 EXEC PGM=ZM3DG001,                                           00250000
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)                       00260000
//SYSTSPRT DD SYSOUT=*                                                  00270000
//SYSPRINT DD SYSOUT=*                                                  00280000
//SYSOUT   DD SYSOUT=*                                                  00290000
//SYSDBOUT DD SYSOUT=*                                                  00300000
//SYSABOUT DD DUMMY                                                     00310000
//SYSUDUMP DD DUMMY                                                     00320000
//*                                                                     00330000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPV07,                        00340000
//            DISP=(NEW,CATLG,DELETE),                                  00350000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00360000
//            UNIT=3390,                                                00370000
//            SPACE=(CYL,(2,1),RLSE)                                    00380000
//*                                                                     00390000
//**********************************************************************00400000
//*                     * SORT   *                                     *00410000
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *00420000
//*           POR NUMERO DE CUENTA                                     *00430000
//**********************************************************************00440000
//PUE07P07 EXEC PGM=ICEMAN,COND=(0,NE)                                  00450000
//SYSOUT   DD SYSOUT=*                                                  00460000
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(&VER.),DISP=SHR      00470000
//*                                                                     00480000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ACT,                  00490000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00500000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             00510000
//            SPACE=(CYL,(200,100),RLSE)                                00520000
//*                                                                     00530000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13T01),DISP=SHR                   00535000
//*                                                                     00536000
//**********************************************************************00537000
//*                    -- ZM4MU011  --                                  00538000
//*  GENERA ARCHIVOS PARA TARJETAS DE SORT REQUERIDOS EN LA GENERACION  00539000
//*  DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL                          00540000
//**********************************************************************00550000
//PUE07P06 EXEC PGM=IKJEFT01,COND=(0,NE)                                00560000
//ZMU011A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPV07,DISP=SHR                00570000
//*                                                                     00580000
//ZMU011F1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF01,                   00590000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00600000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00610000
//            SPACE=(CYL,(1,1),RLSE)                                    00620000
//ZMU011F2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF02,                   00630000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00640000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00650000
//            SPACE=(CYL,(1,1),RLSE)                                    00660000
//ZMU011F3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF03,                   00670000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00680000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00690000
//            SPACE=(CYL,(1,1),RLSE)                                    00700000
//SYSTSPRT DD SYSOUT=*                                                  00710000
//SYSPRINT DD SYSOUT=*                                                  00720000
//SYSOUT   DD SYSOUT=*                                                  00730000
//SYSDBOUT DD SYSOUT=*                                                  00740000
//SYSABOUT DD SYSOUT=*                                                  00750000
//SYSUDUMP DD DUMMY                                                     00760000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T03),DISP=SHR                   00770000
//*                                                                     00780000
//**********************************************************************00790000
//*                    -- ZM4MU012  --                                 *00800000
//*  SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS PARA EL HISTORICO DE E.C.*00810000
//*  DE ACUERDO A LOS CRITERIOS DE SEPARACION PROPORCIONADOS EN LINEA  *00820000
//*  MEDIANTE LA TABLA PRODUSVP.PARAM ('ESP') DE BANCA PATRIMONIAL     *00830000
//*                                                                    *00840000
//**********************************************************************00850000
//PUE07P05 EXEC PGM=IKJEFT01,COND=(0,NE)                                00860000
//ZMU012A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPV07,DISP=SHR                00870000
//ZMU012E1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ACT,DISP=SHR          00880000
//*                                                                     00890000
//ZMU012HS DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01,                      00900000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00910000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             00920000
//            SPACE=(CYL,(200,100),RLSE)                                00930000
//ZMU012IM DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMPRE,                 00940000
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00950000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             00960000
//            SPACE=(CYL,(200,100),RLSE)                                00970000
//SYSTSPRT DD SYSOUT=*                                                  00980000
//SYSPRINT DD SYSOUT=*                                                  00990000
//SYSOUT   DD SYSOUT=*                                                  01000000
//SYSDBOUT DD SYSOUT=*                                                  01010000
//SYSABOUT DD SYSOUT=*                                                  01020000
//SYSUDUMP DD DUMMY                                                     01030000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T04),DISP=SHR                   01040000
//*                                                                     01050000
//**********************************************************************01060000
//*                     * SORT   *                                     *01070000
//* OBJETIVO: ORDENA EL ARCHIVO HISTORICO DE DATOS ADMTIVOS. MES ACTUAL*01080000
//*           DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO ('ESR')      *01090000
//**********************************************************************01100000
//PUE07P04 EXEC PGM=ICEMAN,COND=(0,NE)                                  01110000
//SYSOUT   DD SYSOUT=*                                                  01120000
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01,DISP=SHR              01130000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01,DISP=SHR              01140000
//*                                                                     01150000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF01,DISP=SHR           01200000
//*                                                                     01210000
//**********************************************************************01220000
//*                     * SORT   *                                     *01230000
//* OBJETIVO: ORDENA EL ARCHIVO DETALLADO DE POSICION MES ACTUAL       *01240000
//*           POR: OFICINA, CUENTA, PLAZA                              *01250000
//**********************************************************************01260000
//PUE07P03 EXEC PGM=ICEMAN,COND=(0,NE)                                  01270000
//SYSOUT   DD SYSOUT=*                                                  01280000
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF02(&VER.),DISP=SHR      01290000
//*                                                                     01300000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02,                      01310000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01320000
//            DCB=(DSORG=PS,LRECL=321,RECFM=FB,BLKSIZE=0),              01330000
//            SPACE=(CYL,(200,100),RLSE)                                01340000
//*                                                                     01350000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF02,DISP=SHR           01400000
//*                                                                     01410000
//**********************************************************************01420000
//*                     * SORT   *                                     *01430000
//* OBJETIVO: ORDENA EL ARCHIVO DE MOVIMIENTOS DEL MES ACTUAL          *01440000
//*           POR: OFICINA, CUENTA, PLAZA                              *01450000
//**********************************************************************01460000
//PUE07P02 EXEC PGM=ICEMAN,COND=(0,NE)                                  01470000
//SYSOUT   DD SYSOUT=*                                                  01480000
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF03(&VER.),DISP=SHR      01490000
//*                                                                     01500000
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03,                      01510000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01520000
//            DCB=(DSORG=PS,LRECL=297,RECFM=FB,BLKSIZE=0),              01530000
//            SPACE=(CYL,(200,100),RLSE)                                01540000
//*                                                                     01550000
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF03,DISP=SHR           01600000
//*                                                                     01610000
//**********************************************************************01890000
//*                    -- ZM4MU020  --                                  01900000
//*  ACTUALIZA LA BASE DE DATOS HISTORICA DE ESTADOS DE CUENTA DE       01910000
//*  ACUERDO AL LAYOUT DE LOS ARCHIVOS DE BANCA PATRIMONIAL             01920000
//**********************************************************************01930000
//PUE07P01 EXEC PGM=IKJEFT01,COND=(0,NE)                                01940000
//ZMU020P1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPV07,DISP=SHR                01950000
//*                                                                     01960000
//*---- ARCHIVOS ENTRADA MUV       E.C. IMPRESOS SIN RECORTAR           01970000
//ZMU020M1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01,DISP=SHR              01980000
//ZMU020M2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02,DISP=SHR              01990000
//ZMU020M3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03,DISP=SHR              02000000
//*                                                                     02010000
//*---- ARCHIVOS ENTRADA BPIGO/MUV E.C. IMPRESOS RECORTADOS             02020000
//ZMU020B1 DD DUMMY                                                     02030000
//ZMU020B2 DD DUMMY                                                     02040000
//ZMU020B3 DD DUMMY                                                     02050000
//ZMU020B4 DD DUMMY                                                     02051000
//ZMU020B5 DD DUMMY                                                     02052000
//*                                                                     02060000
//*---- ARCHIVO SALIDA BPIGO/MUV E.C. IMPRESO PF01 ADMN SIN RECORTAR    02070000
//ZMU020HS DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.ADMN,                  02080000
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       02090000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             02100000
//            SPACE=(CYL,(200,100),RLSE)                                02110000
//*                                                                     02120000
//SYSTSPRT DD SYSOUT=*                                                  02130000
//SYSPRINT DD SYSOUT=*                                                  02140000
//SYSOUT   DD SYSOUT=*                                                  02150000
//SYSDBOUT DD SYSOUT=*                                                  02160000
//SYSABOUT DD SYSOUT=*                                                  02170000
//SYSUDUMP DD DUMMY                                                     02180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T12),DISP=SHR                   02190000
//*                                                                     02200000
//*                                                                     02200100
//**********************************************************************02210000
//*        TERMINA PROCESO ZMUEPV07 SIVA MULTIEMPRESA                  *02220000
//**********************************************************************02230000
