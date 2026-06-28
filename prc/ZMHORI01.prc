//ZMHORI01 PROC
//*--------------------------------------------------------------------*
//* PROCESO.: ZMHORI01
//* OBJETIVO: DESCARGAR INFORMACION PRODUCTIVA DE LA TABLA OPERA
//*
//* REALIZO: IEF
//* FECHA  : ENERO   2022
//*====================================================================*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*====================================================================*
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: DESCARGA DE LA TABLA OPERA DEL MUV                       *00022700
//*--------------------------------------------------------------------*00022800
//ZMHO0150 EXEC PGM=ADUUMAIN,                                           00022900
//          PARM='MXP1,ZMHO0150,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.HORIZON.SOPERA.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            SPACE=(CYL,(400,200),RLSE),UNIT=3390,                     00024000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=229,BLKSIZE=0)
//*                                                                     00024200
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01/ZM3HOR01                                        *00022600
//* OBJETIVO: RECIBE ARCHIVO CON LA DESCARGA DE LA TABLA OPERA         *00022700
//*           LE DA FORMATO DISPLAY                                    *00022700
//*--------------------------------------------------------------------*
//ZMHO0145 EXEC PGM=ZM3HOR01,COND=(4,LT)
//*
//ZM3H01E1 DD DSN=MXCP.ZM.FIX.HORIZON.SOPERA.D&FECHA,DISP=SHR
//*
//ZM3H01S1 DD DSN=MXCP.ZM.FIX.HORIZON.SOPERA.SAL.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=0335,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                SE ADICIONA CONDICION CTL-M ALTAMIRA                *
//* PROGRAMA: IOACND                                                   *
//**********************************************************************
//ZMHO0140 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND BCHORI01_OK &FEC'
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
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL PRC ZMHORI01                           *
//*--------------------------------------------------------------------*
