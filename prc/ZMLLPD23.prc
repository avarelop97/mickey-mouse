//ZMLLPD23 PROC
//**********************************************************************
//* PROCESO        : ZMLLPD23                                          *
//* DESCRIPCION    : PREPARACION DE REGISTROS PARA AMORTIZACION        *
//*                  ANTICPADA                                         *
//* REALIZO        : CAPGEMINI                                         *
//* FECHA          : MAYO 2012                                         *
//**********************************************************************
//* PASO     : PLT23P20                                                *
//* OBJETIVO :                                                         *
//* PROGRAMA : ZM4OLL41                                                *
//**********************************************************************
//PLT23P20 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.SIVA.MUV.ZMLLPD23,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//**********************************************************************
//* PASO     : PLT23P10                                                *
//* OBJETIVO : REALIZA PRORRATEO DE LA NOTA ESTRUCTURADA               *
//* PROGRAMA : ZM4OLL41                                                *
//**********************************************************************
//PLT23P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DISP=SHR,DSN=MXCP.ZM.TMP.MDD.SIVA.MUV.ZXLLPD23
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL23T10),DISP=SHR
//**********************************************************************
//*  PROGRAMA: ZM4DLE11
//*  FUNCION:  ACTUALIZA EL FINAL DEL PROCESO DE PRORRATEO
//*           (ACT EN "F" EL EVENTO D23).
//**********************************************************************
//PLT23P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.SIVA.MUV.ZMLLPD23,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL23T08),DISP=SHR
//*
//*****************************************************************
