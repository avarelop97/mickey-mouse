//ZMPWTR28  PROC                                                        00010025
//*====================================================================*
//* PASO     : ZHDB2802                                                *
//* OBJETIVO : OBTIENE CONTRATO Y TITULAR DE CONSTANCIAS RECHAZADAS    *
//*====================================================================*
//ZHDB2802 EXEC PGM=ZM3CFI08
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.EBTR.RECHAZO.CONS,DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.PIPMEDC,DISP=SHR
//*
//ENTRADA3 DD DSN=MXCP.ZM.FIX.EBTR.CFDI.ADMMEDC.FS,DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.EBTR.RECHAZO.CONS.TOTAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=104,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//*
