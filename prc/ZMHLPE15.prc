//ZMHLPE15 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* OBJETIVO       :  EMITE REPORTE DE MOVIMIENTOS DE VALORES          *
//*                   PARA BCM.                                        *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  SIVAXVOC                                         *
//*                                                                    *
//* REALIZO        :  OUF.                                             *
//* FECHA          :  DICIEMBRE / 2015.                                *
//*                                                                    *
//**********************************************************************
//*                          --  ZM4DHA63  --                          *
//*                                                                    *
//* OBJETIVO :    REPORTE DE MOVIMIENTOS DE VALORES                    *
//*                >>>>> NO ACTUALIZA TABLAS <<<<<                     *
//*                                                                    *
//**********************************************************************
//PHL15P01 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//ZMHA63FD DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE15,
//            DISP=SHR
//ZMHA63A1 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPE15,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=217,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMHA63R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHA63R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHA63RX DD SYSOUT=*
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL15T04),DISP=SHR
//*
