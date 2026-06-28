//ZMUCPEA1 PROC
//**********************************************************************
//* PROCESO        : ZMUCPMI0                                          *
//* DESCRIPCION    : PROCESO DISPARADOR PARA ACTUALIZACION DE MONTOS   *
//*                  MINIMOS BATCH DESDE LA TABLA ZMDT871.             *
//* REALIZO        : CAPGEMINI                                         *
//* FECHA          : 07 DE MARZO DE 2012                               *
//**********************************************************************
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA              DESCRIPCION              *
//* ----------- --------- ------- ------------------------------------ *
//* FS-9.9.9-99 CAPGEMINI DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*            *         *       *                                     *
//**********************************************************************
//* PASO     : PULAIP01                                                *
//* OBJETIVO : ACTUALIZACION DE MONTOS MINIMOS BATCH DESDE LA TABLA    *
//*            ZMDT871.                                                *
//* PROGRAMA : ZM4EUA01                                                *
//**********************************************************************
//PUR10P06 EXEC PGM=IKJEFT01
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZURA1T01),DISP=SHR
//SYSTSIN  DD DUMMY
