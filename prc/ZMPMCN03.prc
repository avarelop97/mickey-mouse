//ZMPMCN03 PROC
//*====================================================================*
//*    NOMBRE            :ZMPMCN03                                     *
//*    APLICATIVO        :ZM@                                          *
//*    PROYECTO          :SIVA 2012 ODT12                              *
//*    PERIODICIDAD      :MENSUAL                                      *
//*    OBJETIVO          :SE GENERA EL ARCHIVO MENSUAL DE PROMOTORES Y *
//*                       OPERADORES DE PISO PARA LA COMISION NACIONAL *
//*                       BANCARIA Y DE VALORES, CON LOS MOVIMIENTOS   *
//*                       DE CASA DE BOLSA.                            *
//*    AUTOR             :FABRICA DE SOFTWARE DGCM.                    *
//*    FECHA DE CREACION :18 DE SEPTIEMBRE DE 2013.                    *
//*====================================================================*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    XXXXXXX    XXXXXXX  DDMMMAA    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO     : PHCN0104                                                *
//* PROGRAMA : ZM4MH021                                                *
//* OBJETIVO : GENERA ARCHIVO MENSUAL DE PROMOTORES Y OPERADORES DE    *
//*            PISO.                                                   *
//*====================================================================*
//PHCN0104 EXEC PGM=IKJEFT01
//*
//ZMFH0104 DD DSN=MXCP.ZM.FIX.PROM.ZM4MH021.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=180,BLKSIZE=0),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHFC1T13),DISP=SHR
//*
