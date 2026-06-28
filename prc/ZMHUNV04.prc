//ZMHUNV04 PROC
//*
//**********************************************************************00002000
//*                                                                    *00003000
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V).                *00004000
//*                                                                    *00004200
//* PROCESO        :  CBHUNV04                                         *00004300
//*                   TENENCIA ESTADISTICA.                            *00004400
//*                                                                    *00004500
//* OBJETIVO       :  RECUPERA RESPALDOS DE LAS TABLAS:                *00004600
//*                   PARAM   GPOCONC SEULTC  EDVALCA EDDEPRE          *00004700
//*                   SEHIPRO SEPRULT SECATAC EDSECIN CARTERA          *00004800
//*                   AGPOCON SECATAP SEULTS  EDMOVED                  *00004800
//*                   CTLPROC SEULTP  SECATAS EDIMPUE                  *00004800
//*                                                                    *00004800
//* CORRE                                                              *00004900
//* ANTES DE       :  PROCESO DE UNICA VEZ EN CASO DE PROBLEMAS CON EL *00005000
//*                   PROCESO CBSFCD25                                 *00006000
//* DESPUES DE     :  PROCESO DE UNICA VEZ                             *00007000
//*                                                                    *00008000
//* REALIZO        :  AZERTIA (F.V.C.)                                 *00009000
//* FECHA          :  JUNIO 2005.                                      *00009100
//*                                                                    *00009200
//* MODIFICO       :                                                   *00009000
//* FECHA          :                                                   *00009100
//*                                                                    *00009200
//* OBSERVACION    :                                                   *00009300
//*                                                                    *00009300
//**********************************************************************
//PHUN4P01 EXEC PGM=DSNUTILB,PARM='MXP1,CBHUNV0401,'
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
//         UNIT=3390
//SYSUT1   DD DSN=MXCP.ZM.WKF.LOAD.SYSUT1,
//         DISP=(NEW,CATLG,CATLG),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHUN4T01),DISP=SHR
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMHUNVO4                       *
//**********************************************************************
