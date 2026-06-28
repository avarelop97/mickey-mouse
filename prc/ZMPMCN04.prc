//ZMPMCN04 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMPMCN04                                             *
//* OBJETIVO    : GENERACION DE ARCHIVOS PARA LA CNBV, CON LOS MOVI-   *
//*               MIENTOS MENSUALES DE CASA DE BOLSA.                  *
//* REALIZO     : FSW-DGCM(XMY1076)                                    *
//* FECHA       : 03 DE ENERO DE 2018.                                 *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO        : ZMPMN001                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH008                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE CLIENTES VIGENTES.         *
//**********************************************************************
//ZMPMN001 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0107 DD DSN=MXCP.ZM.FIX.CNBV.CTESVIGE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=813,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T07),DISP=SHR
//*
//**********************************************************************
//* PASO        : ZMPMN002                                             *
//* PROGRAMA    : IKJEFT01/ZM4MH016                                    *
//* DESCRIPCION : GENERA ARCHIVO MENSUAL DE COTITULARES Y BENEFICIARIOS*
//*                                                                    *
//**********************************************************************
//ZMPMN002 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFH0105 DD DSN=MXCP.ZM.FIX.CNBV.COTBENE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=288,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHFC1T05),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
//*
