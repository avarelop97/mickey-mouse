//ZMUFPD32 PROC
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD32                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  RECIBE FICHERO ILP-CONNOM DE PU Y VERIFICA QUE   *00090002
//*                   TENGA INFORMACION, SI EXISTE DEJA COPIA          *00090002
//*                   DEL FICHERO ILP CONNOM, CASO CONTRARIO COPIA ILP *00090002
//*                   ORIGINAL SINNOM (CONTINGENCIA)                   *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  CAPGEMINI ARTENTINA 02/ENE/2012                  *00160002
//*                                                                    *00170002
//**********************************************************************00240002
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI       AUTOR     FECHA    DESCRIPCION                        *
//* ----------- --------- -------- ----------------------------------- *
//*    *           *         *       *                                 *
//**********************************************************************
//* PROGRAMA: IDCAMS                                                   *
//* OBJETIVO: VERIFICA QUE EL FICHERO ILP-NOMBRES TENGA INFORMACION    *
//*                                                                    *
//**********************************************************************
//ZMUF3202 EXEC PGM=IDCAMS
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//INPUT1   DD  DSN=MXCP.ZM.FIX.AFORE.CONNOM.D&FECHA,
//             DISP=SHR
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUF04T36),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: IDCAMS                                                   *
//* OBJETIVO: COPIA FICHERO AL PERMANENTE SI EXISTE Y TIENE INFORMACION*
//*                                                                    *
//**********************************************************************
//ZMUF3201 EXEC PGM=IDCAMS,COND=(0,NE,ZMUF3202)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.FIX.AFORE.CONNOM.D&FECHA,
//             DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.FIX.AFORE.SUITAB.D&FECHA,
//             DISP=(NEW,CATLG,DELETE),BUFNO=30,
//             UNIT=3390,SPACE=(CYL,(100,50),RLSE),
//             DCB=(LRECL=190,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUF03T47),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: IDCAMS                                                   *
//* OBJETIVO: CLASIFICA FICHERO AGREGA LAS POSICIONES DE COMPLEMENTO   *
//*                                                                    *
//**********************************************************************
//ZMUF3200 EXEC PGM=IDCAMS,COND=(0,EQ,ZMUF3202)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SORTIN   DD  DSN=MBVP.SG.FIX.ARCH.AFORE.SRT.D&FECHA,
//             DISP=SHR
//SUITAB   DD  DSN=MXCP.ZM.FIX.AFORE.SUITAB.D&FECHA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),BUFNO=30,
//             DCB=(RECFM=FB,LRECL=190,BLKSIZE=0,DSORG=PS)
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUF04T35),DISP=SHR
//*
