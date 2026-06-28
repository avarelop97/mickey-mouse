//ZMJCFAC0 PROC                                                         00010006
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMJCFAC0                                         *
//*                   RECUPERACION DE INFORMACION DE PERSONAS          *
//*                                                                    *
//* OBJETIVO       :  RECUPERAR INFORMACION DE PERSONASOS              *
//*                                                                    *
//* REALIZO        :  SOLUCIONA
//* FECHA          :  SEPTIEMBRE 2018                                  *
//*                                                                    *
//* OBSERVACION    :  PROCEDIMIENTO A SER EJECUTADO DESPUES DE LAS     *
//*                   DESCARGAS DE PERSONAS                            *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* FUNCION:  SELECIONA CLIENTES DE PRODUCTO 21 DE LA TABLA PEDT008    *
//*--------------------------------------------------------------------*
//ZMFAC050 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MBVP.PE.FIX.NSEQSORT.PEDT008.D&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PEDT008.V00.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFAC050),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* FUNCION: ORDENA POR CLIENTE DEL PRODUCTO 21                        *
//*--------------------------------------------------------------------*
//ZMFAC045 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PEDT008.V00.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PEDT008.V01.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFAC045),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ADUUMAIN                                                 *
//* FUNCION: DESCARGA LA TABLA ZMDT608 ORDENADA POR CLIENTE            *
//*--------------------------------------------------------------------*
//ZMFAC040 EXEC PGM=ADUUMAIN,COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC1  DD DSN=MXCP.ZM.FIX.ZMDT608.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFAC040),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3CMTC1                                                 *
//* FUNCION: MATCH CON LA TABLA ZMDT608 PARA OBTENCIóN DE LA CUENTA    *
//*--------------------------------------------------------------------*
//ZMFAC035 EXEC PGM=ZM3CMTC1,COND=(4,LT)
//*
//E1DQTOCP DD DSN=MXCP.ZM.FIX.PEDT008.V01.F&FECHA,DISP=SHR
//*
//E2DQTOCP DD DSN=MXCP.ZM.FIX.ZMDT608.F&FECHA,DISP=SHR
//*
//S1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V00.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=147,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ZM3CMTC2                                                 *
//* FUNCION: MATCH PARA OBTENER INFORMACION DE LA TABLA PEDT001        *
//*--------------------------------------------------------------------*
//ZMFAC030 EXEC PGM=ZM3CMTC2,COND=(4,LT)
//*
//E2DQTOCP DD DSN=MBVP.PE.FIX.UNLOAD.PEDT001.DIARIO,DISP=SHR
//*
//E1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V00.F&FECHA,DISP=SHR
//*
//S1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V01.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=147,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* FUNCION: ORDENA POR CLIENTE LA TABLA PEDTFAT                       *
//*--------------------------------------------------------------------*
//ZMFAC028 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MBVP.PE.FIX.PEJCRF02.UNLOAD.PEDTFAT,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PEJCRF02.UNLOAD.PEDTFAT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFAC028),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3CMTC3                                                 *
//* FUNCION: ORDENA POR CLIENTE LA TABLA PEDTFAT                       *
//*--------------------------------------------------------------------*
//ZMFAC025 EXEC PGM=ZM3CMTC3,COND=(4,LT)
//*
//E2DQTOCP DD DSN=MXCP.ZM.FIX.PEJCRF02.UNLOAD.PEDTFAT,DISP=SHR
//*
//E1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V01.F&FECHA,DISP=SHR
//*
//S1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V02.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=147,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* FUNCION: ORDENA POR CLIENTE LA TABLA PEDTFAM                       *
//*--------------------------------------------------------------------*
//ZMFAC023 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MBVP.PE.FIX.PEJCRF02.UNLOAD.PEDTFAM,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PEJCRF02.UNLOAD.PEDTFAM,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFAC023),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3CMTC4                                                 *
//* FUNCION: MATCH PARA OBTENER INFORMACION DE LA TABLA PEDTFAM        *
//*--------------------------------------------------------------------*
//ZMFAC020 EXEC PGM=ZM3CMTC4,COND=(4,LT)
//*
//E2DQTOCP DD DSN=MXCP.ZM.FIX.PEJCRF02.UNLOAD.PEDTFAM,DISP=SHR
//*
//E1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V02.F&FECHA,DISP=SHR
//*
//S1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V03.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=147,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* FUNCION: ORDENA POR CLIENTE LA TABLA PEDTCRS                       *
//*--------------------------------------------------------------------*
//ZMFAC018 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MBVP.AJ.FIX.UNLOAD.PEDTCRS.DESCARG1,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.UNLOAD.PEDTCRS.DESCARG1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFAC018),DISP=SHR
//*
//*
//**********************************************************************
//* PROGRAMA: ZM3CMTC5                                                 *
//* FUNCION: MATCH PARA OBTEER INFORMACION DE LA TABLA PEDTCRS         *
//*--------------------------------------------------------------------*
//ZMFAC015 EXEC PGM=ZM3CMTC5,COND=(4,LT)
//*
//E2DQTOCP DD DSN=MXCP.ZM.FIX.UNLOAD.PEDTCRS.DESCARG1,DISP=SHR
//*
//E1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V03.F&FECHA,DISP=SHR
//*
//S1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V04.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=147,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* FUNCION: SORT POR CLIENTE DE LA TABLA PEDTOFI                      *
//*--------------------------------------------------------------------*
//ZMFAC013 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MBVP.AJ.FIX.UNLOAD.PEDTOFI.DESCARG1,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.UNLOAD.PEDTOFI.DESCARG1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFAC013),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3CREF0                                                 *
//* FUNCION: REFORMATEA ARCHIVO DE LA TABLA PEDTOFI                    *
//*--------------------------------------------------------------------*
//ZMFAC011 EXEC PGM=ZM3CREF0,COND=(4,LT)
//*
//E1DQTOCP DD DSN=MXCP.ZM.FIX.UNLOAD.PEDTOFI.DESCARG1,DISP=SHR
//*
//S1DQTOCP DD DSN=MXCP.ZM.FIX.REFORM.PEDTOFI.DESCARG1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ZM3CMTC6                                                 *
//* FUNCION: MATCH PARA OBTENER INFORMACION DE LA TABLA PEDTOFI        *
//*--------------------------------------------------------------------*
//ZMFAC010 EXEC PGM=ZM3CMTC6,COND=(4,LT)
//*
//E2DQTOCP DD DSN=MXCP.ZM.FIX.REFORM.PEDTOFI.DESCARG1,DISP=SHR
//*
//E1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V04.F&FECHA,DISP=SHR
//*
//S1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V05.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=147,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* FUNCION: SORT POR CLIENTE A LA TABLA PEDTFRF                       *
//*--------------------------------------------------------------------*
//ZMFAC008 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MBVP.AJ.FIX.UNLOAD.PEDTFRF.DESCARG1,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.UNLOAD.PEDTFRF.DESCARG1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMFAC008),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3CMTC7                                                 *
//* FUNCION: MATCH PARA OBTENER INFORMACION DE LA TABLA PEDTFRF        *
//*--------------------------------------------------------------------*
//ZMFAC005 EXEC PGM=ZM3CMTC7,COND=(4,LT)
//*
//E2DQTOCP DD DSN=MXCP.ZM.FIX.UNLOAD.PEDTFRF.DESCARG1,DISP=SHR
//*
//E1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V05.F&FECHA,DISP=SHR
//*
//S1DQTOCP DD DSN=MXCP.ZM.FIX.FACTA.V06.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=147,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
