//ZMHLPV30 PROC
//*--------------------------------------------------------------------*
//* PASO     : ZMPV3010                                                *
//* UTILERIA : IKJEFT01                                                *
//* OBJETIVO : GENERA CARGA INICIAL DE LA TABLA ZMDT800                *
//*--------------------------------------------------------------------*
//ZMPV3010 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZMNV3010)
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPV3005                                                *
//* UTILERIA : IKJEFT01                                                *
//* OBJETIVO : ACTUALIZA FORMATO W8 DE LA TABLA ZMDT800                *
//*--------------------------------------------------------------------*
//ZMPV3005 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZMNV3005)
//*--------------------------------------------------------------------*
//* PASO     : ZMPV3001                                                *
//* UTILERIA : IKJEFT01                                                *
//* OBJETIVO : ACTUALIZA COMPROBANTE DE RESIDENCIA DE LA TABLA ZMDT110 *
//*--------------------------------------------------------------------*
//ZMPV3001 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZMNV3001)
//*                                                                    *
