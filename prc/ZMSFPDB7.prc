//ZMSFPDB7 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCSFCDB2                                         *00010006
//*                   ARCHIVOS EXTRACTORES BANPAT BCM                  *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :                                                   *00010006
//* REALIZO        :  INDRA.                                           *00010006
//* FECHA          :  JULIO 2020                                       *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00010006
//**********************************************************************00010006
//*--------------------------------------------------------------------*
//* PASO     : PSFB2P90                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA QUERY PARA OBTENER CUENTAS DE EJECUCION SSIC   *
//*--------------------------------------------------------------------*
//PSFB2P90 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PSFB2P90,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC1  DD DSN=MXCP.ZM.FIX.CUENTAS.EJOP.ZMDTPDV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,10),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PSFB2P90),DISP=SHR
//*
//**********************************************************************00010006
//*                                                                    *00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DS0A6                                *00370006
//*   GENERACION DE ARCHIVOS DE CLIENTES DE EJECUCION DE OPERACIONES   *00380006
//**********************************************************************00390006
//PSFB2P80 EXEC PGM=ZM3DS0A6,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CUENTAS.EJOP.ZMDTPDV,
//            DISP=SHR
//SALIDA01 DD DSN=MXCP.ZM.FIX.CUENTAS.EJEOPE.SSIC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=035,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(15,10),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00900006
//*                    F I N   Z M S F P D B 7                         *00900006
//**********************************************************************00900006
