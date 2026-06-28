//ZMSFPM26 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCM26                                         *
//*                                                                    *
//* OBJETIVO       :  PROCESOS MENSUALES                               *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :  CBSFCM12  -  ZMSFPM12                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE MENSUALMENTE                  *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MSF96 ==                            *
//* OBJETIVO    :  CREA ARCHIVO CON INFORMACION ESTADISTICA            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF26P04 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMSF96A1 DD DSN=MXCP.ZM.FIX.SIE.SOBF96A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=245,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF26T04),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//* OBJETIVO    :  ORDENAR ARCHIVO POR SUCURSAL, CENTRO DE COSTOS,     *
//*                PROMOTOR, CUENTA Y VIGENCIA                         *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF26P03 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SORTIN   DD DSN=MXCP.ZM.FIX.SIE.SOBF96A1,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.SIE.SOBF96A2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=245,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF26T03),DISP=SHR
//**********************************************************************
//*                          == ZM4MS051 ==                            *
//* OBJETIVO    :  CREA ARCHIVO CON INFORMACION ESTADISTICA            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF26P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMS051R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CTDRSV')
//ZMS051A1 DD DSN=MXCP.ZM.WKF.SIE.SOBF96A2,DISP=SHR
//ZMS051A2 DD DSN=MXCP.ZM.FIX.SIE.RIB051A1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=288,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRINT    DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF26T02),DISP=SHR
//**********************************************************************
//*                          == ICEGENER ==                            *
//* OBJETIVO    :  RESPALDO ARCHIVO SECUENCIAL EN GDG'S                *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PSF26P01 EXEC PGM=ICEGENER,COND=(4,LT)
//PI601765 DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.RIB051A1,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.SIE.GDG(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=288,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DUMMY
