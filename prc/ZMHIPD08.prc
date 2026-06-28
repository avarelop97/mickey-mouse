//ZMHIPD08 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHIND08                                         *
//*                   INICIO DE DIA DEL SIVA                           *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*AZCS*SIVA*PENDIENTE*HPC**********************************************
//**********************************************************************
//*           ARCHIVO DE PARAMETROS                                    *
//**********************************************************************
//PHI08P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..ZMHIPD08,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************00003000
//*                       * ZM4DLM23 *                                 *
//* OBJETIVO: REALIZAR ARCHIVO CON INFORMACION DE EMISORAS DE MDD      *
//*           CON POSICION EN CARTERA                                  *
//*                                                ***M. DINERO        *
//**********************************************************************00003000
//PHI08P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//*                                                                     00181000
//PI601765 DD DUMMY
//*                                                                     00181000
//ZMLM23P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..ZMHIPD08,DISP=SHR
//*                                                                     00181000
//ZM4DH0S1 DD DSN=MXCP.ZM.GDGD.MDD.E&EMP..EMISORAS.MDD(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,50),RLSE),
//            RECFM=FB,LRECL=80,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*                                                                     00181000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI08T03),DISP=SHR
//*                                                                     00310000
//**********************************************************************
//*                          === ZM4DGG47 ===                          *
//*                                                                    *
//* OBJETIVO : REPORTE ESTADO DE CUENTA DEL DIA                        *
//*                                               *** ESTADOS DE CUENTA*
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PHI08P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMGG47P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..ZMHIPD08,DISP=SHR
//**
//*ZMGG47R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00240000
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI08T02),DISP=SHR
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                          ===  IDCAMS  ===                          *
//*                                                                    *
//* OBJETIVO : BORRA ARCHIVO SIVA.FAHORRO.CHEQUES                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PHI08P01 EXEC PGM=ICEGENER,COND=(4,LT)
//PI601765 DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*SYSUT1   DD DUMMY,LRECL=85,BLKSIZE=0,RECFM=FB
//SYSUT1   DD DUMMY,LRECL=85,RECFM=FB
//*
//*SYSUT2   DD DSN=GFPP.CB.FIX.FAHORRO.CHEQUES,DISP=SHR
//SYSUT2   DD DSN=SIVA.TES.FIX.E&EMP..FAHORRO.CHEQUES,DISP=SHR
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                       --  ZM4VG002  --                             *
//*            ACTUALIZA TABLAS QUE CONTENGAN CAMPO EMPRESA            *
//*            CON CBP SI SON DIFERENTES A LA MISMA.      ** TEMPORAL  *
//**********************************************************************
//PHI08P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZMG002A1 DD DSN=MXCP.ZM.GDGD.TES.MONITOR.IDD(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            RECFM=FB,LRECL=250,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLI23T07),DISP=SHR
//*
