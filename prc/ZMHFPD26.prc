//ZMHFPD26 PROC
//*====================================================================*
//*    NOMBRE            : ZMHFPD26                                    *
//*    APLICATIVO        : ZM@ MODULO SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*    PROYECTO          : RINO FASE II.                               *
//*    PERIODICIDAD      : DIARIO                                      *
//*    OBJETIVO          : GENERAR UN REPORTE DE "LOG DE CLIENTES",    *
//*                        QUE SUPERARON SU NIVEL DE RIESGO RESPECTO   *
//*                        A SU PERFIL DE INVERSION.                   *
//*    AUTOR             : FABRICA DE SOFTWARE DGCM. (CDJA).           *
//*    FECHA DE CREACION : 28 DE JUNIO DE 2011.                        *
//*====================================================================*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    XXXXXXX    XXXXXXX  DDMMMAA    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO     : PHF26P01                                                *
//* PROGRAMA : ZM4DH106                                                *
//* OBJETIVO : GENERACION DE REPORTE DE LOG DE CLIENTES.               *
//*====================================================================*
//PHF26P01 EXEC PGM=IKJEFT01
//*
//ZMH106R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF26T01),DISP=SHR
