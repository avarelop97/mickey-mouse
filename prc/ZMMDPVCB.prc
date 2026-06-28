//ZMMDPVCB PROC                                                         00010001
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVCB  ***             00030000
//* PGM ZM4VMWCB   ARCHIVO DE CNTL A PARTIR DE LA TABLA DE CAPAS MDDCST 00040000
//*-------------------------------------------------------------------- 00050000
//PMDC0P03 EXEC PGM=IKJEFT01                                            00240000
//*                                                                     00250000
//ZMMWCBA1 DD DSN=MXCP.ZM.FIX.CNTL.CAPAS.DEPOSITO,                      00252000
//            DISP=(NEW,CATLG,DELETE),                                  00253000
//            UNIT=3390,SPACE=(CYL,(5,3),RLSE),                         00254000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=263,BLKSIZE=0)               00255000
//*                                                                     00256000
//ZMMWCBA2 DD DSN=MXCP.ZM.FIX.CNTL.CAPAS.DEPOSDIN,                      00256100
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDCBT01),DISP=SHR                   00420000
//*-------------------------------------------------------------------- 01100000
