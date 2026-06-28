//ZMUOPD22 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA : ZM(MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO)            *
//*                                                                    *
//* PROCESO : ZMUOPD22                                                 *
//*                                                                    *
//* REALIZO : JOSE OSCAR SEGURA PEREZ                                  *
//*                                                                    *
//* FECHA   : SEPTIEMBRE, 2012                                         *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*   MARCA      AUTOR   FECHA       DESCRIPCION                       *
//* ----------  ------- ------- ---------------------------------------*
//*   @MEX001     M76893  15FEB23 SE AUMENTA LONGITUD DE ARCHIVO DE    *
//*                               POZOS DE 386 A 389.                  *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*  PASO:PH01FN22                                                     *
//*  PROGRAMA: ZM4DU829                                                *
//*--------------------------------------------------------------------*
//PH01FN22 EXEC PGM=IKJEFT01
//*
//ASIGNET  DD DSN=MXCP.ZM.FIX.REPORTE.ASIGNET,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//*@MEX001-I
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=386,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=389,BLKSIZE=0),
//*@MEX001-F
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZH01FN22),DISP=SHR
//*
