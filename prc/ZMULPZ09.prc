//ZMULPZ09 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM BANCA PATRIMONIAL.                               *
//* PROCESO      : ZMULPZ09.                                           *
//* PERIODICIDAD : A SOLICITUD DEL USUARIO.                            *
//* OBJETIVO     : EXTRACCION DE INTLS.                                *
//* REALIZO      : ACTUALIZA EL RFC DE CONTRATOS DE CASA DE BOLSA POR  *
//*                SOLICITUD DEL SAT.                                  *
//* FECHA        : 15 DE MAYO DE 2015.                                 *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PUL092P1.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : ACTUALIZA EL RFC DE CONTRATOS DE CASA DE BOLSA POR    *
//*              SOLICITUD DEL SAT.                                    *
//*--------------------------------------------------------------------*
//PUL092P1 EXEC PGM=IKJEFT01
//*
//SATPFIS  DD DSN=MXCP.ZM.FIX.ECBP.SATRFC.RECEPFIS,
//            DISP=(SHR)
//*
//SATPMOR  DD DSN=MXCP.ZM.FIX.ECBP.SATRFC.RECEPMOR,
//            DISP=(SHR)
//*
//CONCIFIS DD DSN=MXCP.ZM.FIX.ECBP.CONCILIA.PFISICAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=119,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//CONCIMOR DD DSN=MXCP.ZM.FIX.ECBP.CONCILIA.PMORALES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=119,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL09T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMULPZ09                        *
//*--------------------------------------------------------------------*
//*
