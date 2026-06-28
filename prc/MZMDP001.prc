//MZMDP001 PROC
//*
//**********************************************************************
//* APLICACION  : ZM - IAO. MUV Y SAT.                                 *
//* PROCESO     : MZMDP001                                             *
//* OBJETIVO    : INTERFAR DE CONFIRMACION DE OPERACIONES DE MERCADO DE*
//*               CAPITALES.                                           *
//* REALIZO     : FABRICA DE SOFTWARE BBVA BANCOMER (XM09287)          *
//* FECHA       : 20/DICIEMBRE/2010.                                   *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-03  CDRXXX  DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *
//*                                                                    *
//**********************************************************************
//* PASO        : ZMP00195                                             *
//* PROGRAMA    : IKJEFT01/ZM4DU095                                    *
//* DESCRIPCION : GENERACION DE INTERFAZ CON LAS CONFIRMACIONES DE     *
//*               OPERACIONES DE MERCADO DE CAPITALES.                 *
//**********************************************************************
//ZMP00195 EXEC PGM=IKJEFT01
//*
//SALIDA01 DD DSN=MXC&AMB..ZM.FIX.INTFMDC.ZM4DU095.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=159,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMP00195),DISP=SHR
//*
//**********************************************************************
//* PASO        : ZMP00190                                             *
//* PROGRAMA    : DMBATCH                                              *
//* DESCRIPCION : TRANSMISIO DE INTERFAZ DE CONFIRMACION DE OPERACIONES*
//*               DE MERCADO DE CAPITALES.                             *
//**********************************************************************
//ZMP00190 EXEC PGM=DMBATCH,COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*
//DMPRINT  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
