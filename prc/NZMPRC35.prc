//NZMPRC35 PROC FECHA=
//*--------------------------------------------------------------------
//*                       PROCEDIMIENTO NZMPRC35
//*
//* --------  -----------------------------------------------  --------
//* DESCARGA TABLA ZMDT768
//*--------------------------------------------------------------------
//*  ELABORADO POR: ITS                      FECHA:  7-AGOSTO-2012
//*--------------------------------------------------------------------
//*                      BITACORA DE MODIFICACIONES
//*--------------------------------------------------------------------
//* MARCA   AUTOR   FECHA    DESCRIPCION
//* ITS01  XMBJ064 05FEB13   SE AGREGA EL PASO NZRC3502.
//*--------------------------------------------------------------------
//* MARCA  AUTOR    FECHA    DESCRIPCION
//* AGR01  ANGELICA 20JUN14  SE CAMBIA EL WDATE POR ODATE EN LA
//* ANS    GARCIA            CONDICION NZMJLD35_OK PARA EL MANEJO DE
//*        RODRIGUEZ         FECHAS PARA CONTROL-M DE PU.
//*********************************************************************
//* PASO     : NZMCTC35
//* PROGRAMA : ADUUMAIN
//* FUNCION  : DESCARGA DE LA  TABLA ZMDT768
//*********************************************************************
//NZRC3500 EXEC PGM=ADUUMAIN,PARM='MXP1,NZRC3500,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC1  DD DSN=MXCP.ZM.TMP.DESCT768,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0)
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(NZMCT135),DISP=SHR
//****************************************************************
//*  PASO:
//*  PROGRAMA: IKJEFT01
//*  FUNCION:
//****************************************************************
//*ITS-INI
//*NZRC3501 EXEC PGM=IKJEFT01,COND=(4,LT)
//NZRC3501  EXEC PGM=ZM3MU915,COND=(4,LT),
//          PARM=('&FECHA')
//*ITS-FIN
//*
//I1DQ0001 DD DSN=MXCP.ZM.TMP.DESCT768,DISP=SHR
//*
//O1DQ0001 DD DSN=MXCP.ZM.FIX.INTFAZ.MEN.INGRE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=57,RECFM=FB,BLKSIZE=0)
//*
//O2DQ0001 DD DSN=MXCP.ZM.FIX.CIFCTRL.MEN.INGRE,
//            DISP=(NEW,CATLG,DELETE),
//           SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD  DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*ITS-INI
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(NZMCT235),DISP=SHR
//*ITS-FIN
//*
//* ITS01-INI
//*********************************************************************
//* PASO: NZRC3502                                                    *
//* PROGRAMA: IOACND                                                  *
//* FUNCION: GENERACION DE CONDICION NZMJLD35_OK PARA CONTROL M DE PU.*
//*********************************************************************
//****AGR01 INI
//*NZRC3502 EXEC PGM=IOACND,PARM='ADD COND NZMJLD35_OK WDATE',
//NZRC3502 EXEC PGM=IOACND,PARM='ADD COND NZMJLD35_OK &FECH1',
//****AGR01 FIN
//         COND=(4,LT)
//       INCLUDE MEMBER=IOASET
//       INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//* ITS01-FIN
//*-------------------------------------------------------------------*
//***                 FIN DE PROCESO                                ***
//*-------------------------------------------------------------------*
