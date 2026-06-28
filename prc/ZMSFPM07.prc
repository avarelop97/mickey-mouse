//ZMSFPM07 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCM07                                         *
//*                                                                    *
//* OBJETIVO       :  PROCESO MENSUAL                                  *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCM08  -  ZMSFPM08                            *
//*                                                                    *
//* DESPUES DE     :  CBSFCM06  -  ZMSFPM06                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE MENSUALMENTE                  *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4DSF55 ==                            *
//*                                                                    *
//* OBJETIVO : GENERAR LA POSICION DE EMISORA EN SETEEMI               *
//*            AL FIN DE SEMANA Y MES, A PARTIR DE SECART              *
//**********************************************************************
//PSF07P02 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMSF55A1 DD DSN=MXCP.ZM.WKF.SIE.SETEEMI.SALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),
//            UNIT=3390
//SORTWK01 DD SPACE=(CYL,(10,05),RLSE),UNIT=3390
//SORTWK02 DD SPACE=(CYL,(10,05),RLSE),UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF07TM2),DISP=SHR
//**********************************************************************
//*                          == ZM4MSG21 ==                            *
//* OBJETIVO: GENERA LA TABLA SETEMEN A PARTIR DEL ARCHIVO SECUENCIAL  *
//*           DEL SOBG13M (ZM4MSG13)                                   *
//**********************************************************************
//PSF07P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSG21A1 DD DSN=MXCP.ZM.FIX.SIE.TENENCIA.MES,DISP=SHR
//SORTWK01 DD SPACE=(CYL,(10,05),RLSE),UNIT=3390
//SORTWK02 DD SPACE=(CYL,(10,05),RLSE),UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF07TM1),DISP=SHR
