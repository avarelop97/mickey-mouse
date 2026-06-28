//ZMGBEM03 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)        *
//*                                                                    *
//*   PROCEDIM.        :  ZMGBEM03                                     *
//*                                                                    *
//*   OBJETIVO         :  PROCESO QUE BORRA ARCHIVOS UTILIZADOS POR EL *
//*                       PROCESO Y GENERA REPORTES:                   *
//*                       -REPORTE DE MOVTOS. DE BITACORA ELECTRONICA  *
//*                       -REPORTE DE CARTAS GENERADAS                 *
//*                                                                    *
//*   PERIODICIDAD     :  DIARIO                                       *
//*                                                                    *
//*   FECHA            :  ABRIL DE 2012                                *
//*                                                                    *
//**********************************************************************
//*  PASO: PGB03E60                                                    *
//*  DESCRIP: BORRA ARCHIVOS QUE UTILIZA EL PROCESO                    *
//**********************************************************************
//PGB03E60 EXEC PGM=IDCAMS
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PGB03E60),DISP=SHR
//*                                                                    *
//**********************************************************************
//*  PASO: PGB03E50                                                    *
//*  DESCRIP: CORRE PROGRAMA ZM4CDB03 QUE GENERA REPORTE DE BITE DEL   *
//*           DIA CON ESTADO APROBADO                                  *
//**********************************************************************
//PGB03E50 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//BECARTAS DD DSN=MXCP.ZM.FIX.BITE.EDO.APROBADO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=286,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*                                                                    *
//**********************************************************************
//*  PASO: PGB03E40                                                    *
//*  DESCRIP: CORRE PROGRAMA ZM4CDB05 QUE GENERA REPORTE DE BITE CARTA *
//**********************************************************************
//PGB03E40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//REPOBITE DD DSN=MXCP.ZM.FIX.BITE.CARTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=340,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*                                                                    *
//**********************************************************************
//*                  FIN DE PROCESO ZMGBEM03                           *
//**********************************************************************
