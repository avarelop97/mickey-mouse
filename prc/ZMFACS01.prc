//ZMFACS01 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FACTSET.                                       *
//* PROCESO      : ZMFACS01.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : DA DE ALTA DATOS IRREALES EN PARAM                  *
//*                PROMOTOR, CLIENTE, CUENTA P21                       *
//* REALIZO      : INDRA                                               *
//* FECHA        : MAYO 2019.                                          *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*
//**********************************************************************
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FAC01                                     *
//* OBJETIVO   : INSERTA PARAMETROS DE FACTSET EN PARAM                *
//**********************************************************************
//ZFS01T02 EXEC PGM=IKJEFT01
//*
//E1DATENM DD DSN=MXCP.ZM.FIX.FCT.DATOS.IRREAL,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS01T02),DISP=SHR
//*
//**********************************************************************
//*                    TERMINA ZMFACS01
//**********************************************************************
