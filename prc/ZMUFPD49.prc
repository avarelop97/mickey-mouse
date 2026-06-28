//ZMUFPD49 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD49                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  RESPALDOS DE FICHEROS CONFIABILIDAD, ILP Y       *00090002
//*                   PERFILES                                         *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTWARE FACTORY STEFANINI (PGR) 08/ENE/2010     *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-2.1.0-19  CAPGEMI 03ENE12  SE ELIMINAN LOS PASOS ZMUF49P0 ,     *
//*                               ZMUF49P1, ZMUF49PA , ZMUF49PB ,      *
//*                               ZMUF49PC, ZMUF49PD Y ZMUF49P3        *
//*                               SE CAMBIA LA NUMERACION DE LOS PASOS *
//*                               QUE QUEDAN                           *
//* FS-2.1.0-20  CAPGEMI 22MAR12  CORRECION DE LONGITUD DEL ARCHIVO LP *
//*                               YA CONTIENE LOS NOMBRES DE CLIENTES  *
//*--------------------------------------------------------------------*
//*                                                                    *00190002
//**********************************************************************00240002
//* PROGRAMA: IDCAMS
//* OBJETIVO: RESPALDO CONFIABILIDAD
//**********************************************************************
//ZMUF49P1 EXEC PGM=IDCAMS,COND=(04,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MBVP.QS.FIX.C05.SUITABIL.BCAPATRM,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.C05.SUITABIL.BCAPATRM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,100),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS,LRECL=88)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T47),DISP=SHR
//*
//**********************************************************************00240002
//* PROGRAMA: IDCAMS
//* OBJETIVO: RESPALDO ILP
//**********************************************************************
//ZMUF49P2 EXEC PGM=IDCAMS,COND=(04,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MBVP.SG.FIX.ARCH.AFORE.MUV.D&FECHA,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ARCH.AFORE.SRT.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,100),RLSE),
//*           DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS,LRECL=103)
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS,LRECL=190)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T47),DISP=SHR
//*
//**********************************************************************00240002
//* PROGRAMA: IDCAMS
//* OBJETIVO: RESPALDO PERSONAS
//**********************************************************************
//ZMUF49P3 EXEC PGM=IDCAMS,COND=(04,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MBVP.IU.FVD07.UNLOAD.IUDT033,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.UNLOAD.IUDT033,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(300,300),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS,LRECL=96)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T47),DISP=SHR
//*
