//BCPMTRPL  PROC                                                        00010025
//*====================================================================*
//* ELABORO : HECTOR CAMACHO (ACCENTURE).                              *
//*====================================================================*
//PHC00009 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//ZMJTRASP DD DSN=MXC&AMB..ZM.FIX.BC.PLDMUVD.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=524,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(BCCMTRPL),DISP=SHR                   01230041
//*====================================================================*
