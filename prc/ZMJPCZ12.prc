//ZMJPCZ12 PROC
//*====================================================================*
//* SISTEMA      : VG / PLATAFORMA COBRANZA                            *
//* JOB          : CBJCPZ12.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERA REPORTE DE CONTRATOS PERTENECIENTES AL GRUPO *
//*                DE LIQUIDACION PROPORCIONADO ENVIADO POR EL USUARIO.*
//* AUTOR        : FSW-DGCM (AJAJ).                                    *
//* FECHA        : 05/SEP/2013.                                        *
//*====================================================================*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA         DESCRIPCION                   *
//* ----------  --------- -------  ------------------------------------*
//* ..........  ........  ........ ....................................*
//*====================================================================*
//* PASO     : PCZ12P01                                                *
//* PROGRAMA : IKJEFT01 / ZM4EJ135                                     *
//* DESCRIP. : GENERA REPORTE DE CONTRATOS DE UN GRUPO DE LIQUIDACION  *
//*====================================================================*
//PCZ12P01 EXEC PGM=IKJEFT01
//*
//ZME135A1 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMJPCP12,DISP=SHR
//*
//ZME135A2 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMJPCZ12.REPLIQ,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=145,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCZ12T01),DISP=SHR
//*
//*====================================================================*
