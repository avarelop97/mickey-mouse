//ZMUFPD19 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA        :  ZM - BANCA PATRIMONIAL                           *
//*                                                                    *
//* PROCESO        :  ZMUFPD19                                         *
//*                                                                    *
//* OBJETIVO       :  DESCARGA DE LAS TABLA ZMDT813 LA CUAL CONTIENE   *
//*                   LOS REGISTROS DE LAS OPERACIONES QUE DEJARON     *
//*                   FUERA DE PERFIL A LOS CLIENTES DE SUITABILITY,   *
//*                   PARA GENERAR UN REPORTE.                         *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* REALIZO        :  FSW-TECNOCOM                                     *
//* FECHA          :  10-ENERO-2013                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*                   HISTORIAL DE MANTENIMIENTO                       *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR     FECHA             DESCRIPCION               *
//* ----------- --------  -------  ----------------------------------- *
//*                                                                    *
//*------------------------------------------------------------------- *
//*
//*--------------------------------------------------------------------*
//* PASO:        PUF19P01                                              *
//* UTILERIA:    IKJEFT01                                              *
//* DESCRIPCION: DESCARGA DE LAS TABLA ZMDT813 LA CUAL CONTIENE LOS    *
//*              REGISTROS DE LAS OPERACIONES QUE DEJARON FUERA DE     *
//*              PERFIL A LOS CLIENTES DE SUITABILITY, PARA GENERAR UN *
//*              REPORTE.                                              *
//*--------------------------------------------------------------------*
//PUF19P01 EXEC PGM=IKJEFT01
//*
//ZMDUSS01 DD DSN=MXCP.ZM.FIX.REPORTE.SUITFPER,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=292,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF19T01),DISP=SHR
//*
