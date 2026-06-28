//ZMMDPV23 PROC                                                         00010000
//*                                                                     00020000
//*-------------------------------------------------------------------- 00180000
//* CORRE PGM:ZM4VMW45 (MOVHIS) CARGA CARTERA                           00190000
//*-------------------------------------------------------------------- 00200000
//*                                                                     00210000
//PMD23P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00220000
//*                                                                     00230000
//SYSTSPRT DD SYSOUT=*                                                  00240000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00260000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD23T02),DISP=SHR                   00300000
//*                                                                     00310000
//*-------------------------------------------------------------------- 00320000
//* CORRE PGM:ZM4VMW46 (MOVHIS) CARGA SECART                            00330000
//*-------------------------------------------------------------------- 00340000
//*                                                                     00350000
//PMD23P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00360000
//*                                                                     00370000
//ZMMW46R1 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.REP,                           00380000
//            DISP=(NEW,CATLG,DELETE),                                  00390000
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00400000
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)               00410000
//*                                                                     00420000
//SYSTSPRT DD SYSOUT=*                                                  00430000
//SYSPRINT DD SYSOUT=*                                                  00440000
//SYSOUT   DD SYSOUT=*                                                  00450000
//SYSDBOUT DD SYSOUT=*                                                  00460000
//SYSABOUT DD DUMMY                                                     00470000
//SYSUDUMP DD DUMMY                                                     00480000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD23T01),DISP=SHR                   00490000
//*                                                                     00500000
