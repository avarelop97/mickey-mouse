//ZMUEPMJ8 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*              >>>>  PREVIO DE ESTADOS DE CUENTA  <<<<               *
//*                                                                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPMJ8                                            *
//*                                                                    *
//*   OBJETIVO  :  DEPURACION DE ICONCEPT EN TABLAS QUE LO CONTENGAN   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO CBP     *
//**********************************************************************
//PUMJ8P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.ZMUEPMJ8,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                       -- ZM4MJ008 --                               *
//* OBJETIVO : PROGRAMA QUE DEPURA LOS ICONCEPT DADOS DE BAJA          *
//*            CONSERVANDO 'NN' ANIOS EN LAS TABLAS HISTORICAS         *
//*            QUE CONTIENEN EL CAMPO ICONCEPT, ICONCEP2               *
//*            (ESTE PROGRAMA CORRE EL ULTIMO VIERNES DEL MES)         *
//**********************************************************************
//PUMJ8P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE91T04),DISP=SHR
//*                                                                    *
//**********************************************************************
//*        TERMINA PROCESO ZMUEPMJ8 SIVA MULTIEMPRESA                  *
//**********************************************************************
