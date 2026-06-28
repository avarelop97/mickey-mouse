//ZMHLPP60 PROC
//*
//*******************************************************************
//*   RECEPCION DE PARAMETROS
//*******************************************************************
//PHL60P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SDI.ZMHLPP60,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*--------------------------------------------------------------------*
//*PASO:PHL60P01                                                       *
//*PROGRAMA: ZM4MU280                                                  *
//*DESCRIPCION: REGENERA COSTO PROMEDIO PONDERADO FISCAL EN LAS TABLAS *
//*             DE PRECIO Y ZMDT111                                    *
//*--------------------------------------------------------------------*
//PHL60P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZME010A1 DD DSN=MXCP.ZM.FIX.SDI.ZMHLPP60,DISP=SHR
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T11),DISP=SHR
//*
//**********************************************************************
//*                  TERMINA ZMHLPP60
//**********************************************************************
