//ZMCFDC29  PROC
//*====================================================================*
//* PASO     : ZHDB2902                                                *
//* OBJETIVO : OBTIENE CONTRATO Y TITULAR DE CONSTANCIAS RECHAZADAS    *
//*====================================================================*
//ZHDB2902 EXEC PGM=ZM3CFI08
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ECBP.RECHAZO.CANC,DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.PIPMEDC,DISP=SHR
//*
//ENTRADA3 DD DSN=MXCP.ZM.FIX.ECBP.CFDI.ADMMEDC.FS,DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.ECBP.RECHAZO.CANC.TOTAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=104,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSOUT   DD SYSOUT=*
//*
