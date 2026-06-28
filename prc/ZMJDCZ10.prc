//ZMJDCZ10 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXSCF (SUBMITIDOR LINEA)                         *
//*                CBJDCZ10 (JCL)                                      *
//*   PROCEDIM. :  ZMJDCZ10  OPC. 516                                  *
//*                                                                    *
//*   OBJETIVO  :  GENERA MOVTOS. DE CANJES REALIZADOS DE ACUERDO      *
//*                A LA CAPTURA DE PARAMETROS PARA CANJES DE S.D.I.    *
//*                POR PARTE DEL USUARIO (DEFINITIVO)                  *
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
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE S.D.I. CASA DE BOLSA SOLIC. X USUARIO               *
//**********************************************************************
//PJD10P02 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES.DEF,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *
//*        REPORTE S.D.I. BANCA PATRIMONIAL SOLIC. X USUARIO           *
//**********************************************************************
//PJD10P01 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES.DEF,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJDCZ10 SIVA MULTIEMPRESA                  *
//**********************************************************************
