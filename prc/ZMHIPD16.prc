//ZMHIPD16 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (BCA. PAT.).         *
//*                                                                    *
//* PROCESO        :  BCHIND16                                         *
//*                   INICIO DE DIA DE BANCA PATRIMONIAL.              *
//*                                                                    *
//* OBJETIVO       :  PERMITE EL ALTA DE REGISTROS WARRANTS.           *
//*                                                                    *
//* REALIZO        :  INDRA.                                           *
//*                                                                    *
//* FECHA          :  2021/02/17                                       *
//*                                                                    *
//* MODIFICO       :                                                   *
//*                                                                    *
//**********************************************************************
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//* PASO       : PHI16P20.                                             *
//* UTILERIA   : IKJEFT01/ZM4HW100.                                    *
//* OBJETIVO   : EJECUTA PROGRAMA ZM4HW100.                            *
//*--------------------------------------------------------------------*
//PHI16P20 EXEC PGM=IKJEFT01
//*
//ZMH100E1 DD DSN=MXCP.ZM.FIX.ALTA.WARRANTS,
//            DISP=SHR
//*
//ZMH100S1 DD DSN=MXCP.ZM.FIX.ALTA.WARRANTS.SAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=106,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI16T20),DISP=SHR
//*
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMHIPD16                        *
//*--------------------------------------------------------------------*
