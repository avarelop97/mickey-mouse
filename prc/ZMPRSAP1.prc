//ZMPRSAP1   PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA : ZM   BANCA PATRIMONIAL Y FIDUCIARIO                      *
//* OBJETIVO: GENERAR ARCHIVO DE INTERFAZ CON LOS DATOS DE LOS         *
//*           CONTRATOS PATRIMONIALES PARA SINCRONIA APLICATIVA CON    *
//*           PERSONAS                                                 *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//* MARCA       AUTOR   FECHA    DESCRIPCION                           *
//*----------- ------- ------- ----------------------------------------*
//*@FS-1.0.0-1 XMZ0942 23MAY14 SE AGREGA LA ENTRADA ZMCSNAP1 AL PASO   *
//*                            ZMCSNAP1                                *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO    : ZJD01P01                                                 *
//* PROGRAMA: IKJEFT01/ZM4SAP01                                        *
//* OBJETIVO: GENERA ARCHIVO DE INTERFAZ DE LAS TABLAS ZMDT608 Y CUENTA*
//*--------------------------------------------------------------------*
//ZJD01P01 EXEC PGM=IKJEFT01
//*@FS-1.0.0-1-INI
//ARCHENT1 DD DSN=MXC&AMB..ZM.FIX.CON.AMCP,DISP=SHR
//*@FS-1.0.0-1-FIN
//ZMCSNAP1 DD DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),UNIT=3390,
//            DCB=(LRECL=80,BLKSIZE=0,RECFM=FB,DSORG=PS),
//            DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.MUVPE
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZJD01P01)
