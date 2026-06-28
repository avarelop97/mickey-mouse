//ZMPOFO01 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (MUV)                    *
//*                                                                    *
//* PROCESO        :  ZMPOFO01.                                        *
//*                   DESPUES DEL ENLACE CONTABLE.                     *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE INTERFAZ PARA DATIO.               *
//*                                                                    *
//* CORRE                                                              *
//* DESPUES DE     :  PAFOPD30 (DESPUES DEL ENLACE CONTABLE)           *
//*                                                                    *
//* REALIZACION    :  GABRIELA ALVARADO HERRERA      07/JUL/2020       *
//* MODIFICACION   :                                                   *
//*                                                                    *
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DEL ENLACE CONTABLE       *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO    *
//*           (SE EJECUTA TODOS LOS DIAS)                              *
//**********************************************************************
//*
//ZMPOSF00 EXEC PGM=ZM3DG001,
//         PARM=('BCM','000','CBPZPR&AMB.&FODATE',' ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.REP.INTFAZ.DATIO.PARM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                          === ZM4POSFI ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA MIS                        *
//*                                                                    *
//**********************************************************************
//ZMPOSF01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//C1DQ0001 DD DSN=MXCP.ZM.FIX.REP.INTFAZ.DATIO.PARM.F&FECHA,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXCP.ZM.FIX.REP.INTFAZ.DATIO.PREV.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,20),RLSE),
//            DCB=(RECFM=FB,LRECL=236,BLKSIZE=0,DSORG=PS)
//*
//S2DQ0002 DD DSN=MXCP.ZM.FIX.REP.INTFAZ.CIFRAS.DATIO.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,20),RLSE),
//            DCB=(RECFM=FB,LRECL=115,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPPFT01),DISP=SHR
//*                                                                    *
//**********************************************************************
//*  PROGRAMA: ICEMAN                                                  *
//*  OBJETIVO: SORT DE ARCHIVO DE INTFZ DATIO ORDENADO POR CUENTA      *
//*            DE INVERSION PATRIMONIAL                                *
//**********************************************************************
//ZMPOSF02 EXEC PGM=ICEMAN,COND=(0,NE)
//*                                                                    *
//SORTIN   DD  DSN=MXCP.ZM.FIX.REP.INTFAZ.DATIO.PREV.F&FECHA,
//             DISP=SHR
//*                                                                    *
//SORTOUT  DD  DSN=MXCP.ZM.FIX.REP.INTFAZD.MUV.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             DCB=(DSORG=PS,LRECL=236,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(50,20),RLSE)
//*
//SYSOUT   DD  SYSOUT=*
//*                                                                    *
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMPPFT02),
//             DISP=SHR
//*
//*********************************************************************
//*  OBJETIVO: DEJAR LA CONDICION DE SALIDA EN ALTAMIRA                *
//*                                                                    *
//**********************************************************************
//ZMPOSF03 EXEC PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND CBPOFO01_OK_PR WDATE'
//*                                                                    *
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//*                                                                    *
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//*
//DACNDIN  DD  DDNAME=SYSIN
//PRTDBG   DD  SYSOUT=*
//DAPRINT  DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSIN    DD  DUMMY
//*                                                                    *
//**********************************************************************
//*                     FIN DEL PROCESO ZMPOFO01                      *
//*********************************************************************
