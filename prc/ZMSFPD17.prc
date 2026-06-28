//ZMSFPD17 PROC
//**********************************************************************
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//* PROCESO        :  CBSFCD17                                         *
//*                                                                    *
//* OBJETIVO       :  REALIZAR REPROCESOS DE ARCHVOS.QUE SALGAN ERRONEOS
//* CORRE             EVENTUAL                                         *
//* ANTES DE       :            -                                      *
//* DESPUES DE     :            -                                      *
//* FECHA          :  ENERO 2009                                       *
//* OBSERVACION    :                                                   *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4DS040                                *
//*    SALDOS PARA EL CAM.                                             *
//*--------------------------------------------------------------------*
//PSF17P03 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//ZMS040A1 DD DSN=MXCP.ZM.FIX.SIE.EBCM.CIERREGE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=50,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T14),DISP=SHR
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4DS083                                *
//*   GENERAR ARCHIVO DE MOVTOS. DEL EDO.DE CTA PARA EL CAM            *
//*--------------------------------------------------------------------*
//PSF17P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMS083A2 DD DSN=MXCP.ZM.FIX.SIE.ZM4DS083.MOVTSCAM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=200,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T28),DISP=SHR
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4DS081                                *
//*   GENERAR ARCHIVO DE MOVTOS. DEL EDO.DE CTA PARA EL CAM, SOLO 1 DIA*
//*--------------------------------------------------------------------*
//PSF17P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMS081A1 DD DSN=MXCP.ZM.FIX.SIE.ZM4DS083.MOVTSCAM,DISP=SHR
//ZMS081A2 DD DSN=MXCP.ZM.FIX.SIE.ZM4DS081.MOVTSCAM.DIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=200,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T29),DISP=SHR
//*--------------------------------------------------------------------*
