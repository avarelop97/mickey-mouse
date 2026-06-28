//ZMHEPD09 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)        *
//*                                                                    *
//*   PROCEDIM.        :  ZMHEPD09                                     *
//*                                                                    *
//*   OBJETIVO         :  GENERA ARCHIVOS DE EMISORAS Y CONTRATOS PARA *
//*                       GL                                           *
//*                                                                    *
//*   CORRE            :  SOLO UNA VEZ A LAS 17:00 HRS.                *
//*                                                                    *
//*   PERIODICIDAD     :  DIARIO                                       *
//*                                                                    *
//*   FECHA            :  JULIO DE 2010                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-01 CAPGEMINI 08AGO14 SE MODIFICA LA LONGITUD DEL ARCHIVO  *
//*                               DE SALIDA ZMHW26A2.                  *
//*--------------------------------------------------------------------*
//*                                                                    *
//**********************************************************************
//*  PASO:  2     ARCHIVOS DE CONTRATOS Y EMISORAS PARA GL             *
//*  PHE09P02                   ZM4DHW26                               *
//**********************************************************************
//PHE09P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW26A2 DD DSN=MXC&AMB..ZM.FIX.REPORTE.CONTRATO,
//            DISP=(NEW,CATLG,DELETE),
//*FS-1.1.0-01-INI
//*           DCB=(LRECL=202,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=204,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*FS-1.1.0-01-FIN
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//ZMHW26A3 DD DSN=MXC&AMB..ZM.FIX.REPORTE.EMISORAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=070,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE09T01),DISP=SHR
//*                                                                    *
