//ZMSFPD59 PROC
//*****************************************************************
//*   DESCARGA DE LA TABLA OPERACION DE MERCADO DE DINERO   ó     *
//*****************************************************************
//PSF59P02 EXEC PGM=ADUUMAIN
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC1  DD DSN=MXCP.ZM.TMP.OPERDIN,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE)
//*           DCB=(RECFM=FB,LRECL=284,BLKSIZE=0,DSORG=PS)
//*
//PI601765 DD  DUMMY
//SYSCNTL  DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF59T01),DISP=SHR
//**********************************************************************
//* PROCEDIMIENTO DE CARGA TABLA ZMDT917
//**********************************************************************
//PSF59P01 EXEC MBMCLOAD,
//         UID=PSF59P01,                      >>> NOM DE LA UTIL
//         ENTORNO=PRODUSVP,                  >>> ENTORNO O CREATOR
//         NOMTAB=ZMDT917,                    >>> NOM DE TABLA
//         OPTION=REPLACE,                    >>> OPC REPLACE/RESUME
//         NPART='',                          >>> NUM PARTS
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZSF59T02),  SYSPUNCH
//         INPREC=DSN=MXCP.ZM.TMP.OPERDIN         >>> ARC A CARG
