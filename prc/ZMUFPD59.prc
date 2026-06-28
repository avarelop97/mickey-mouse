//ZMUFPD59 PROC                                                         00010002
//*********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL                                *00059002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD59                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  GENERA REPORTE DE POSICION DIARIO MUV            *00090002
//*                                                                    *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :                                                   *00120002
//*                                                                    *00130002
//* DESPUES DE     :                                                   *00159002
//*                                                                    *00150002
//* REALIZACION    :  SOFTTEK                             JUL/2017     *00160002
//*                                                                    *00170002
//*********************************************************************00259002
//*
//*********************************************************************00259002
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MARCA    AUTOR   FECHA             DESCRIPCION                     *
//* ------- ------- ------- -------------------------------------------*
//*           RRT    AGO-2017    SE ADICIONA DESCARGA DE ZMDT802 Y     *
//*                              ZMDT802 SE ORDENAN LOS DATOS          *
//**********************************************************************
//* PROGRAMA: ADUUMAIN
//* OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT608
//**********************************************************************
//ZMUF5908 EXEC PGM=ADUUMAIN,
//          PARM='MXP1,ZMUF5908,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT608,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUF5908),DISP=SHR
//*
//*********************************************************************
//*PROGRAMA: ADUUMAIN
//*OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDTPDV
//*********************************************************************
//ZMUF5907 EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF5907,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDTPDV,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUF5907),DISP=SHR
//*
//*********************************************************************
//*PROGRAMA: ADUUMAIN
//*OBJETIVO: REALIZA LA DESCARGA DE LA TABLA CARTERA
//*********************************************************************
//ZMUF5906 EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF5906,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4DU.CARTERA,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUF5906),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DU100
//* OBJETIVO: OBTIENE EL ARCHIVO DE POSICION DIARIA MUV
//**********************************************************************
//ZMUF5905 EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1DU100 DD DSN=MXCP.ZM.FIX.ZM4DU.CARTERA,
//            DISP=SHR
//E2DU100 DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDT608,
//            DISP=SHR
//E3DU100 DD DSN=MXCP.ZM.FIX.ZM4DU.ZMDTPDV,
//            DISP=SHR
//S1DU100 DD DSN=MXCP.ZM.FIX.POSDIA.F&FECHA..MUV,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=161,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZMUF5905),DISP=SHR
//                                                                     *
