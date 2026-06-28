//ZMARCD01 PROC
//*====================================================================*
//*    NOMBRE            : ZMARCD01                                    *
//*    APLICATIVO        : ZM@ CASA DE BOLSA Y BANCA PATRIMONIAL       *
//*    PERIODICIDAD      : DIARIO                                      *
//*    OBJETIVO          : CARGA DE REGISTROS A TABLA ZMDT940          *
//*    AUTOR             : FABRICA DE SOFTWARE DGCM. (XMZ8533).        *
//*    FECHA DE CREACION : 25 DE JULIO DE 2018.                        *
//*====================================================================*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    XXXXXXX    XXXXXXX  DDMMMAA    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO     : ZMCD0190                                                *
//* PROGRAMA : IKJEFT01/ZM4DAA01                                       *
//* OBJETIVO : CARGA DE INFORMACION A TABLA ZMDT940                    *
//*====================================================================*
//ZMCD0190 EXEC PGM=IKJEFT01
//*
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.BCARCD01.CARGA940,DISP=SHR
//*
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.BCARCD01.DETALLES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=099,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZAR01T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*        TERMINA PROCESO ZMARCD01 SIVA MULTIEMPRESA                  *
//*--------------------------------------------------------------------*
