//ZMHIPD20 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (BCA. PAT.).         *
//*                                                                    *
//* PROCESO        :  BCHIND20                                         *
//*                   INICIO DE DIA DE BANCA PATRIMONIAL.              *
//*                                                                    *
//* OBJETIVO       :  PERMITE EL ALTA DE NOTAS                         *
//*                                                                    *
//* REALIZO        :  ACCENTURE.                                       *
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
//* UTILERIA   : IKJEFT01/ZM4HW105.                                    *
//* OBJETIVO   : EJECUTA PROGRAMA ZM4HW105.                            *
//*--------------------------------------------------------------------*
//PHI16P30 EXEC PGM=IKJEFT01
//*
//E1ZMDNEW DD DSN=MXCP.ZM.FIX.ALTA.ESTRUCTU,
//            DISP=SHR
//*
//S1SALIDA DD DSN=MXCP.ZM.FIX.ALTA.NOTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=455,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI20T30),DISP=SHR
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//* PASO       : PHI16P10.                                             *
//* UTILERIA   : IKJEFT01/ZM4HW102.                                    *
//* OBJETIVO   : EJECUTA PROGRAMA ZM4HW102.                            *
//*--------------------------------------------------------------------*
//PHI16P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMDNEW DD DSN=MXCP.ZM.FIX.ALTA.NOTA,
//            DISP=SHR
//*
//S1SALIDA DD DSN=MXCP.ZM.FIX.ALTA.NOTA.SAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=120,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI20T20),DISP=SHR
//*
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMHIPD20                        *
//*--------------------------------------------------------------------*
