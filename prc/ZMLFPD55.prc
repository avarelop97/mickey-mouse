//ZMLFPD55 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM / MODULO DE SIVA MILTIEMPRESA ALTAMIRIZADO           *
//*                                                                    *
//* PROCESO  : ZMLFPD55                                                *
//*                                                                    *
//* OBJETIVO : ESTE PROCESO ES DISPARADO DESDE LOS PROCESOS MENSUALES  *
//*            Y EXTRAE Y GUARDA LA INFORMACION DE TODA LA OPERACION   *
//*            MENSUAL DE LOS CONTRATOS DE LA CASA DE BOLSA (BCP Y BCM)*
//*                                                                    *
//* REALIZO  : SOFTTEK (ANBH)                                          *
//*                                                                    *
//* FECHA    : 09-04-2014                                              *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : PLF55P40                                              *
//* UTILERIA   : IKJEFT01                                              *
//* PROGRAMA   : ZM4ILL26                                              *
//* OBJETIVO   : RECUPERA LAS OPERACIONES DEL MES QUE SE ESTA CERRANDO *
//*              Y LAS GRABA EN UN ARCHIVO SECUENCIAL.                 *
//*--------------------------------------------------------------------*
//PLF55P40 EXEC PGM=IKJEFT01
//*
//ZMLL26S1 DD DSN=MXC&AMB..ZM.FIX.EBCM.ZMLFPD55.OPERAS,
//             DISP=(NEW,CATLG,CATLG),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//             DCB=(DSORG=PS,RECFM=FB,LRECL=240,BLKSIZE=0)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSCOUNT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF55T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PLF55P30                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SORTEA ARCHIVO.                                       *
//*--------------------------------------------------------------------*
//PLF55P30 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.EBCM.ZMLFPD55.OPERAS,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.EBCM.ZMLFPD55.SORT01,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(BLKSIZE=0,DSORG=PS,LRECL=240,RECFM=FB,BUFNO=30)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF53T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PLF55P20                                              *
//* PROGRAMA   : ZM3ILL22                                              *
//* OBJETIVO   : ACUMULA IMPORTES A NIVEL DE CUENTA, PRODUCTO Y CLAVE  *
//*              DE OPERACION Y GRABA ARCHIVO.                         *
//*--------------------------------------------------------------------*
//PLF55P20 EXEC PGM=ZM3ILL22,COND=(4,LT)
//*
//ZMLL22E1 DD DSN=MXC&AMB..ZM.FIX.EBCM.ZMLFPD55.SORT01,
//            DISP=SHR
//*
//ZMLL22S1 DD DSN=MXC&AMB..ZM.FIX.EBCM.ZMLFPD55.CVEOPE1,
//             DISP=(NEW,CATLG,CATLG),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//             DCB=(DSORG=PS,RECFM=FB,LRECL=240,BLKSIZE=0)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSCOUNT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PLF55P10                                              *
//* UTILERIA   : IKJEFT01                                              *
//* PROGRAMA   : ZM4ILL23                                              *
//* OBJETIVO   : ACUMULA IMPORTES A NIVEL DE CUENTA, PRODUCTO Y GRABA  *
//*              LA TABLA ZMDT115.                                     *
//*--------------------------------------------------------------------*
//PLF55P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL23E1 DD DSN=MXC&AMB..ZM.FIX.EBCM.ZMLFPD55.SORT01,
//            DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSCOUNT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLF53T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLFPD55                        *
//*--------------------------------------------------------------------*
