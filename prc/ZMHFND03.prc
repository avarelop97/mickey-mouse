//ZMHFND03 PROC
//*--------------------------------------------------------------------*
//* SISTEMA     : ZM / SIVA MULTI EMPRESA ALTAMIRIZADO                 *
//* PROCESO     : ZMHFND03                                             *
//* PERIODICIDAD: DIARIO                                               *
//* OBJETIVO    : GENERA EL REPORTE PRELIMINAR DEL CORTE DE CUPON TRACS*
//* REALIZO     : ACCENTURE SWF BBVA BANCOMER                          *
//* FECHA       : NOVIEMBRE/   2010                                    *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-03  CDRXXX  DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *
//*                                                                    *
//**********************************************************************
//*
//*--------------------------------------------------------------------*
//* PASO        : PHF03P02                                             *
//* PROGRAMA    : ZM3DG001                                             *
//* DESCRIPCION : PRELIMINAR.                                          *
//* REINICIO DESDE ESTE PASO.                                          *
//*--------------------------------------------------------------------*
//PHF03P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.VAL.E&EMP..S&SUC..ZMHFPD03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO        : PHF03P01                                             *
//* PROGRAMA    : IKJEFT01/ZM4EHA20                                    *
//* DESCRIPCION : PRELIMINAR.                                          *
//* REINICIO DESDE ESTE PASO.                                          *
//*--------------------------------------------------------------------*
//PHF03P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHA20A1 DD DSN=MXC&AMB..ZM.FIX.VAL.E&EMP..S&SUC..ZMHFPZ03,
//            DISP=SHR
//ZMHA20R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHA20R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF03T01),DISP=SHR
//*
