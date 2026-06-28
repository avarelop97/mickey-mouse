//ZMSFPD31 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMSFPD31                                                *
//*                                                                    *
//* OBJETIVO : LEVANTA CONDICION BCSFCD08_OK EN CONTROL-M DE PU.       *
//*                                                                    *
//* ELABORO  : FSW-TECNOCOM                                            *
//*                                                                    *
//* FECHA    : 02-01-2013                                              *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                       LOG DE MODIFICACIONES                        *
//*--------------------------------------------------------------------*
//*  MARCA     AUTOR    FECHA    DESCRIPCION                           *
//* -------  --------- ------- ----------------------------------------*
//* AGR01    ANGELICA  20JUN14  SE CAMBIA EL WDATE POR ODATE EN LA     *
//* ANS      GARCIA             CONDICION BCSFCD08_OK PARA EL MANEJO   *
//*          RODRIGUEZ          DE FECHAS EN CONTROL-M DE PU.          *
//*--------------------------------------------------------------------*
//* PASO    : PSF31P01                                                 *
//* UTILERIA: IOACND                                                   *
//* OBJETIVO: LEVANTA CONDICION BCSFCD08_OK EN CONTROL-M DE PU.        *
//*--------------------------------------------------------------------*
//PSF31P01 EXEC PGM=IOACND,
//*****AGR 01
//*****    PARM='ADD COND BCSFCD08_OK WDATE'
//         PARM='ADD COND BCSFCD08_OK &FECH1'
//*****AGR 01
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
