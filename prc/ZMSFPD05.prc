//ZMSFPD05 PROC
//**********************************************************************
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//* PROCESO        :  CBSFCD01  (INGRESOS)                             *
//* OBJETIVO       :  CARGA DIARIA DE LOS INGRESOS DE BCM              *
//*                   (CORRE CON LA P05)                               *
//* CORRE ANTES DE :  PCFECD04  -                                      *
//* DESPUES DE     :  IMAGDIA                                          *
//* REALIZO        :  GETRONICS (MARTIN S.G.)                          *
//* FECHA          :  ABRIL 2005                                       *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//**********************************************************************
//*                          == ZM4DUE16 ==                            *
//* OBJETIVO    :  DEPURACION DE ECMOVDI,ECRECHA                       *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF05P04 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF05T04),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE10 ==                            *
//* OBJETIVO    :  ACTUALIZA TABLAS ECMOVDI, ECRECHA                   *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF05P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUE10A1 DD DSN=MXCP.ZM.FIX.SIE.ZM4DUE10.ECMOVDI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=250,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF05T03),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF84 ==                            *
//* OBJETIVO    :  ACTUALIZA INGRESOS EN SEINDET.                      *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF05P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF05T02),DISP=SHR
//**********************************************************************
//*                          == ZM4DSF86 ==                            *
//* OBJETIVO    :  ACTUALIZA EN SEINDET MOVIMIENTOS DE PLAZOS.         *
//* PASO  REINICIABLE POR RESTART                                      *
//**********************************************************************
//PSF05P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF05T01),DISP=SHR
