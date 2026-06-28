//ZMPMG002 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  M I G R A C I O N  >>                      *
//*                                                                    *
//*   APLICACION:  MODULO UNICO DE VALORES (M.U.V.)                    *
//*                                                                    *
//*   OBJETIVO  :  GENERA ARCHIVO Y REPORTE POR DIFERENCIAS EN PERSONA *
//*                LIDAD JURIDICA.                                     *
//*   EJECUCION DESPUES : DE ACTUALIZACION DE DOMICILIOS DE ENVIO EN   *
//*                       MUV (COMO EVENTUAL).                         *
//*                                                                    *
//*   FECHA:  OCTUBRE/2006                                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4MG002
//* OBJETIVO: GENERA REPORTE POR ERROR EN PERSONALIDAD JURIDICA.
//*---------------------------------------------------------------------
//PMPMG001 EXEC PGM=IKJEFT01
//ENTRADA1 DD DSN=MXC&AMB..ZM.FIX.REL.AMCP,DISP=SHR
//ENTRADA2 DD DSN=MBV&AMB..AJ.FIX.ECO.INTFAZ.PERJUR.PROD1013,DISP=SHR
//REPORTE  DD DSN=MXC&AMB..ZM.FIX.REL.REPERJUR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMG02T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*                (FONDOS NORMALES)                                   *
//*        IMPRIME EN CONTROL-D EL REPORTE DE ERROR EN PERS JURIDICA.  *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 NO SE BORRA CDAM HGO 24493 LO USA SUPERVAL
//**********************************************************************00006000
//PMPMG002 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.REL.REPERJUR,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
