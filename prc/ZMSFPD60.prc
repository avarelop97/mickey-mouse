//ZMSFPD60 PROC
//*****************************************************************
//*   DESCARGA DE LA TABLA DE ZMDT610                             *
//*****************************************************************
//PSF60P02 EXEC PGM=ADUUMAIN
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC1  DD DSN=MXCP.ZM.TMP.ZMDT610,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(BLKSIZE=0)
//*           DCB=(RECFM=FB,LRECL=151,BLKSIZE=0,DSORG=PS)
//*
//PI601765 DD  DUMMY
//SYSCNTL  DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF60T01),DISP=SHR
//*
//******************************************************************
//* PROCEDIMIENTO DE CARGA TABLA ZMDT922
//******************************************************************
//PSF60P01 EXEC MBMCLOAD,
//         UID=PSF60P01,                      >>> NOM DE LA UTIL
//         ENTORNO=PRODUSVP,                  >>> ENTORNO O CREATOR
//         NOMTAB=ZMDT922,                    >>> NOM DE TABLA
//         OPTION=REPLACE,                    >>> OPC REPLACE/RESUME
//         NPART='',                          >>> NUM PARTS
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZSF60T02),  SYSPUNCH
//         INPREC=DSN=MXCP.ZM.TMP.ZMDT610         >>> ARC A CARG
//*@INGESTA-I
//*--------------------------------------------------------------------*
//* PASO    : PSF60P03                                                 *
//* PROGRAMA: IEBGENER                                                 *
//*           COPIAR ARCHIVO DE TMP A FIX CON IEBGENER                 *
//*--------------------------------------------------------------------*
//PSF60P03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.TMP.ZMDT610,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ZMDT610,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=178,BLKSIZE=0,DSORG=PS)
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*@INGESTA-F
//*@DF-I
//*--------------------------------------------------------------------*
//* PASO       : PSF60P03.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE PDV          *
//*--------------------------------------------------------------------*
//PSF60P04 EXEC PGM=IOACND,PARM='ADD COND BCSFND60_OK &FEC',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*@DF-F
//**********************************************************************
//*********************  F I N   D E   P R O C E S O  ******************
//**********************************************************************
