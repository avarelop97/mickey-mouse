//SIPREPTD PROC
//*
//**********************************************************************
//**                                                                   *
//* SISTEMA:               S  I  V  A                                  *
//*                        -----------                                 *
//*                                                                    *
//* PROCESO: SIPREPTD.                                                 *
//*                                                                    *
//* OBJETIVO : GENERACION DE IEBGENER  DE ARCHIVOS A A ENVIAR POR      *
//*            CONTROL DEL PARA EL SISTEMA SACSI.                      *
//*                                                                    *
//* CORRE ANTES DE :                                                   *
//*                                                                    *
//* CORRE DESPUES DE :                                                 *
//*                                                                    *
//* REALIZO : ING. EDUARDO FRIAS MENDOZA                               *
//*                                                                    *
//* EMPRESA : SOFTTEK S.A                                              *
//*                                                                    *
//* FECHA : 05 SEPTIEMBRE 2000.                                        *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO017                                                  *
//*--------------------------------------------------------------------*
//PASO017D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3001,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO016                                                  *
//*--------------------------------------------------------------------*
//PASO016D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3002,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO014                                                  *
//*--------------------------------------------------------------------*
//PASO014D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3004,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO013                                                  *
//*--------------------------------------------------------------------*
//PASO013D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3005,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO012                                                  *
//*--------------------------------------------------------------------*
//PASO012D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3006,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO011                                                  *
//*--------------------------------------------------------------------*
//PASO011D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3007,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO010                                                  *
//*--------------------------------------------------------------------*
//PASO010D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3008,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO008                                                  *
//*--------------------------------------------------------------------*
//PASO008D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3010,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO007                                                  *
//*--------------------------------------------------------------------*
//PASO007D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3011,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO006                                                  *
//*--------------------------------------------------------------------*
//PASO006D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3012,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO005                                                  *
//*--------------------------------------------------------------------*
//PASO005D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3013,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO004                                                  *
//*--------------------------------------------------------------------*
//PASO004D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3014,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO002                                                  *
//*--------------------------------------------------------------------*
//PASO002D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3016,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* UTILERIA: IEBGENER                                                 *
//* PASO    : PASO001                                                  *
//*--------------------------------------------------------------------*
//PASO001D EXEC PGM=ICEGENER,COND=(4,LT),REGION=4M
//SYSUT1   DD DSN=SIVA.SIN.FIX.ANEX3017,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//********************************************************************
