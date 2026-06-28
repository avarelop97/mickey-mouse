//ZMLCPD53 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO.     *
//* PROCESO      : ZMLCPD53.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : GENERAR INTERFAZ DE MUV DE PROMOTORES PARA NEW.     *
//*                                                                    *
//*                                                                    *
//* REALIZO      : INDRA.                                              *
//* FECHA        : 28 DE OCTUBRE DE 2020.                              *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : PLC53P60                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO POR TIPO DE PUESTO                  *
//*--------------------------------------------------------------------*
//PLC53P60 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MBVP.AJ.FIX.AJPCCB50.PUESTO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.AJPCCB50.PUESTO.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=162,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(03,05),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC53T60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC53P55                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA DE PARAM                           *
//*--------------------------------------------------------------------*
//PLC53P55 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD53,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMLCPD53.PARAM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,10),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC53T55),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC53P50                                                *
//* PROGRAMA : IKJEFT01/ZM3DL027                                       *
//* OBJETIVO : OBTIENE LA DESCRIPCION DEL PUESTO A PARTIR DE LA PARAM  *
//*--------------------------------------------------------------------*
//PLC53P50 EXEC PGM=ZM3DL027,COND=(4,LT)
//*
//ZMDL27E1 DD DSN=MXCP.ZM.FIX.AJPCCB50.PUESTO.ORD,
//            DISP=SHR
//ZMDL27E2 DD DSN=MXCP.ZM.FIX.ZMLCPD53.PARAM,
//            DISP=SHR
//ZMDL27S1 DD DSN=MXCP.ZM.FIX.PUESTO.ZM3DL027,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=163,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC53T50),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PLC53P45                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO DE USUARIO POR ICCOSTOP             *
//*--------------------------------------------------------------------*
//PLC53P45 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.PUESTO.ZM3DL027,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PUESTO.ZM3DL027.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=163,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(03,05),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC53T45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC53P40                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA DE CCOSTO                          *
//*--------------------------------------------------------------------*
//PLC53P40 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD53,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMLCPD53.CCOSTO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,10),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC53T40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC53P35                                                *
//* PROGRAMA : ZM3DL026                                                *
//* OBJETIVO : SE OBTIENE EL CENTRO DE COSTOS PADRE                    *
//*--------------------------------------------------------------------*
//PLC53P35 EXEC PGM=ZM3DL026,COND=(4,LT)
//*
//ZMDL26E1 DD DSN=MXCP.ZM.FIX.PUESTO.ZM3DL027.ORD,
//            DISP=SHR
//ZMDL26E2 DD DSN=MXCP.ZM.FIX.ZMLCPD53.CCOSTO,
//            DISP=SHR
//ZMDL26S1 DD DSN=MXCP.ZM.FIX.PUESTO.ZM3DL026,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=169,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC53P30                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA DE PARAM T60                       *
//*--------------------------------------------------------------------*
//PLC53P30 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD53,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMLCPD53.PART60,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,10),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC53T30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC53P25                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA DE ZMDTPRM                         *
//*--------------------------------------------------------------------*
//PLC53P25 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD53,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMLCPD53.ZMDTPRM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,10),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC53T25),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PLC53P20                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO DE PARAM T60                        *
//*--------------------------------------------------------------------*
//PLC53P20 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMLCPD53.PART60,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMLCPD53.PART60.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=09,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(03,05),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC53T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PLC53P15                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO DE ZMDTPRM                          *
//*--------------------------------------------------------------------*
//PLC53P15 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMLCPD53.ZMDTPRM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMLCPD53.ZMDTPRM.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=09,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(03,05),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC53T15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PLC53P10                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO DE MANCUERNAS POR NUMERO DE PROMOTOR*
//*--------------------------------------------------------------------*
//PLC53P10 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMLCPD53.PART60.ORD,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZMLCPD53.ZMDTPRM.ORD,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PROMOT.MANCUER,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=09,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(03,05),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC53T10),DISP=SHR
//*
//******************************************************************
//*                SE ADICIONA CONDICION                           *
//*                PARA QUE SEA TOMADA POR CTL-D                   *
//******************************************************************
//PLC53P05 EXEC  PGM=CTMCND,PARM='ADD COND CBLCND53_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLCPD53                        *
//*--------------------------------------------------------------------*
