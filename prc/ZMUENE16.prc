//ZMUENE16 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : BCUENE08                                            *
//* PERIODICIDAD : PROCESO DIARIO                                      *
//* OBJETIVO     : CREA LOS ARCHIVOS PARA CONCILIAR TABLAS DE EGRESOS. *
//* FECHA        : OCTUBRE 2018                                        *
//*                                                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO     : ZMUEN050                                                *
//* OBJETIVO : CONSILIA INFORMACION DE LAS TABLAS ZMDT883, ZMDT884 Y   *
//*            ZMDT885 PARA CFDI EGRESOS 3.3                           *
//* PROGRAMA : ZM4VER02                                                *
//**********************************************************************
//ZMUEN050 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUEN050 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZM4VERE1 DD DSN=MXCP.ZM.FIX.REC.EBCM.CONCI84,DISP=SHR
//*
//ZM4VERE2 DD DSN=MXCP.ZM.FIX.REC.EBCM.CONCI83,DISP=SHR
//*
//ZM4VERE3 DD DSN=MXCP.ZM.FIX.REC.EBCM.CONCI85,DISP=SHR
//*
//ZM4VERE4 DD DSN=MXCP.ZM.FIX.REC.EBCM.CONCI86,DISP=SHR
//*
//ZM4VERE5 DD DSN=MXCP.ZM.FIX.REC.EBCM.ACTUA84,DISP=SHR
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNE1149),DISP=SHR
//*
//**********************************************************************
//* PASO     : ZMUEN045                                                *
//* OBJETIVO : BORRA LOS ARCHIVOS DESPUES DE SER PROCESADOS DE MANERA  *
//*            CORRECTA.                                               *
//**********************************************************************
//ZMUEN045 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=X
//*
//SYSIN    DD  DUMMY
//DD1      DD  DSN=MXCP.ZM.FIX.REC.EBCM.CONCI83,
//             DISP=(OLD,DELETE,DELETE)
//*
//DD2      DD  DSN=MXCP.ZM.FIX.REC.EBCM.CONCI84,
//             DISP=(OLD,DELETE,DELETE)
//*
//DD3      DD  DSN=MXCP.ZM.FIX.REC.EBCM.CONCI85,
//             DISP=(OLD,DELETE,DELETE)
//*
//DD4      DD  DSN=MXCP.ZM.FIX.REC.EBCM.CONCI86,
//             DISP=(OLD,DELETE,DELETE)
//*
//DD5      DD  DSN=MXCP.ZM.FIX.REC.EBCM.ACTUA84,
//             DISP=(OLD,DELETE,DELETE)
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUENE15                          *
//*--------------------------------------------------------------------*
