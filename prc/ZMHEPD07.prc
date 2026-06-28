//ZMHEPD07  PROC
//**********************************************************************
//*                                                                    *
//*        =====    B A N C A   P A T R I M O N I A L    =====         *
//*                                                                    *
//* SISTEMA        :  MUV                                              *
//*                                                                    *
//* PROCESO        :  PROCESO CICLICO PARA LA GENERACION DEL OPERA Y   *
//*                   CARTERA DE BANCA PATRIMONIAL                     *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LAS ACTUALIZACIONES QUE RESULTEN DE LAS *
//*                   OPERACIONES DE C/V DE MERCADO DE CAPITALES       *
//*                                                                    *
//* REALIZO        :  RICARDO HARO BERNAL                              *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA CICLICA   *
//*                   CADA MINUTO DE LAS 7:00 A LAS 15:00 HORAS        *
//*                                                                    *
//**********************************************************************
//*  PASO:        RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHE07P04     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//PHE07P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','BCM000','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD07,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* OBJETIVO : OBTENER HECHOS DE CONTINGENCIA MUV                      *
//*            -- ZM4DHW30 --                                          *
//**********************************************************************
//PHE07P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW30A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD07,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE07T03),DISP=SHR
//*
//**********************************************************************
//*  PASO:        CREA EL ARCHIVO LOG DE MOVIMIENTOS (IEFBR14)         *
//*  PHE07P02                                                          *
//**********************************************************************
//PHE07P02 EXEC PGM=IEFBR14,COND=(4,LT)
//ARCHIVO   DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD07.LOG,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//**********************************************************************
//*  PASO:        REALIZA ACTUALIZACIONES QUE RESULTEN DE LAS          *
//*  PHE07P01     OPERACIONES DE C/V DE CAPITALES   === ZM4DH514 ===   *
//**********************************************************************
//PHE07P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH514A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD07,DISP=SHR
//ZMH514L1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHEPD07.LOG,
//            DISP=MOD
//ZMH514R1 DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE07T02),DISP=SHR
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE07T01),DISP=SHR
//*
