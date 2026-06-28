//ZMGLPZ31 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*  SISTEMA       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//*  PROCESO       :  ZMGLPZ31  (OPC-653. SUBOPC-10)                   *
//*                                                                    *
//*  DISPARADOR    :  SIVAXINP (DISPARADOR)                            *
//*                                                                    *
//* OBJETIVO       :  GENERAR REPORTE PARA TESORERIA DE LOS ABONOS     *
//*                   ENVIADOS A OTRO PAIS.                            *
//*                                                                    *
//*  CORRE ANTES DE : NINGUNO                                          *
//*                                                                    *
//*  CORRE DESPUES DE: NINGUNO                                         *
//*                                                                    *
//*  PERIODICIDAD    : EVENTUAL (CORRE A SOLICITUD DEL USUARIO)        *
//*                                                                    *
//*  ELABORADO POR   : HESFOR.- (MARTIN S.G.)                          *
//*                                                                    *
//*  FECHA           : MARZO     2018.                                 *
//*                                                                    *
//*  OBSERVACIONES   : SUBMITIDO DESDE EL MENU PRINCIPAL               *
//*                                       ZZ42 (OPC.653-SUBOPC-10).    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*                       --  ZM4DGV31  --                             *
//* OBJETIVO :    REPORTE DE OPERACIONES INUSUALES                     *
//**********************************************************************
//PGL35P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765  DD DUMMY
//ZMGV31P1 DD DSN=MXCP.ZM.TMP.OTR.EMP.SUC.ZMGLPZ30,DISP=SHR
//*
//ZMGV31R1 DD DSN=MXCP.ZM.FIX.ZM4DGV31.REPRPLD,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL31T01),DISP=SHR
//**********************************************************************
//* OBJETIVO : UNIFICA REPORTES PARA ENVIO A SERVIDOR                  *
//* PROGRAMA : ICEGENER                                                *
//**********************************************************************
//PJC09P09 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZM4DGV31.REPRPLD,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                      F I N   Z M G L P Z 3 1                       *
//**********************************************************************
