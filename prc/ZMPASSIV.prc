//ZMPASSIV PROC
//**********************************************************************
//* SISTEMA   : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)                 *
//* PROCESO   : ZMJASSIV  (DISPARADOR)                                 *
//*             ZMPASSIV  (PROCEDIMIENTO)                              *
//* OBJETIVO  : EXTRAER LA OPERACION DE LAS ACCIONES PROPIAS DE        *
//*             SOCIEDADES DE INVERSION.                               *
//*                                                                    *
//* CORRE     : A SOLICITUD DEL USUARIO OPC. 919.                      *
//*                                                                    *
//* REALIZO   : HOST TO HOST                                           *
//*                                                                    *
//* MODIFICO  :                                                        *
//*                                                                    *
//* FECHA     : MAYO DE 2009.                                          *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//*********************************************************************
//PJL16P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMPC5280,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                                                                    *
//*                            (ZM4DHH16)                              *
//* OBJETIVO : EXTAER LOS MOVIMIENTOS CORRESPONDIENTES A LAS ACCIONES  *
//*            PROPIAS DE SOCIEDADES DE INVERSION                      *
//*                                                                    *
//*            FECHA DE LIQUIDACION MISMO DIA.                         *
//*                                                                    *
//*            LOS MOVIEMIENTOS CORRESPONDIENTES A SIVA QUE SE         *
//*            OBTIENEN DE LA OPCION 919, Z121                         *
//*                                                                    *
//*            SE GENERA EL GRUPO DE CTA (11)                          *
//*                                                                    *
//**********************************************************************
//P5280P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHH16A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMPC5280,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD DUMMY
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZM528016)
//*
