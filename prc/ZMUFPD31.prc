//ZMUFPD31 PROC
//**********************************************************************
//*  SISTEMA    : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *
//*  PROCESO    : ZMUFPD31                                             *
//*  OBJETIVO   : ENVIA FICHERO ILP A PROCESO A PU.                    *
//*  FECHA      : OCTUBRE 2011                                         *
//**********************************************************************
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI       AUTOR     FECHA    DESCRIPCION                        *
//* ----------- --------- -------- ----------------------------------- *
//* FS-1.0.0-01    *         *       *                                 *
//**********************************************************************
//* PASO    : ZMUF3102                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: COPIA FICHERO A ENVIAR Y AGREGA LAS POSICIONES DE COMPLE-*
//*           MENTO AL FICHERO DE CONTIGENCIA.                         *
//**********************************************************************
//ZMUF3102 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MBVP.SG.FIX.ARCH.AFORE.SRT.D&FECHA,
//            DISP=SHR
//AFORE1   DD DSN=MXCP.ZM.FIX.ARCH.AFORE.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),BUFNO=30,
//            UNIT=3390,SPACE=(CYL,(050,10),RLSE),
//            DCB=(LRECL=103,RECFM=FB,BLKSIZE=0,DSORG=PS)
//AFORE2   DD DSN=MXCP.ZM.FIX.AFORE.SUITAB.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(RECFM=FB,LRECL=190,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF04T37),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PASO    : ZMUF3101                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : COPIA FICEHRO Y DEJA EL AFORE.COMMON ESTE FICHERO ES DE  *
//*           CONTINGENCIA.                                            *
//**********************************************************************
//ZMUF3101 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.FIX.AFORE.SUITAB.D&FECHA,
//             DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.FIX.AFORE.CONNOM.D&FECHA,
//             DISP=(NEW,CATLG,DELETE),BUFNO=30,
//             UNIT=3390,SPACE=(CYL,(050,10),RLSE),
//             DCB=(LRECL=190,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUF04T38),DISP=SHR
//**********************************************************************
//* PASO    : ZMUF3100                                                 *
//* PROGRAMA: CTMCND                                                   *
//* OBJETIVO: ADICIONA PARA QUE SEA TOMADA POR SIVA (CASA DE BOLSA), Y *
//*           SE EJECUTE EL PROCESOAJJCCB32                            *
//**********************************************************************
//ZMUF3100 EXEC PGM=CTMCND,PARM='ADD COND BCUFND31_OK WDATE',
//         COND=(4,LT)
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.CTMD.SYSZBBV.DATA.RES
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
