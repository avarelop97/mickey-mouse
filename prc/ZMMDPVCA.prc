//ZMMDPVCA PROC                                                         00010001
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVCA  ***             00030000
//* PGM ZM4VMWCA   ARCHIVO DE CNTL A PARTIR DE LA TABLA DE CAPAS MDDCST 00040000
//*-------------------------------------------------------------------- 00050000
//PMDCAP03 EXEC PGM=IKJEFT01                                            00240000
//*                                                                     00250000
//ZMMWCAA1 DD DSN=MXCP.ZM.FIX.CNTL.CAPAS.RETIROS,                       00252000
//            DISP=(NEW,CATLG,DELETE),                                  00253000
//            UNIT=3390,SPACE=(CYL,(5,3),RLSE),                         00254000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=263,BLKSIZE=0)               00255000
//*                                                                     00256000
//ZMMWCAA2 DD DSN=MXCP.ZM.FIX.CNTL.CAPAS.RETIDIN,                       00256100
//            DISP=(NEW,CATLG,DELETE),                                  00256200
//            UNIT=3390,SPACE=(CYL,(5,3),RLSE),                         00256300
//            DCB=(RECFM=FB,DSORG=PS,LRECL=300,BLKSIZE=0)               00256400
//*                                                                     00256500
//SYSTSPRT DD SYSOUT=*                                                  00360000
//SYSPRINT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//SYSDBOUT DD SYSOUT=*                                                  00390000
//SYSABOUT DD DUMMY                                                     00400000
//SYSUDUMP DD DUMMY                                                     00410000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDCAT01),DISP=SHR                   00420000
//*                                                                     00420010
//*-------------------------------------------------------------------- 00420020
//PMDCAP02 EXEC PGM=ICEGENER,COND=(4,LT)                                00420100
//SYSPRINT DD SYSOUT=*                                                  00420200
//SYSUT1   DD DSN=MXCP.ZM.FIX.CNTL.CAPAS.RETIROS,DISP=SHR               00420300
//SYSUT2   DD DSN=MXCP.ZM.FIX.MIG061.CAPBUC2,                           00420400
//            DISP=(NEW,CATLG,CATLG),                                   00420500
//            DCB=(LRECL=263,BLKSIZE=0,DSORG=PS,RECFM=FB),              00420600
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00420700
//SYSIN    DD DUMMY                                                     00420800
//*                                                                     00420900
//*-------------------------------------------------------------------- 01100000
