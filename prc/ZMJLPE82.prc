//ZMJLPE82 PROC
//*
//**********************************************************************
//*                            (ZM4DJ813)                              *
//* OBJETIVO : GENERAR UN ARCHIVO DE CONSULTA ROBUSTECIDAD DE MOVIMIEN-*
//*            TOS DE UN CONTRATO POR FECHA DE LIQUIDACION             *
//*                                                                    *
//**********************************************************************
//*
//PJL82P01 EXEC PGM=IKJEFT01
//*
//ZMJ81301 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.ZMJLPE42,DISP=SHR
//ZMJ81302 DD DSN=MXCP.ZM.FIX.TES.ECBP.ZMJLPE42.ARCHCROB,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=171,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJL82P01),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//* APLICACION       : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO  *
//*                                                                    *
//* NOMBRE DEL PROC  : ZMJLPE82                                        *
//* NOMBRE DEL JCL   : CBJLPE82                                        *
//* CORRE ANTES DE  :  SIVAXCOR                                        *
//* CORRE DESPUES DE:  CBJTNE06                                        *
//*                                                                    *
//* OBJETIVO : GENERAR UN ARCHIVO  CON LA CONSULTA ROBUSTECIDA DE LAS  *
//*            OPERACIONES DE UN CONTRATO SIMILAR A LA OPC.185         *
//*            OPC. 200, TRAN=Z950                                     *
//* FECHA DE CREACION: JULIO 2013                                      *
//*                                                                    *
//* AUTOR            : XMBJ003 (ITS)                                   *
//*--------------------------------------------------------------------*
//*             L O G   D E    M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA   DESCRIPCION                         *
//* -----------  -------  -------  ----------------------------------- *
//* FS-1.0.0-01  XXXXXXX  DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
