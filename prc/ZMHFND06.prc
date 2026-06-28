//ZMHFND06 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM BANCA PATRIMONIAL.                               *
//* PROCESO      : ZMHFND06.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : SE GENERA ARCHIVO QUE REFLEJA LAS ORDENES CORREGIDAS*
//*                (REASIGNADAS).                                      *
//* REALIZO      : CDA-INFORMATICA(CABS).                              *
//* FECHA        : 28 DE ENERO DEL 2016.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PHFD0P01.                                               *
//* UTILERIA : IKJEFT01 / ZM4DGC01.                                    *
//* OBJETIVO : GENERA INFORMACION CON LAS ORDENES CORREGIDAS (REASIGNA-*
//*            DAS).                                                   *
//*--------------------------------------------------------------------*
//PHFD0P01 EXEC PGM=IKJEFT01
//*
//PI601765 DD DUMMY
//S1GC01A1 DD DSN=MXCP.ZM.FIX.CORREC1.ZM4DGC01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=396,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHFD0T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMHFND06                        *
//*--------------------------------------------------------------------*
