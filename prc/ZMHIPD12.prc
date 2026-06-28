//ZMHIPD12 PROC
//*
//**********************************************************************
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//* PROCESO        :  CBHIND12   (DISPARADOR)                          *
//* OBJETIVO       :  EMITE REPORTE DE MOVIMIENTOS DE VALORES          *
//* CORRE                                                              *
//* ANTES DE       :  CBJICD07                                         *
//* DESPUES DE     :  BCHIND09                                         *
//* REALIZO        :  SOFTTEK                                          *
//* FECHA          :  ABRIL, 2006.                                     *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PHI12P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHIPD12,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//* OBJETIVO :    REPORTE DE MOVIMIENTOS DE VALORES  ZM4DH038          *
//*                >>>>> NO ACTUALIZA TABLAS <<<<<                     *
//**********************************************************************
//PHI12P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//ZM4DH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHIPD12,
//            DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.TMP.VAL.ARCFIN.ZMHIPD12,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=166,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZM4DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZM4DH0R2 DD SYSOUT=*
//SORTWK01 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK02 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK03 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK04 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK05 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK06 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK07 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK08 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK09 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SORTWK10 DD UNIT=3390,
//            SPACE=(CYL,(5,3),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI12T01),DISP=SHR
//*
