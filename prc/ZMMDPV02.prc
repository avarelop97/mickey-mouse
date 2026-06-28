//ZMMDPV02 PROC                                                         00020301
//*---------------------------------------------------------------------00020401
//*                  PROC LO MANDA EJECUTAR BCMDCV02                    00020505
//*                          PGM   ZM4VMW21                             00020605
//*  PROGRAMA QUE GRABA REGISTROS POSBP EN TABLA ZMDTMG2 (CARTERA)      00020705
//*---------------------------------------------------------------------00020805
//*                                                                     00020905
//PMD02P03 EXEC PGM=IKJEFT01                                            00021005
//*                                                                     00022005
//ZMMW21A1 DD DSN=MXCP.ZM.FIX.MIG.POSBP.CESC200,DISP=SHR                00025001
//ZMMW21A2 DD DSN=MXCP.ZM.FIX.MIG.FALTAN.L080,                          00026001
//            DISP=(NEW,CATLG,DELETE),                                  00027001
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00028003
//            DCB=(RECFM=FB,LRECL=080,BLKSIZE=0,DSORG=PS)               00029001
//*                                                                     00032000
//SYSTSPRT DD SYSOUT=*                                                  00034001
//SYSPRINT DD SYSOUT=*                                                  00035001
//SYSOUT   DD SYSOUT=*                                                  00036001
//SYSDBOUT DD SYSOUT=*                                                  00037001
//SYSABOUT DD DUMMY                                                     00038001
//SYSUDUMP DD DUMMY                                                     00039001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD02T03),DISP=SHR                   00039101
//*                                                                     00039601
//*---------------------------------------------------------------------00039701
//*  PROGRAMA ZM4VMW22 CARGA DIARIA  DE SECART                          00039801
//*---------------------------------------------------------------------00039901
//PMD02P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040004
//*                                                                     00040101
//ZMMW22R1 DD DSN=MXCP.ZM.FIX.MIG.POSBP.R132,                           00040501
//            DISP=(NEW,CATLG,DELETE),                                  00040601
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00040704
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)               00040801
//*                                                                     00040802
//SYSTSPRT DD SYSOUT=*                                                  00140001
//SYSPRINT DD SYSOUT=*                                                  00150001
//SYSOUT   DD SYSOUT=*                                                  00160001
//SYSDBOUT DD SYSOUT=*                                                  00170001
//SYSABOUT DD DUMMY                                                     00180001
//SYSUDUMP DD DUMMY                                                     00190001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD02T02),DISP=SHR                   00200001
//*                                                                     00200002
//*-------------------------------------------------------------------- 00211001
//* OBTIENE ARCHIVO DE TABLAS PARA COMPARAR CON LA INF. ENVIADA POR BP  00212001
//*-------------------------------------------------------------------- 00213001
//PMD02P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00214004
//*                                                                     00215001
//ZMMW31A1 DD DSN=MXCP.ZM.FIX.MIG.POSBP.COMPARA,                        00219002
//            DISP=(NEW,CATLG,DELETE),                                  00219101
//            UNIT=3390,                                                00219201
//            SPACE=(CYL,(10,05),RLSE),                                 00219304
//            DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS)               00219401
//*                                                                     00219402
//SYSTSPRT DD SYSOUT=*                                                  00330001
//SYSPRINT DD SYSOUT=*                                                  00340001
//SYSOUT   DD SYSOUT=*                                                  00350001
//SYSDBOUT DD SYSOUT=*                                                  00360001
//SYSABOUT DD DUMMY                                                     00370001
//SYSUDUMP DD DUMMY                                                     00380001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD02T01),DISP=SHR                   00390001
//*                                                                     00390002
//*-------------------------------------------------------------------- 00400002
//* CORRE PGM: ZM4VMW97 REPORTE DE TESTIGOS                             00400003
//*-------------------------------------------------------------------- 00400004
//PMD02P00 EXEC PGM=IKJEFT01                                            00400006
//*                                                                     00400007
//ZMMW97R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00400008
//*                                                                     00400013
//ZMMW97A1 DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR                         00400015
//*                                                                     00400016
//SYSTSPRT DD SYSOUT=*                                                  00400020
//SYSPRINT DD SYSOUT=*                                                  00400030
//SYSOUT   DD SYSOUT=*                                                  00400040
//SYSDBOUT DD SYSOUT=*                                                  00400050
//SYSABOUT DD DUMMY                                                     00400060
//SYSUDUMP DD DUMMY                                                     00400070
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD02T00),DISP=SHR                   00400080
//*                                                                     00400090
