//ZMPFID0A PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00050002
//* PROCESO        :  ZMPFID0A                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  GENERA ARCHIVO CON LAS BAJAS DE CUENTAS MUV Y    *00090002
//*                   FIDEICOMISOS.                                    *00150002
//* REALIZACION    :  GETRONICS MAYO 2016                              *00160002
//*                                                                    *00170002
//**********************************************************************
//* PASO    : FID0AP34                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: TRANSFIERE ARCHIVO CON COMAS A FORMATO DE ENTRADA.       *
//**********************************************************************
//FID0AP34 EXEC PGM=ZM3CFIDC,COND=(4,LT)
//PI601765 DD DUMMY
//E1DQFIDC DD DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A,DISP=SHR
//S1DQFIDC DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.SINCOM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=50,BLKSIZE=0)
//S2DQFIDC DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ENCAB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=50,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                    *00170002
//**********************************************************************
//* PASO    : FID0AP33                                                 *
//* PROGRAMA: ICETOOL                                                  *
//* OBTENER LOS DUPLICADOS                                             *
//* OBTENER LOS NO DUPLICADOS                                          *
//**********************************************************************
//FID0AP33 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//ENTRADA  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.SINCOM,DISP=SHR
//DUPLIC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.DUPSINC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=50,BLKSIZE=0,DSORG=PS)
//NODUPS   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NODUPLIC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=50,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT59),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP32                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA CUENTA.                             *
//**********************************************************************
//FID0AP32 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,FID0AP57,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ZCUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS,LRECL=53)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFIDT57),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP31                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA ZMDT609.                            *
//**********************************************************************
//FID0AP31 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,FID0AP56,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ZMDT609,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS,LRECL=16)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFIDT56),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP30                                                 *
//* PROGRAMA: ZM4CFIDA                                                 *
//* OBJETIVO: SE HACE MATCH ENTRE ARCHIVOS DE CUENTA,ZMDT609 Y ZMDT930.*
//**********************************************************************
//FID0AP30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ZCUENTA,DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ZMDT609,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.CTASMUV,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0,LRECL=114),
//            UNIT=3390
//*
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMFIDT55),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP29                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SE ORDENAN LOS ARCHIVOS POR CUENTA                       *
//**********************************************************************
//FID0AP29 EXEC  PGM=ICETOOL,COND=(4,LT)                                04074064
//SYSOUT   DD SYSOUT=*                                                  04075062
//TOOLMSG  DD SYSOUT=*                                                  04076062
//DFSMSG   DD SYSOUT=*                                                  04077062
//SORTIN1  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.CTASMUV,DISP=SHR        04078062
//SORTOUT1 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.CTASMUV.SORT,           04079062
//            DISP=(NEW,CATLG,DELETE),                                  04083367
//            DCB=(RECFM=FB,LRECL=114,BLKSIZE=0,DSORG=PS),              04083467
//            SPACE=(CYL,(350,50),RLSE),UNIT=3390                       04083567
//*
//SORTIN2  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NODUPLIC,DISP=SHR       04083167
//SORTOUT2 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.SINCOM.SORT,            04083267
//            DISP=(NEW,CATLG,DELETE),                                  04083367
//            DCB=(RECFM=FB,LRECL=50,BLKSIZE=0,DSORG=PS),               04083467
//            SPACE=(CYL,(50,20),RLSE),UNIT=3390                        04083567
//*                                                                     04079462
//OUT      DD SYSOUT=*                                                  04079562
//SRT1CNTL DD DSN=ZIVA.ZME.CONTROL(ZMFIDT54),DISP=SHR                   04079662
//SRT2CNTL DD DSN=ZIVA.ZME.CONTROL(ZMFIDT53),DISP=SHR                   04079662
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT52),DISP=SHR                   04080162
//*
//**********************************************************************
//* PASO    : FID0AP28                                                 *
//* PROGRAMA: ZM3CFIDF                                                 *
//* OBJETIVO: SE HACE MATCH ENTRE CUENTAS MUV Y FIDEICOMISOS.          *
//**********************************************************************
//FID0AP28 EXEC PGM=ZM3CFIDF,COND=(4,LT)
//PI601765 DD DUMMY
//E1DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.CTASMUV.SORT,DISP=SHR
//E2DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.SINCOM.SORT,DISP=SHR
//E3DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.DUPSINC,DISP=SHR
//S1DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCH.BAJAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(150,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=72,BLKSIZE=0)
//S2DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(150,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=131,BLKSIZE=0)
//S3DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(120,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=54,BLKSIZE=0)
//S4DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(120,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=53,BLKSIZE=0)
//S5DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(120,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=53,BLKSIZE=0)
//S6DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.CIFRAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0)
//S7DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ARCHCIFR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=320,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO    : FID0AP27                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA ORDENAR ARCHIVO AHORA POR CTA BPIGO            *
//**********************************************************************
//FID0AP27 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF,DISP=SHR      04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.SBPGO,        04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=131,BLKSIZE=0,DSORG=PS),             04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT51),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP26                                                 *
//* PROGRAMA: ZM3CFIDG                                                 *
//* OBJETIVO: SE HACE MATCH ENTRE CUENTAS MUV Y FIDEICOMISOS BPIGO     *
//**********************************************************************
//FID0AP26 EXEC PGM=ZM3CFIDG,COND=(4,LT)
//PI601765 DD DUMMY
//E1DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.SBPGO,
//            DISP=SHR
//E2DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV,DISP=SHR
//E3DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.DUPSINC,DISP=SHR
//E4DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ARCHCIFR,DISP=SHR
//S1DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCH.BAJBPIGO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(150,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=72,BLKSIZE=0)
//S2DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.BPIGO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(150,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=131,BLKSIZE=0)
//S3DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.BPIGO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(120,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=54,BLKSIZE=0)
//S4DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.BPIGO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(120,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=53,BLKSIZE=0)
//S5DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.BPIGO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(120,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=53,BLKSIZE=0)
//S6DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.CIFRAS.BPIGO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0)
//S7DQFIDB DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ARCHCIFT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=320,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO    : FID0AP25                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA ORDENAR ARCHIVO BAJAS                          *
//**********************************************************************
//FID0AP25 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCH.BAJAS,DISP=SHR   04083167
//         DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCH.BAJBPIGO,        04083167
//             DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCH.BAJTOT,          04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=72,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT49),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP24                                                 *
//* PROGRAMA: ZM4CFIDD                                                 *
//* OBJETIVO: SE MANDA A LLAMAR EL PROGRAMA ZM4CFIDD.                  *
//**********************************************************************
//FID0AP24 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCH.BAJTOT,
//            DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.CIFRAS.BPIGO,DISP=SHR
//*
//ENTRADA3 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ARCHCIFT,DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.BAJASOK,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0,LRECL=92),
//            UNIT=3390
//*
//SALIDA02 DD DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.BAJASNOK,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0,LRECL=140),
//            UNIT=3390
//*
//SALIDA03 DD DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.CIFRAS.PREV,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0,LRECL=80),
//            UNIT=3390
//*
//SALIDA04 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ARCHCIF2,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0,LRECL=320),
//            UNIT=3390
//*
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMFIDT48),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP23                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: EXTRAER LA CABECERA DE LOS ARCHIVOS DE SALIDA            *
//**********************************************************************
//FID0AP23 EXEC  PGM=ICETOOL,COND=(4,LT)                                04074064
//SYSOUT   DD SYSOUT=*                                                  04075062
//TOOLMSG  DD SYSOUT=*                                                  04076062
//DFSMSG   DD SYSOUT=*                                                  04077062
//SORTIN1  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV,DISP=SHR       04078062
//SORTOUT1 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.CAB,           04079062
//            DISP=(NEW,CATLG,DELETE),                                  04083367
//            DCB=(RECFM=FB,LRECL=54,BLKSIZE=0,DSORG=PS),               04083467
//            SPACE=(CYL,(2,1),RLSE),UNIT=3390                          04083567
//*
//SORTIN2  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF,DISP=SHR       04083167
//SORTOUT2 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.CAB,           04083267
//            DISP=(NEW,CATLG,DELETE),                                  04083367
//            DCB=(RECFM=FB,LRECL=131,BLKSIZE=0,DSORG=PS),              04083467
//            SPACE=(CYL,(2,1),RLSE),UNIT=3390                          04083567
//*
//SORTIN3  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ,DISP=SHR       04083167
//SORTOUT3 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.CAB,           04083267
//            DISP=(NEW,CATLG,DELETE),                                  04083367
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),               04083467
//            SPACE=(CYL,(2,1),RLSE),UNIT=3390                          04083567
//*
//SORTIN4  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ,DISP=SHR        04083167
//SORTOUT4 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.CAB,            04083267
//            DISP=(NEW,CATLG,DELETE),                                  04083367
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),               04083467
//            SPACE=(CYL,(2,1),RLSE),UNIT=3390                          04083567
//*                                                                     04079462
//OUT      DD SYSOUT=*                                                  04079562
//SRT1CNTL DD DSN=ZIVA.ZME.CONTROL(ZMFIDT39),DISP=SHR                   04079662
//SRT2CNTL DD DSN=ZIVA.ZME.CONTROL(ZMFIDT29),DISP=SHR                   04079662
//SRT3CNTL DD DSN=ZIVA.ZME.CONTROL(ZMFIDT19),DISP=SHR                   04079662
//SRT4CNTL DD DSN=ZIVA.ZME.CONTROL(ZMFIDT09),DISP=SHR                   04079662
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT40),DISP=SHR                   04080162
//*
//**********************************************************************
//* PASO    : FID0AP22                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA ORDENAR ARCHIVO MUV NO NSF PARA PREP CIFRA FIN *
//**********************************************************************
//FID0AP22 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.BPIGO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.TOTAL,         04083267
//            DISP=(NEW,CATLG,DELETE),                                  04083367
//            DCB=(RECFM=FB,LRECL=54,BLKSIZE=0,DSORG=PS),               04083467
//            SPACE=(CYL,(50,20),RLSE),UNIT=3390                        04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT38),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP21                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* SORT PARA OBTENER LOS DUPLICADOS                                   *
//* SORT PARA OBTENER LOS NO DUPLICADOS                                *
//**********************************************************************
//FID0AP21 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//ENTRADA  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.TOTAL,DISP=SHR
//DUPLIC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.DUPS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=54,BLKSIZE=0,DSORG=PS)
//NODUPS   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.NODUP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=54,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT37),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP20                                                 *
//* PROGRAMA: ICETOOL                                                  *
//* SORT PARA OBTENER PRIMERA OCURRENCIA EN DUPLICADOS                 *
//**********************************************************************
//FID0AP20 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//DUPLIC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.DUPS,DISP=SHR
//FIRST    DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.FIRST,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=54,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT35),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP19                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS                            *
//**********************************************************************
//FID0AP19 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.NODUP,        04083167
//             DISP=SHR                                                 04083167
//*        DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.FIRST,        04083167
//*            DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.TOTA1,        04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=54,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT34),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP18                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA AGREGAR CABECERA A ARCHIVO DE TOTALES          *
//**********************************************************************
//FID0AP18 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.CAB,          04083167
//             DISP=SHR                                                 04083167
//         DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.NSFNOMUV.TOTA1,        04083167
//             DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.NSFNOMUV.FIN,          04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=54,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT33),DISP=SHR
//**********************************************************************
//* PASO    : FID0AP17                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA ORDENAR ARCHIVO MUV NO NSF PARA PREP CIFRA FIN *
//**********************************************************************
//FID0AP17 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.BPIGO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.TOTAL,         04083267
//            DISP=(NEW,CATLG,DELETE),                                  04083367
//            DCB=(RECFM=FB,LRECL=131,BLKSIZE=0,DSORG=PS),              04083467
//            SPACE=(CYL,(50,20),RLSE),UNIT=3390                        04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT28),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP16                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* SORT PARA OBTENER LOS DUPLICADOS                                   *
//* SORT PARA OBTENER LOS NO DUPLICADOS                                *
//**********************************************************************
//FID0AP16 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//ENTRADA  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.TOTAL,DISP=SHR
//DUPLIC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.DUPS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=131,BLKSIZE=0,DSORG=PS)
//NODUPS   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.NODUP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=131,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT27),DISP=SHR
//*
//**********************************************  **********************
//* PASO    : FID0AP15                                                 *
//* PROGRAMA: ICETOOL                                                  *
//* SORT PARA OBTENER PRIMERA OCURRENCIA EN DUPLICADOS                 *
//**********************************************************************
//FID0AP15 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//DUPLIC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.DUPS,DISP=SHR
//FIRST    DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.FIRST,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=131,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT25),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP14                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS                            *
//**********************************************************************
//FID0AP14 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.NODUP,        04083167
//             DISP=SHR                                                 04083167
//*        DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.FIRST,        04083167
//*            DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.TOTA1,        04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=131,BLKSIZE=0,DSORG=PS),             04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT24),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP13                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA AGREGAR CABECERA A ARCHIVO DE TOTALES          *
//**********************************************************************
//FID0AP13 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.CAB,          04083167
//             DISP=SHR                                                 04083167
//         DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MUVNONSF.TOTA1,        04083167
//             DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.MUVNONSF.FIN,          04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=131,BLKSIZE=0,DSORG=PS),             04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT23),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP12                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA ORDENAR ARCHIVO MUV NO NSF PARA PREP CIFRA FIN *
//**********************************************************************
//FID0AP12 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.BPIGO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.TOTAL,         04083267
//            DISP=(NEW,CATLG,DELETE),                                  04083367
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),               04083467
//            SPACE=(CYL,(50,20),RLSE),UNIT=3390                        04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT18),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP11                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* SORT PARA OBTENER LOS DUPLICADOS                                   *
//* SORT PARA OBTENER LOS NO DUPLICADOS                                *
//**********************************************************************
//FID0AP11 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//ENTRADA  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.TOTAL,DISP=SHR
//DUPLIC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.DUPS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS)
//NODUPS   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.NODUP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT17),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP10                                                 *
//* PROGRAMA: ICETOOL                                                  *
//* SORT PARA OBTENER PRIMERA OCURRENCIA EN DUPLICADOS                 *
//**********************************************************************
//FID0AP10 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//DUPLIC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.DUPS,DISP=SHR
//FIRST    DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.FIRST,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT15),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP09                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS                            *
//**********************************************************************
//FID0AP09 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.NODUP,        04083167
//             DISP=SHR                                                 04083167
//         DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.FIRST,        04083167
//             DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.TOTA1,        04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT14),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP08                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS                            *
//**********************************************************************
//FID0AP08 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.CAB,          04083167
//             DISP=SHR                                                 04083167
//         DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHNEQ.TOTA1,        04083167
//             DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.MATCHNEQ,              04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT13),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP07                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA AGREGAR PUNTO Y COMA AL ARCHIVO                *
//**********************************************************************
//FID0AP07 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.DUPSINC,               04083167
//             DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.DUPLIC,                04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=50,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT12),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP06                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS                            *
//**********************************************************************
//FID0AP06 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ENCAB,                 04083167
//             DISP=SHR                                                 04083167
//         DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.DUPLIC,                04083167
//             DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.DUPLIC,                04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=50,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT11),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP05                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA ORDENAR ARCHIVO MUV NO NSF PARA PREP CIFRA FIN *
//**********************************************************************
//FID0AP05 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.BPIGO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.TOTAL,          04083267
//            DISP=(NEW,CATLG,DELETE),                                  04083367
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),               04083467
//            SPACE=(CYL,(50,20),RLSE),UNIT=3390                        04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT08),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP04                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* SORT PARA OBTENER LOS DUPLICADOS                                   *
//* SORT PARA OBTENER LOS NO DUPLICADOS                                *
//**********************************************************************
//FID0AP04 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//ENTRADA  DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.TOTAL,DISP=SHR
//DUPLIC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.DUPS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS)
//NODUPS   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.NODUP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT07),DISP=SHR
//*
//********************************************************************
//* PASO    : FID0AP03                                                 *
//* PROGRAMA: ICETOOL                                                 *
//* SORT PARA OBTENER PRIMERA OCURRENCIA EN DUPLICADOS
//********************************************************************
//FID0AP03 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//DUPLIC   DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.DUPS,DISP=SHR
//FIRST    DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.FIRST,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMFIDT05),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP02                                                 *
//* PROGRAMA: ICEMAN                                                  *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS                            *
//**********************************************************************
//FID0AP02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.NODUP,         04083167
//             DISP=SHR                                                 04083167
//         DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.FIRST,         04083167
//             DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.TOTA1,         04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT04),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP01                                                 *
//* PROGRAMA: ICEMAN                                                  *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS                            *
//**********************************************************************
//FID0AP01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.CAB,           04083167
//             DISP=SHR                                                 04083167
//         DD  DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.MATCHEQ.TOTA1,         04083167
//             DISP=SHR                                                 04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.MATCHEQ,               04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=53,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMFIDT03),DISP=SHR
//*
//**********************************************************************
//* PASO    : FID0AP00                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: SE MANDA A LLAMAR EL PROGRAMA ZM4CFIDE.                  *
//**********************************************************************
//FID0AP00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.NSFNOMUV.FIN,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.MUVNONSF.FIN,
//            DISP=SHR
//*
//ECIFRAS1 DD DSN=MXCP.ZM.TMP.FIDEICOM.BCJFID0A.ARCHCIF2,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.NSFNOMUV,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0,LRECL=54),
//            UNIT=3390
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.MUVNONSF,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0,LRECL=131),
//            UNIT=3390
//*
//SALIDA3  DD DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.EXCEPCIP,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0,LRECL=120),
//            UNIT=3390
//*
//SCIFRAS1 DD DSN=MXCP.ZM.FIX.FIDEICOM.BCJFID0A.CIFRAS,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0,LRECL=80),
//            UNIT=3390
//*
//QRLSDB2  DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMFIDT00),DISP=SHR
