//MZMPP155 PROC
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : MZMPP155                                             *
//* OBJETIVO    : GENERAR UN ARCHIVO DE SALIDA CON LAS ALTAS DEL DIA   *
//*               PARA TENER UNA INTERFAZ CON EL APLICATIVO MARKETING  *
//*               Y RESPALDAR LA INFORMACION DE LA TABLA CUENTA.       *
//* REALIZO     : FABRICA DE SOFTWARE ITS (XMC7014)                    *
//* FECHA       : MARZO 2012                                           *
//**********************************************************************
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-00  XXXXXXX DDMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//**********************************************************************
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENAR POR TIPO UG, CLIENTE Y CENTRO ARCHIVO MARKETING  *
//**********************************************************************
//ZMP15545 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MBVP.PM.FIX.PMPC0BP2.BANCPAT.F&FECHA..MUV,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PMPC0BP2.SORT.F&FECHA..MUV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=94,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CCAUD133),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3UGELI                                                 *
//* OBJETIVO: ELIMINA REGISTROS DUPLICADOS DE CLIENTE Y CENTRO EN MKT  *
//**********************************************************************
//ZMP15540 EXEC PGM=ZM3UGELI,COND=(0,NE)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.PMPC0BP2.SORT.F&FECHA..MUV,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.PMPC0BP2.SORT01.F&FECHA..MUV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=94,BLKSIZE=0),
//            UNIT=3390
//SALIDA2  DD DSN=MXCP.ZM.FIX.F&FECHA..RECHAM&DIA..MKT1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=220,BLKSIZE=0),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENAR POR CLIENTE Y CENTRO ARCHIVO DE MARKETING        *
//**********************************************************************
//ZMP15535 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.PMPC0BP2.SORT01.F&FECHA..MUV,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PMPC0BP2.BANCPAT.F&FECHA..MUV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=94,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CCAUD132),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3UGJUN                                                 *
//* OBJETIVO: JUNTA ARCHIVO ZMDT608 Y CUENTA                           *
//**********************************************************************
//ZMP15530 EXEC PGM=ZM3UGJUN,COND=(0,NE)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.ZMDT608.UGMUV,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.CUENTA.BACKUP,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.CUENTA.UGMV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=26,BLKSIZE=0),
//            UNIT=3390
//*SALIDA2  DD DSN=MXCP.ZM.FIX.F&FECHA..RECHAM&DIA..MKT2,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(200,100),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=220,BLKSIZE=0),
//*            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENAR POR CLIENTE Y CENTRO ARCHIVO DE CUENTA           *
//**********************************************************************
//ZMP15525 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..UNLOAD.CUENTA.UGMV,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..SORT01.CUENTA.UGMV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=26,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CCAUD100),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: IKJEFT01/ZM4UGACT                                        *
//* OBJETIVO: SINCRONIZACION DE LAS UG S VS NUMERO DE PROMOTOR         *
//**********************************************************************
//ZMP15520 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.PMPC0BP2.BANCPAT.F&FECHA..MUV,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.F&FECHA..SORT01.CUENTA.UGMV,DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.F&FECHA..ACTMOK&DIA..MKT1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=239,BLKSIZE=0),
//            UNIT=3390
//SALIDA2  DD DSN=MXCP.ZM.FIX.F&FECHA..RECHAM&DIA..MKT3,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=220,BLKSIZE=0),
//            UNIT=3390
//SALIDA3  DD DSN=MXCP.ZM.FIX.F&FECHA..CIFRAS&DIA..MKT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),
//            UNIT=3390
//*
//* EZP INI 19/10/2023
//SALIDA4  DD DSN=MXCP.ZM.FIX.F&FECHA..CARREPRH.MUV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=284,BLKSIZE=0),
//            UNIT=3390
//* EZP FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(CCAUD112),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENAR ACTUALIZADOS                                     *
//**********************************************************************
//ZMP15515 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..ACTMOK&DIA..MKT1,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..ACTMOK&DIA..MKT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=239,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CCAUD109),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENAR POR RECHAZO                                      *
//**********************************************************************
//ZMP15510 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..RECHAM&DIA..MKT1,
//            DISP=SHR
//*        DD DSN=MXCP.ZM.FIX.F&FECHA..RECHAM&DIA..MKT2,
//*           DISP=SHR
//         DD DSN=MXCP.ZM.FIX.F&FECHA..RECHAM&DIA..MKT3,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..RECHAM&DIA..MKT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=220,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CCAUD110),DISP=SHR
//*
