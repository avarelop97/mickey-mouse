//ZMUIPD07  PROC                                                        00010025
//**********************************************************************00020000
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V.)                 *
//* PROCESO        :  BCUIND07                                         *
//* OBJETIVO       :  ACT. ID. CLIENTE O EMPLEADO BURSATIL             *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//* DESPUES DE     :  AJJCCB23                                         *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *
//*                   EN EL INICIOO DE DIA                             *
//**********************************************************************00481000
//*                      LOG DE MODIFICACIONES                         *00482000
//**********************************************************************00483000
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//**********************************************************************00487000
//*                                                                    *00488000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00489000
//*  PUD07P04     GRABA EN UN ARCHIVO SECUENCIAL.                      *00489127
//**********************************************************************00489300
//*                     ====  INICIO DE    ====                        *00489400
//*                     ====  CAPITALES    ====                        *00489500
//**********************************************************************00489600
//PUD07P04 EXEC PGM=ZM3DG001,                                           00489727
//         PARM=('&EMP','&SUC','BCM000','     ',)                       00489847
//*                                                                     00490000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMUIND07,               00491038
//            DISP=(NEW,CATLG,DELETE),                                  00492000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00493000
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00494042
//*                                                                     00496000
//SYSTSPRT DD SYSOUT=*                                                  00497035
//SYSPRINT DD SYSOUT=*                                                  00498035
//SYSOUT   DD SYSOUT=*                                                  00499035
//SYSDBOUT DD SYSOUT=*                                                  00499135
//SYSABOUT DD DUMMY                                                     00499200
//SYSUDUMP DD DUMMY                                                     00499300
//*                                                                     00499400
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO CLEIENTES BURSATILES                     *
//*          -- ZM4DGV92 --                                            *
//**********************************************************************
//PUD07P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGV92A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMUIND07,DISP=SHR
//ZMGV92A2 DD DSN=MXCP.ZM.FIX.EBCM.CTEBRS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUD07T03),DISP=SHR
//*
//**********************************************************************
//* PASO     : PUD07P02                                                *
//* PROGRAMA : SORT ARCHIVO CLIENTES BRS                               *
//**********************************************************************
//PUD07P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.CTEBRS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.CTEBRS.O1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUD07T02),DISP=SHR
//*
//**********************************************************************00500000
//* OBJETIVO : ARC. IND. CLIENTE O EMÍPLEADO EN ZÓMDT800               *00520000
//*          -- ZM4DGV91 --                                            *00530001
//**********************************************************************00550040
//PUD07P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00551027
//*                                                                     00553001
//ZMGV91A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMUIND07,DISP=SHR       00554038
//ZMGV91A2 DD DSN=MXCP.ZM.FIX.EBCM.CTEBRS.O1,DISP=SHR                   00554038
//ZMGV91A3 DD DSN=MBVP.PE.FIX.UNLOAD.PEDT001.DIARIO,DISP=SHR            00554038
//*                                                                     00555001
//SYSTSPRT DD SYSOUT=*                                                  00590035
//SYSPRINT DD SYSOUT=*                                                  00600035
//SYSOUT   DD SYSOUT=*                                                  00610035
//SYSDBOUT DD SYSOUT=*                                                  00620035
//SYSABOUT DD DUMMY                                                     00630000
//SYSUDUMP DD DUMMY                                                     00640000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUD07T01),DISP=SHR                   00651041
//*
