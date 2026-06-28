//ZMMDPVC0 PROC                                                         00010000
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVC0  ***             00030000
//* PGM ZM4VMWC0   ARCHIVO DE CNTL A PARTIR DE LA TABLA DE CAPAS MDDCST 00040000
//*-------------------------------------------------------------------- 00050000
//PMDC0P03 EXEC PGM=IKJEFT01                                            00240000
//*                                                                     00250000
//ZMMWC0A1 DD DSN=MXCP.ZM.FIX.CNTL.CAPAS.DEPOSITO,                      00252000
//            DISP=(NEW,CATLG,DELETE),                                  00253000
//            UNIT=3390,SPACE=(CYL,(5,3),RLSE),                         00254000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=263,BLKSIZE=0)               00255000
//*                                                                     00256000
//SYSTSPRT DD SYSOUT=*                                                  00360000
//SYSPRINT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//SYSDBOUT DD SYSOUT=*                                                  00390000
//SYSABOUT DD DUMMY                                                     00400000
//SYSUDUMP DD DUMMY                                                     00410000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC0T01),DISP=SHR                   00420000
//*-------------------------------------------------------------------- 00730000
//* PGM ZM4VMWJJ   ARCHIVO DE POSICIONES DE MDD                         00760000
//*-------------------------------------------------------------------- 00770000
//PMDC0P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780001
//*                                                                     00790000
//ZMMWJJA1 DD DSN=MXCP.ZM.FIX.CNTL.POSICION.MDD,                        00791000
//            DISP=(NEW,CATLG,DELETE),                                  00792000
//            UNIT=3390,SPACE=(CYL,(05,3),RLSE),                        00793000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=107,BLKSIZE=0)               00794000
//*                                                                     00840000
//SYSTSPRT DD SYSOUT=*                                                  00850000
//SYSPRINT DD SYSOUT=*                                                  00860000
//SYSOUT   DD SYSOUT=*                                                  00870000
//SYSDBOUT DD SYSOUT=*                                                  00880000
//SYSABOUT DD DUMMY                                                     00890000
//SYSUDUMP DD DUMMY                                                     00900000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC0T02),DISP=SHR                   00910000
//*-------------------------------------------------------------------- 00920000
//* PGM ZM4VMWC5   ARCHIVO DE COMPARACION ENTRE CAPAS Y CARTERA         00940000
//*-------------------------------------------------------------------- 00950000
//PMDC0P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00960001
//*                                                                     00970000
//ZMMWC5A1 DD DSN=MXCP.ZM.FIX.CNTL.COMDD,                               00971000
//            DISP=(NEW,CATLG,DELETE),                                  00972000
//            UNIT=3390,SPACE=(CYL,(5,3),RLSE),                         00973000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=95,BLKSIZE=0)                00974000
//ZMMWC5A2 DD DSN=MXCP.ZM.FIX.CNTL.COMDC,                               00975000
//            DISP=(NEW,CATLG,DELETE),                                  00976000
//            UNIT=3390,SPACE=(CYL,(5,3),RLSE),                         00977000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=76,BLKSIZE=0)                00978000
//*                                                                     01020000
//SYSTSPRT DD SYSOUT=*                                                  01030000
//SYSPRINT DD SYSOUT=*                                                  01040000
//SYSOUT   DD SYSOUT=*                                                  01050000
//SYSDBOUT DD SYSOUT=*                                                  01060000
//SYSABOUT DD DUMMY                                                     01070000
//SYSUDUMP DD DUMMY                                                     01080000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC0T03),DISP=SHR                   01090000
//*-------------------------------------------------------------------- 01100000
