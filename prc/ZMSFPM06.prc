//ZMSFPM06 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSFCM06                                         *
//*                                                                    *
//* OBJETIVO       :  REPORTES MENSUALES SISTEMA ESTADISTICO           *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  CBSFCM07  -  ZMSFPM07                            *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE MENSUALMENTE                  *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MGP22 ==                            *
//* OBJETIVO : LISTADO DE ACCIONISTAS BBVPRO                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PSF06P01 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMGP22R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGP22A1 DD DSN=MXCP.ZM.FIX.OTR.ACCBBV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=50,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF06T01),DISP=SHR
