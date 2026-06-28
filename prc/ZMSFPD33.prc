//ZMSFPD33 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMSFPD33                                                *
//*                                                                    *
//* OBJETIVO : LEVANTA CONDICION BCSFCD30_OK EN CONTROL-M DE PU.       *
//*                                                                    *
//* ELABORO  : FSW-TECNOCOM                                            *
//*                                                                    *
//* FECHA    : 02-01-2013                                              *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                       LOG DE MODIFICACIONES                        *
//*--------------------------------------------------------------------*
//* MARCA   AUTOR        FECHA              DESCRIPCION                *
//* ------  --------    -------  --------------------------------------*
//* AGR01   ANGELICA    20JUN14  SE CAMBIA EL WDATE POR ODATE EN LA    *
//* ANS     GARCIA               CONDICION BCSFCD30_OK  PARA EL MANEJO *
//*         RODRIGUEZ            DE FECHAS EN CONTROL-M DE PU.         *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO    : PSF33P01                                                 *
//* UTILERIA: IOACND                                                   *
//* OBJETIVO: LEVANTA CONDICION BCSFCD30_OK EN CONTROL-M DE PU.        *
//*--------------------------------------------------------------------*
//PSF33P01 EXEC PGM=IOACND,
//****AGR01   INI
//*****    PARM='ADD COND BCSFCD30_OK WDATE'
//         PARM='ADD COND BCSFCD30_OK &FECH1'
//****AGR01   FIN
//       INCLUDE MEMBER=IOASET
//       INCLUDE MEMBER=IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
