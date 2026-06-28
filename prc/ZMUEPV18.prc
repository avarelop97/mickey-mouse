//ZMUEPV18 PROC EMP=BCM,SUC=,INT1=' ',INT2=' '
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  INFORMACION S.A.T. <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPV18                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA ARCHIVO  SECUENCIAL CON LOS PRECIOS DE       *
//*                VECTOR DEL ULTIMO DIA DEL MES                       *
//*                                                                    *
//*   CORRE ANTES DE  : NINGUNO                                        *
//*                                                                    *
//*   CORRE DESPUES DE: NINGUNO                                        *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                         * ZM3DG001 *                               *
//* OBJETIVO: RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO  *
//*           DE 96 POSICIONES                                         *
//* REINICIABLE POR RESTART'S                                          *
//**********************************************************************
//PTE00P07 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SAT.EBCM.ZMUEPV18,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                           -- ZM4MU024 --                           *
//*  GENERA ARCHIVO  SECUENCIAL CON LOS PRECIOS DE VECTOR ULT. DIA MES *
//*  CORRESPONDENTE A MERCADO DE CAPITALES Y MERCADO DE DINERO         *
//**********************************************************************
//PTE00P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU024A1 DD DSN=MXCP.ZM.FIX.ECBP.VECPRE.SAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=160,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTE00T03),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPV18 SIVA MULTIEMPRESA                  *
//**********************************************************************
