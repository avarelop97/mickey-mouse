//ZMPDPLD6  PROC                                                        00010025
//*====================================================================*
//* AUTOR       : ACCENTURE (HECTOR CAMACHO GONZALEZ)                  *
//* FECHA       : 14 DE DICIEMBRE 2017                                 *
//*____________________________________________________________________*
//*====================================================================*
//*--------------------------------------------------------------------*
//* PASO     : PGL43P04                                                *
//* PROGRAMA : ZM3PLDFI                                                *
//* OBJETIVO : DESCARGA DE LA TABLA DE CUENTA                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE TABLA CUENTA                                 *
//*--------------------------------------------------------------------*
//PGL43P04 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMPDPLD6,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.LOAD.CBGDPLD6.ZCUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGCDPLD5),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PGL46P02                                                *
//* PROGRAMA : ZM3PLDFE                                                *
//* OBJETIVO : PROGRAMA QUE GENERA LA FECHA DEL SISTEMA A PARTIR DEL   *
//*            ODATE.                                                  *
//*--------------------------------------------------------------------*
//PGL46P02 EXEC PGM=ZM3PLDFE,PARM=('&FECHA'),COND=(4,LT)
//ARCHDATE DD DSN=MXCP.ZM.FIX.CBGDPLD6.DATE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,1),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//**********************************************************************
//* PASO    : PGL43P01                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: GENERACION DE REPORTE DE DETALLE                         *
//**********************************************************************
//PHC01128 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//E2FECHAS DD DSN=MXCP.ZM.FIX.CBGDPLD6.DATE.F&FECHA,
//            DISP=SHR
//E2CUENTA DD DSN=MXCP.ZM.FIX.LOAD.CBGDPLD6.ZCUENTA,
//            DISP=SHR
//ZMJPLD6M DD DSN=MXCP.ZM.FIX.PLD6.DETALLE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGCDPLD6),DISP=SHR                   01230041
//*
//**********************************************************************
//* PASO    : PGL43P00                                                 *
//* PROGRAMA: CONTROL-D                                                *
//* OBJETIVO: ENVIO A CONTROL-D                                        *
//**********************************************************************
//PGL43P00    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.PLD6.DETALLE,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//*====================================================================*
//* ELABORO : ACCENTURE (HECTOR CAMACHO)                               *
//*====================================================================*
