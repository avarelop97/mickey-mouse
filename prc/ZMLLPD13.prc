//ZMLLPD13 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE INFORMACION ESTADISTICA      *
//*                                                                    *
//* PROCESO        :  A PETICION POR EL USUARIO                        *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO OPERACIONES DE BANCA PATRIMONIAL Y*
//*                   FIDEICOMISOS.                                    *
//*                                                                    *
//* FECHA          :  MAYO DE 2010                                     *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                           -- ZM4DLX20 --                           *
//* OBJETIVO    :  VALIDA DATOS DE PARAMETROS                          *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PLL13P04 EXEC PGM=IKJEFT01
//ZM4X13P1 DD DSN=MXCP.ZM.FIX.EBCM.S000.ZMLLPL13,DISP=SHR
//*
//ZM4X13S1 DD DSN=MXCP.ZM.FIX.EBCM.S000.OPEDIA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSOUT   DD DSN=MXCP.ZM.FIX.EBCM.S000.OPEDIAS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=122,BLKSIZE=0),
//            UNIT=3390
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLD13T04),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO    :  PROCESO DE APAGAR EVENTO REQUERIDO A PETICION DEL   *
//*                USUARIO.                                            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PLL13P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLD13T03),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSPRINT DD DSN=MXCP.ZM.FIX.EBCM.S000.OPEDIAC,
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.EBCM.S000.ZMLLPL13,DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4DLX21 --                           *
//* OBJETIVO    :  GENERA ARCHIVO CON INFORMACION.                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PLL13P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4X14P1 DD DSN=MXCP.ZM.FIX.EBCM.S000.ZMLLPL13,DISP=SHR
//*
//ZM4X14S1 DD DSN=MXCP.ZM.FIX.EBCM.S000.OPEDIA.SALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSOUT   DD DSN=MXCP.ZM.FIX.EBCM.S000.OPEDIAS.FINAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=122,BLKSIZE=0),
//            UNIT=3390
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLD13T02),DISP=SHR
//*
//**********************************************************************
//*                          === IDCAMS === *
//* OBJETIVO    : BORRADO DE ARCHIVOS DE PASO *
//* *
//* PASO REINICIABLE POR RESTART *
//**********************************************************************
//PLL13P01 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLD13T01),DISP=SHR
//*
