//ZMLPCE18 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : BACK-OFFICE                                         *
//* PROCESO      : ZMLPCE18.                                           *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : PERSONAS CON ALGUN INDICIO DE                       *
//*                RESPONSABILIDAD FISCAL EN EUA                       *
//* FECHA        : MAYO DE 2017                                        *
//*--------------------------------------------------------------------*
//* PASO       : PHC18P01.                                             *
//* UTILERIA   : IKJEFT01/ZM4DFA40.                                    *
//* OBJETIVO   : GENERAR ARCHIVO CON LOS REGISTROS.                    *
//*--------------------------------------------------------------------*
//PHC18P01 EXEC PGM=IKJEFT01
//*
//ZMFA40A1 DD DSN=MXCP.ZM.FIX.FATCRS.BACK,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=820,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC18P01),DISP=SHR
//*
