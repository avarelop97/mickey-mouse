//ZMHUNV06 PROC
//*
//**********************************************************************00002000
//*                                                                    *00003000
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V). CAPITALES      *00004000
//*                                                                    *00004200
//* PROCESO        :  CBHUNV06                                         *00004300
//*                                                                    *00004500
//* OBJETIVO       :  RECUPERA RESPALDOS DE LAS TABLAS:                *00004600
//*                   BLOQBMV CRUCES  HECHOS  HISHECH                  *00004700
//*                   ORDCON  ORDNBMV POSTURA                          *00004800
//*                                                                    *00004800
//* CORRE                                                              *00004900
//* ANTES DE       :  PROCESO DE UNICA VEZ EN CASO DE PROBLEMAS CON EL *00005000
//*                   ALTER A ESTAS TABLAS.                            *00006000
//* DESPUES DE     :  N/A                                              *00007000
//*                                                                    *00008000
//* REALIZO        :  AZERTIA (F.V.C.)                                 *00009000
//* FECHA          :  MARZO 2006.                                      *00009100
//*                                                                    *00009200
//* MODIFICO       :                                                   *00009000
//* FECHA          :                                                   *00009100
//*                                                                    *00009200
//* OBSERVACION    :                                                   *00009300
//*                                                                    *00009300
//**********************************************************************
//PHUN6P01 EXEC PGM=DSNUTILB,PARM='MXP1,CBHUNV0601,'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK05 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTWK06 DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SORTOUT  DD DSN=MXCP.ZM.WKF.LOAD.SORTOUT,
//         DISP=(NEW,CATLG,CATLG),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//         UNIT=3390
//SYSUT1   DD DSN=MXCP.ZM.WKF.LOAD.SYSUT1,
//         DISP=(NEW,CATLG,CATLG),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//         UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PHUN6P01),DISP=SHR
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMHUNV06                       *
//**********************************************************************
