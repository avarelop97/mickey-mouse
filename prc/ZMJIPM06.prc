//ZMJIPM06 PROC
//**********************************************************************00002000
//*                                                                    *00003000
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V).                *00004000
//*                                                                    *00004200
//* PROCESO        :  CBJINM06                                         *00004300
//*                   SAT 2008.                                        *00004400
//*                                                                    *00004500
//* OBJETIVO       :  GENERAR LA INFORMACION REQUERIDA POR LA S.A.T.   *00004600
//*                                                                    *00004800
//* OBSERVACION    :  ESTE PROCESO CORRE MENSUALMENTE.                 *00009300
//*                                                                    *00009400
//* CORRE                                                              *00004900
//* ANTES DE       :  CBJINM07  -  ZMJIPM07                            *00005000
//*                                                                    *00006000
//* DESPUES DE     :  CBJINM02  -  ZMJIPM02                            *00007000
//*                                                                    *00008000
//* REALIZO        :  AZERTIA(F.V.C.)                                  *00009000
//* FECHA          :  ENERO 2008.                                      *00009100
//*                                                                    *00009200
//* MODIFICO       :                                                   *00009000
//* FECHA          :                                                   *00009100
//*                                                                    *00009200
//* OBSERVACION    :                                                   *00009300
//*                                                                    *00009300
//*                                                                    *00009400
//*                                                                    *00009400
//**********************************************************************00009500
//*                           -- ZM4MJ011 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION CASA DE BOLSA S.A.T.         *
//* ACTUALIZA   :                                                      *
//*                                                                    *
//**********************************************************************
//PJI06P02 EXEC PGM=IKJEFT01
//*
//TENENCIA DD DSN=MXCP.ZM.FIX.ECBP.TENENCI1.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=106,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P03),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI06P01),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00009500
//*                           -- ZM4MJ011 --                           *
//* OBJETIVO    :  EXTRACCION INFORMACION M.U.V. PARA S.A.T.           *
//* ACTUALIZA   :                                                      *
//**********************************************************************
//PJI06P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//TENENCIA DD DSN=MXCP.ZM.FIX.EMUV.TENENCI1.SAT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=106,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PJI02P04),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJI06P01),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
