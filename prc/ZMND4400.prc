//ZMND4400 PROC
//**********************************************************************
//*                   C. B.                                            *
//* SISTEMA        :  SISTEMA INTEGRAL DE INFORMACION ESTADISTICA      *
//*                               (S. I. I. E.)                        *
//**                                                                   *
//* PROCESO        :  EXTRACTORES DE ADMINISTRACION DE PROMOCION       *
//*                                                                    *
//* OBJETIVO       :  CONCATENA DOS ARCHIVOS EN UNO SOLO DE SALIDA     *
//*                                                                    *
//* CORRE          :  DESPUES DEL SIIE                                 *
//*                                                                    *
//* REALIZO        :  CDA INFORMATICA                                  *
//*                                                                    *
//* FECHA          :  MAYO DE 2010                                     *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//**
//**********************************************************************00002000
//*       FORMATEA ARCHIVO A NUEVO LAYOUT PARA SAP                     *00050000
//**********************************************************************00060000
//ZLF44P05 EXEC PGM=IDCAMS                                              00070000
//SYSOUT   DD SYSOUT=X                                                  00090000
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//INFILE   DD DSN=SIVA.SIE.FIX.IDAPMES2.NUEVO,DISP=SHR                  00100000
//OUTFILE  DD DSN=SIVA.SIE.FIX.IDAPMES.NUEVO,DISP=MOD                   00130000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF44T05),DISP=SHR                   00130000
//*                                                                     00130000
