//ZMJDCZ06 PROC
//**********************************************************************
//*                         BANCA PATRIMONIAL                          *
//*                         =================                          *
//*                   >>>>  OPERACION CENTRAL  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAX606 (SUBMITIDOR LINEA)                         *
//*                BCJDCZ06 (JCL)                                      *
//*   PROCEDIM. :  ZMJDCZ06  OPC. 606                                  *
//*                                                                    *
//*   OBJETIVO  :  GENERA INFORMACIN DE LAS OPERACIONES CAPTURADAS     *
//*                DE ACUERDO A LOS PARAMETROS CAPTURADOS POR PARTE    *
//*                DEL USUARIO                                         *
//*                                                                    *
//*   CORRE ANTES DE  : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   CORRE DESPUES DE: A PETICION DEL USUARIO                         *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//*                    -- ZM4EJ606  --                                 *
//*  GENERA ARCHIVOS CON LA INFORMACION DE LAS OPERACIONES CAPTURADAS  *
//*  POR EL USUARIO Y SOLICITADOS MEDIANTE OPCION 606                  *
//**********************************************************************
//PJD06P02 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMJ606E1 DD DSN=MXCP.ZM.FIX.EBCM.ZMJDCP06,DISP=SHR
//*
//ZMJ606S1 DD DSN=MXCP.ZM.FIX.EBCM.LST.OPECAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//ZMJ606S2 DD DSN=MXCP.ZM.FIX.EBCM.ARC.OPECAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=300,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD06T06),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE DE OPERACIONES CAPTURADAS (LST. OPE. CAPTURADAS)    *
//**********************************************************************
//PJD06P01 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBCM.LST.OPECAP,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJDCZ06 SIVA MULTIEMPRESA                  *
//**********************************************************************
