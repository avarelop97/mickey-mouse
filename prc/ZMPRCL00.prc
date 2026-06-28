//ZMPRCL00 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ CASA DE BOLSA                                    *
//* DECRIPCION  : REALIZA LOS CALCULOS DE COSTO PROMEDIO.              *
//* AUTOR       : FSW DGCM (XMZ8533).                                  *
//* FECHA       : 07 DE MARZO DE 2018.                                 *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*   @MEX000   XXXXXXX  DDMMMAA ..................................... *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRCL400                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL FILTRADO DE LOS REGISTROS QUE APLICARON    *
//*              RECLASIFICACION.                                      *
//*--------------------------------------------------------------------*
//ZMRCL400 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SDI.RECLAS.FEB2018,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..ECBP.BCJRCL00.CTASRCL1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(LRECL=455,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRCL399),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRCL399                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL FILTRADO DE LOS REGISTROS QUE APLICARON    *
//*              RECLASIFICACION.                                      *
//*--------------------------------------------------------------------*
//ZMRCL399 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SDI.RECLAS.MAR2018,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.F&FECHA..ECBP.BCJRCL00.CTASRCL2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(LRECL=455,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMRCL399),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRCL398                                              *
//* UTILERIA   : IKJEFT1A/ZM4RCL00                                     *
//* OBJETIVO   : REALIZA LOS CALCULOS DE COSTO PROMEDIO PARA ACTUALIZAR*
//*              CARTERA.                                              *
//*--------------------------------------------------------------------*
//ZMRCL398 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.F&FECHA..ECBP.BCJRCL00.CTASRCL1,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.F&FECHA..ECBP.BCJRCL00.CTASACT1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=198,BLKSIZE=0)
//*
//S2DQSAL2 DD DSN=MXCP.ZM.FIX.F&FECHA..ECBP.BCJRCL00.SECDUPL1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=198,BLKSIZE=0)
//*
//E2DQENT2 DD DSN=MXCP.ZM.FIX.F&FECHA..ECBP.BCJRCL00.CTASRCL2,
//            DISP=SHR
//*
//S3DQSAL3 DD DSN=MXCP.ZM.FIX.F&FECHA..ECBP.BCJRCL00.CTASACT2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=198,BLKSIZE=0)
//*
//S4DQSAL4 DD DSN=MXCP.ZM.FIX.F&FECHA..ECBP.BCJRCL00.SECDUPL2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=198,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRCL398),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*             FIN DE PROCESO  ZMPRCL00                               *
//*--------------------------------------------------------------------*
