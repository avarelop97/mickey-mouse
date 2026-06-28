//ZMGIPD15 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SIVA                                             *
//*                                                                    *
//* PROCESO        :  CBGIND15                                         *
//*                   PROMOCION                                        *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  GENERAR REPORTE DE COMISIONES EN 9121            *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PTEPED06 (MODULO DE CONTRATOS)                   *
//*                                                                    *
//* DESPUES DE     :  PTEPED04 (INGRESOS)                              *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*           ARCHIVO DE PARAMETROS                                    *
//**********************************************************************
//PGI15P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..ZMGIPD15,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*********************************************************************
//*                    * ZM4DGP00 *
//* OBJETIVO : REPORTE A PROMOCION DE LA POSICION DEL DIA
//*                                           (SOLO EL DIARIO)
//*
//* PASO REINICIABLE POR RESTART Y RERUN DE CONTROL-M,R  ***PROMOTORES
//*********************************************************************
//PGI15P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*
//ZMGP00A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..ZMGIPD15,DISP=SHR
//*
//ZMGP00R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI15T02),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERAR ARCHIVO CON LOS DATOS DE LAS EMISORAS -         *
//*            SERIES VALIDAS PARA E-GUARD (MERCADO DE CAPITA-         *
//*            LES, MERCADO DE DINERO Y SOCIEDADES DE INVERSI-         *
//*            ON).                                                    *
//*            -- ZM4DQQ10 --                                          *
//**********************************************************************
//PGI15P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDQQ011 DD DSN=MXCP.ZM.FIX.MDC.ECBP.ZM4DQQ01.EGUARD1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=175,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMDQQ012 DD DSN=MXCP.ZM.FIX.MDC.ECBP.EMISORAS.EGUARD1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=244,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF33T37),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : ELIMINAR REGISTROS DUPLICADOS CUANDO SE PRESENTA        *
//*            UN DERECHO Y LA EMISORA NO CAMBIA DE CUPON              *
//**********************************************************************
//PGI15P0B EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MDC.ECBP.EMISORAS.EGUARD1,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.MDC.ECBP.EMISORAS.EGUARDS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=244,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF33T36),DISP=SHR
//*
//**********************************************************************
