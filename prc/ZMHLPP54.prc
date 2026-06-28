//ZMHLPP54 PROC
//*
//*******************************************************************
//*   RECEPCION DE PARAMETROS
//*******************************************************************
//PHL54P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MDD.ZMHLPP54,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*--------------------------------------------------------------------*
//*PASO:PHL54P01                                                       *
//*PROGRAMA: ZM4SIV02                                                  *
//*DESCRIPCION: REGENERACION DE CAPAS ISR MERCADO DE DINERO  (2/2)     *
//*                                                                    *
//*--------------------------------------------------------------------*
//PHL54P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ARCISR2  DD DSN=MXCP.ZM.FIX.EBCM.CAPAS.ISR02,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390
//*
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZH1OT082),DISP=SHR
//*
