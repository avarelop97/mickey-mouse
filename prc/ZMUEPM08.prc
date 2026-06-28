//ZMUEPM08 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* PROYECTO     : ZM MODULO UNICO DE VALORES (M.U.V)                  *
//* PROCESO      : ZMUEPM08                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : PROCESO EL CUAL TIENE COMO FUNCION RESPALDAR EL GDG *
//*                EL ARCHIVO DE CASA DE BOLSA CON SELLOS FISCALES QUE *
//*                SE ENVIA A INDRA                                    *
//* REALIZO      : CAPGEMINI                                           *
//* FECHA        : 12 DE JULIO DE 2012                                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-1.0.0-01  XMBB129 12JUL12  SE ELIMINAN TODOS LOS PASOS DEL PROC *
//*                               Y SE AGREGA EL PASO ZMPM2820         *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZMPM2820                                              *
//* UTILERIA   : ICEGENER                                              *
//* OBJETIVO   : RESPALDAR EN GDG EL ARCHIVO DE CASA DE BOLSA CON      *
//*              SELLOS FISCALES QUE SE ENVIA A INDRA.                 *
//* FS-1.0.0-01: SE AGREGA EL PASO ZMPM2820                            *
//*--------------------------------------------------------------------*
//*
//ZMPM2820 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.INDRA.DIGTA,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOSCTA.DIGTA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,EXPDT=99000),UNIT=FJVTP,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//*                 TERMINA PROCESO ZMUEPM08                           *
//**********************************************************************
