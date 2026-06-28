//ZMSFPD57 PROC
//*****************************************************************
//*   DESCARGA DE LA TABLA OPERACION TESORERIA              ó     *
//*****************************************************************
//PSF57P02 EXEC PGM=ADUUMAIN
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC1  DD DSN=MXCP.ZM.TMP.OPERATE,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE)
//*           DCB=(RECFM=FB,LRECL=2241,BLKSIZE=0,DSORG=PS)
//*
//PI601765 DD  DUMMY
//SYSCNTL  DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF57T01),DISP=SHR
//*
//**********************************************************************
//* PROCEDIMIENTO DE CARGA PARA SSID  MXD1-BANCO/BURSATIL
//**********************************************************************
//PSF57P01 EXEC MBMCLOAD,
//         UID=PSF57P01,                      >>> NOM DE LA UTIL
//         ENTORNO=PRODUSVP,                  >>> ENTORNO O CREATOR
//         NOMTAB=ZMDT915,                    >>> NOM DE TABLA
//         OPTION=REPLACE,                    >>> OPC REPLACE/RESUME
//         NPART='',                          >>> NUM PARTS
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZSF57T02),  SYSPUNCH
//         INPREC=DSN=MXCP.ZM.TMP.OPERATE         >>> ARC A CARG
//**********************************************************************
//*********************  F I N   D E   P R O C E S O  ******************
//**********************************************************************
