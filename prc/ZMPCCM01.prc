//ZMPCCM01 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ CASA DE BOLSA                                    *
//* DESCRIPCION : RECUPERA LOS REGISTROS QUE SUFRIERON CAMBIO DE       *
//*               COMISION DE LA TABLA ZMDTRCA.                        *
//* AUTOR       : FSW DGCM (XMZ8533).                                  *
//* FECHA       : 18 DE ABRIL DE 2018.                                 *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*   @MEX000   XXXXXXX  DDMMMAA ..................................... *
//*---------------------------------------------------------------------
//*     MODIFICO:       IGNACIO ESQUIVEL FLORES
//*     FECHA   :       ABRIL 2023
//*     ASUNTO:         INCREMENTO FOLIO CONCEPT
//*     MARCA :         SDATOOL-41254-IEF-INI (INICIO BLOQUE)
//*                     SDATOOL-41254-IEF-FIN (FIN    BLOQUE)
//*---------------------------------------------------------------------
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZMCM0199                                              *
//* UTILERIA   : IKJEFT1A/ZM4CCM01                                     *
//* OBJETIVO   : OBTIENE LOS REGISTROS QUE SE LIQUIDAN AL DIA, PARA    *
//*              INSERTARLOS EN ZMDT633                                *
//*--------------------------------------------------------------------*
//ZMCM0199 EXEC PGM=IKJEFT1A
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJCCM01.DETALLE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//*SDATOOL-41254-IEF-INI
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=145,BLKSIZE=0)
//            DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0)
//*SDATOOL-41254-IEF-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCM0199),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*             FIN DE PROCESO  ZMPCCM01                               *
//*--------------------------------------------------------------------*
