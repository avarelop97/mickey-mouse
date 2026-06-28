//ZMFMLD14 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FAMILY OFFICE.                                 *
//* PROCESO      : ZMFMLD14.                                           *
//* PERIODICIDAD : SEMANAL.                                            *
//* OBJETIVO     : REPORTES DE FAMILY OFFICE                           *
//* REALIZO      : INDRA                                               *
//* FECHA        : JULIO   2016.                                       *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*   @DGCM01   XMZ8533   11OCT18 SE AGREGA DESCARGA DE LEYENDAS       *
//*   @MARP02   XMY6669   15ABR19 SE MODIFICA LA LONGITUD PARA LA      *
//*                               INCLUCION DEL TIPO DE TENENCIA EN EL *
//*                               ARCHIVO DE POSICION                  *
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T10.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML24                                     *
//* OBJETIVO   : OBTIENE CONTRATOS DE FAMILY OFFICE                    *
//*--------------------------------------------------------------------*
//ZFM10T10 EXEC PGM=IKJEFT01
//*
//ZM10FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.SEM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=50,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFM14T10),DISP=SHR
//*@DGCM01-I
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T09.                                             *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : REALIZA DESCARGA DE LAS LEYENDAS DE TABLA PARAM.      *
//*--------------------------------------------------------------------*
//ZFM10T09 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZFM10T09,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCFMLD14.UNLOAD.PARAM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFM10T09),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T08.                                             *
//* UTILERIA   : ZM3FML43                                              *
//* OBJETIVO   : GENERA ARCHIVO CON LEYENDA PARA REPORTES              *
//*--------------------------------------------------------------------*
//ZFM10T08 EXEC PGM=ZM3FML43,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.BCFMLD14.UNLOAD.PARAM,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.FAM.ZM3FML43.LEYFAM.POS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=314,BLKSIZE=0)
//*@MARP02-INI
//            DCB=(DSORG=PS,RECFM=FB,LRECL=316,BLKSIZE=0)
//*@MARP02-FIN
//*
//S1DQSAL2 DD DSN=MXCP.ZM.FIX.FAM.ZM3FML43.LEYFAM.TRX,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*@DGCM01-F
//*
