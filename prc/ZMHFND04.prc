//ZMHFND04 PROC
//**********************************************************************
//* APLICACION  : VISA                                                 *
//* PROCESO     : ZMHFND04                                             *
//* OBJETIVO    : RECIBE LOS PARAMETROS ENVIADOS DE CICS               *
//*               Y LOS GRABA EN ARCHIVO.                              *
//*PERIODICIDAD : DIARIO.
//* REALIZO     : SWF-BBVA ACCENTURE (XM09432).                        *
//* FECHA       : 03/NOVIEMBRE/2010.                                   *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-03  CDRXXX  DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//* PASO        : PHF04P02                                             *
//* PROGRAMA    : ZM3DG001.                                            *
//* OBJETIVO    : DEFINITIVO.                                          *
//* REINICIO DESDE ESTE PASO.                                          *
//**********************************************************************
//PHF04P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.VAL.E&EMP..S&SUC..ZMHFPD04,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//* PASO        : PHF04P01                                             *
//* PROGRAMA    : IKJEFT01                                             *
//* OBJETIVO    : DEFINITIVO.                                          *
//* REINICIO DESDE ESTE PASO.                                          *
//*
//**********************************************************************
//PHF04P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHA20A1 DD DSN=MXC&AMB..ZM.FIX.VAL.E&EMP..S&SUC..ZMHFPZ04,
//            DISP=SHR
//*
//ZMHA20R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHA20R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF03T01),DISP=SHR
//*
