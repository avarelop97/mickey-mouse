//ZMPCMI10 PROC
//*
//**********************************************************************
//*                                                                    *
//* OBJETIVO : JUNTA ARCHIVOS DE VALUACION                             *
//*                                                                    *
//**********************************************************************
//ZMPCMI10 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.VALUAC.F&FECHA..ZM4DU899,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.VALCAP.F&FECHA..ZM4DU898,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECOMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCT1001),DISP=SHR
