//ZMUPRD02 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO           *
//* OBJETIVO: GENERACION DE ARCHIVO CON RENDIMIENTOS DIARIOS           *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//* MARCA       AUTOR   FECHA    DESCRIPCION                           *
//*----------- ------- ------- ----------------------------------------*
//*FS-1.0.0-01 CDAINFO 09NOV12 SE AGREGO ARCHIVO I0DQ0002 AL STEP30    *
//*----------- ------- ------- --------------------------------------- *
//*FS-1.0.0-02 XMCH074 14NOV12 SE MODFICA EL PASO STEP030              *
//*----------- ------- ------- --------------------------------------- *
//*FS-1.0.0-03 XMGY082 06FEB13 SE AGREGA EL PASO STEP020               *
//*----------- ------- ------- --------------------------------------- *
//*AGR01       ANS     16ENE14 SE MODIFICA PASO  STEP030               *
//*                            SE INCORPORA ACCESO AL ARCHIVO MAESTRO  *
//*                            DE PU, PARA CR ORIGEN DEL PRODUCTO 21.  *
//*----------- ------- ------- --------------------------------------- *
//*AGR02       ANS     20JUN14 SE CAMBIA EL WDATE POR ODATE EN LA      *
//*                            CONDICION BCURND02_OK, PARA EL MANEJO DE*
//*                            FECHAS PARA CONTROL-M DE PU.            *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO    : STEP050                                                  *
//* PROGRAMA: IDCAMS                                                   *
//* OBJETIVO: ELIMINA EL ARCHIVO DE DESCARGA DE LA TABLA ZMDT608       *
//*           CLIENTES                                                 *
//*--------------------------------------------------------------------*
//STEP050  EXEC PGM=IDCAMS
//*
//SYSPRINT DD SYSOUT=*                                                  01430001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(NZMCT004),DISP=SHR                   01440001
//*
//*--------------------------------------------------------------------*
//* PASO    : STEP040                                                  *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA ZMDT608 CLIENTES                    *
//*--------------------------------------------------------------------*
//STEP040  EXEC PGM=ADUUMAIN,COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00002700
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00002800
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00002900
//*                                                                     00003000
//SYSREC1  DD DSN=MXCP.ZM.TMP.DESCT608,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(NZMCT001),DISP=SHR
//*                                                                     00004200
//*--------------------------------------------------------------------*
//* PASO    : STEP030                                                  *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: GENERACION DE ARCHIVO CON RENDIMIENTOS DIARIOS           *
//*--------------------------------------------------------------------*
//STEP030  EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//I1DQ0001 DD DSN=MXCP.ZM.TMP.DESCT608,DISP=SHR
//*FS-1.0.0-01-INI
//*FS-1.0.0-02-INI
//*I1DQ0002 DD DSN=MXCP.ZM.TMP.DESCT608,DISP=SHR
//I1DQ0002 DD DSN=MXCP.ZM.FIX.INTFAZ.SDO.REND,DISP=SHR
//*FS-1.0.0-02-FIN
//*FS-1.0.0-01-FIN
//*AGR01 INI
//I1DQ0003 DD DSN=MXCP.ZM.FIX.RIC.RELPRD21.SORT.F&FECHA,
//            DISP=SHR
//*AGR01 FIN
//*
//O1DQ0001 DD DSN=MXCP.ZM.FIX.INTFAZ.DIA.REND,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=128,RECFM=FB,BLKSIZE=0)
//O2DQ0001 DD DSN=MXCP.ZM.FIX.CIFCTRL.DIA.REND,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(NZMCT003),DISP=SHR
//*
//*FS-1.0.0-03-INI
//*--------------------------------------------------------------------*
//* PASO    : STEP020                                                  *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: GENERACION DE CONDICION BCURND02_OK PARA CONTROL M DE PU *
//*--------------------------------------------------------------------*
//STEP020  EXEC PGM=IOACND,COND=(4,LT),
//****AGR02   INI
//******** PARM=' ADD COND BCURND02_OK WDATE'
//         PARM=' ADD COND BCURND02_OK &FECH1'
//****AGR02   FIN
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//*FS-1.0.0-03-FIN
