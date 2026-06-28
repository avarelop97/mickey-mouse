//ZMND3400 PROC
//**********************************************************************
//* SISTEMA        :  MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO (ZM)   *
//*                                                                    *
//* PROCESO        :  CBUDND34   (DISPARADOR)                          *
//*                   ZMND3400   PROCEDIMIENTO                         *
//*                                                                    *
//* OBJETIVO       :  EMITE REPORTE DE MOVIMIENTOS DE VALORES          *
//*                                                                    *
//* REALIZO        :  SOFTTEK (ISDA)                                   *
//* FECHA          :  MAYO 2010                                        *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*   MARCA      AUTOR    FECHA   DESCRIPCION                          *
//*-----------  -------  -------  ------------------------------------ *
//*FS-0.0.0-00  XXXXXXX  DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* PASO:     ZLF34P50                                                 *
//* DESCRIPCION DEL PASO: BORRA LOS ARCHIVOS DE TRABAJO                *
//**********************************************************************
//ZLF34P50 EXEC PGM=IDCAMS
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZLF34T50),DISP=SHR
//*
//**********************************************************************
//* PASO:     ZLF34P45                                                 *
//* PROGRAMA: ZM4DL241                                                 *
//* DESCRIPCION DEL PASO: VALIDAR EJECUCION DE PROCESO PMVVAE03        *
//* TABLA QUE ACTUALIZA : CTLPROCPASO REINICIBLE POR RESTART           *
//**********************************************************************
//ZLF34P45 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF34T45),DISP=SHR
//*
//**********************************************************************
//* PASO:     ZLF34P40                                                 *
//* PROGRAMA: ZM4DLU46                                                 *
//* DESCRIPCION DEL PASO: REPORTE DE CORRECCION DE ORDENES             *
//* (ENVIO IMP. USUARIO)                                               *
//**********************************************************************
//ZLF34P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZDLU46R1 DD SYSOUT=S,DEST=VALOR01
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF34T40),DISP=SHR
//*
//**********************************************************************
//* PASO:     ZLF34P35                                                 *
//* PROGRAMA: ZM4DLU46                                                 *
//* DESCRIPCION DEL PASO: REPORTE DE CORRECCION DE ORDENES             *
//**********************************************************************
//ZLF34P35 EXEC  PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//ZDLU46R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF34T35),DISP=SHR
//*
//**********************************************************************
//* PASO:     ZLF34P30                                                 *
//* PROGRAMA: ZM4DL980                                                 *
//* DESCRIPCION DEL PASO: REPORTE DE MOVIMIENTOS DIARIOS DE GARANTIAS  *
//**********************************************************************
//ZLF34P30 EXEC  PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//ZDL980R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF34T30),DISP=SHR
//*
//**********************************************************************
//* PASO:     ZLF34P25                                                 *
//* PROGRAMA: ZM4DL63D                                                 *
//* DESCRIPCION DEL PASO: REPORTE DE MOVIMIENTOS DE VALORES            *
//*                       (IMP. DE USUARIO).                           *
//**********************************************************************
//ZLF34P25 EXEC  PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//ZMDL63T1 DD DSN=&&ARCHT1,
//            DISP=(NEW,PASS),
//            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMDL63T2 DD DSN=&&ARCHT2,
//            DISP=(NEW,PASS),
//            DCB=(RECFM=FB,LRECL=146,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMDL63T3 DD DSN=&&ARCHT3,
//            DISP=(NEW,PASS),
//            DCB=(RECFM=FB,LRECL=114,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMDL63R1 DD SYSOUT=S,DEST=VALOR01
//SORTWK01 DD UNIT=3390,
//            SPACE=(CYL,(5,5),RLSE)
//SORTWK02 DD UNIT=3390,
//            SPACE=(CYL,(5,5),RLSE)
//SORTWK03 DD UNIT=3390,
//            SPACE=(CYL,(5,5),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF34T25),DISP=SHR
//*
//**********************************************************************
//* PASO:     ZLF34P20                                                 *
//* PROGRAMA: ZM4DL63D                                                 *
//* DESCRIPCION DEL PASO: REPORTE DE MOVIMIENTOS DE VALORES            *
//**********************************************************************
//ZLF34P20 EXEC  PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//ZMDL63T1 DD DSN=&&ARCHT1,
//            DISP=(NEW,PASS),
//            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMDL63T2 DD DSN=&&ARCHT2,
//            DISP=(NEW,PASS),
//            DCB=(RECFM=FB,LRECL=146,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMDL63T3 DD DSN=&&ARCHT3,
//            DISP=(NEW,PASS),
//            DCB=(RECFM=FB,LRECL=114,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMDL63R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SORTWK01 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK02 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK03 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF34T20),DISP=SHR
//*
//**********************************************************************
//* PASO:     ZLF34P15                                                 *
//* PROGRAMA: ZM4DL64E                                                 *
//* DESCRIPCION DEL PASO: REPORTE DE TIPO DE BURSATILIDAD Y CLAVE      *
//*                       INTERNACIONAL DE EMISORAS                    *
//**********************************************************************
//ZLF34P15 EXEC  PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//Z4DL64R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF34T15),DISP=SHR
//**********************************************************************
//* PASO:     ZLF34P10                                                 *
//* PROGRAMA: ZM4DL55E                                                 *
//* DESCRIPCION DEL PASO: REPORTE DE OPERACIONES DE RECEPCION Y RETIRO *
//*                       DE TITULOS CON OTRAS CASAS DE BOLSA          *
//*** NO COINCIDE EL PROGRAMA ZM4DL55E CON EL ORIGINAL. EMCM           *
//**********************************************************************
//ZLF34P10 EXEC  PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//ZMDL55R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMDL55R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMDL55R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMDL55S1 DD DSN=SIVA.ZM.FIX.ZM4DL55E.DELPARAM,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=80,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF34T10),DISP=SHR
//**********************************************************************
//* PASO:     ZLF34P05                                                 *
//* UTILERIA: IKJEFT01                                                 *
//* DESCRIPCION PASO: DEPURA OPERACIONES DE PARAM DE N MESES ANTERIORES*
//**********************************************************************
//ZLF34P05 EXEC  PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF34T51),DISP=SHR
//SYSPUNCH DD DUMMY
//SYSIN    DD DSN=SIVA.ZM.FIX.ZM4DL55E.DELPARAM,DISP=SHR
//*
//**********************************************************************
//* PASO:     ZLF34P03                                                 *
//* UTILERIA: IKJEFT01                                                 *
//* DESCRIPCION DEL PASO: ACTUALIZACION CTLPROC                        *
//**********************************************************************
//ZLF34P03 EXEC  PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF34T51),DISP=SHR
//SYSPUNCH DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF34T52),DISP=SHR
//*
