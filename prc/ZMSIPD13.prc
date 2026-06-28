//ZMSIPD13 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBSIND13                                         *
//*                   REPORTES CARTERA DE CLIENTES ONLINE              *
//*                                                                    *
//* OBJETIVO       :  GENERAR LOS REPORTES DE CONTABILIDAD             *
//*                   PARA LA CARTERA DE CLIENTES ONLINE ESTADISTICO   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  INICIO DE DIA                                    *
//*                                                                    *
//* DESPUES DE     :  CBSFCD01 (ZMSFPD01)                              *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  AGOSTO 2004                                      *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MSG42 ==                            *
//* OBJETIVO : REPORTE DE VALUACION DE LA CARTERA POR TIPO DE VALOR    *
//*            Y EMISORA                                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//* JFE     ->    SE CAMBIA LONGITUD EN ARCHIVO DE 137 A 141 POSICIONES*
//* 10/04/06      POR INCORPORACION DE CAMPO ITVBMV.
//**********************************************************************
//PSI13P03 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//ZMSG42R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMSG42A1 DD DSN=MXCP.ZM.GDGD.VAL.ECBP.ZMHA28P1(0),DISP=SHR
//ZMSG42A2 DD DSN=MXCP.ZM.FIX.OTR.ZM4MSG42,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(RECFM=FB,LRECL=137,BLKSIZE=0,DSORG=PS),
//            DCB=(RECFM=FB,LRECL=141,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(4,2),RLSE),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSI13T03),DISP=SHR
//**********************************************************************
//*                        == DEFINE CARCLI-OL ==                      *
//* OBJETIVO    : REDEFINIR ARCHIVO VSAM DE CARTERA CLIENTES ONLINE    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PSI13P02 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSI13T02),DISP=SHR
//**********************************************************************
//*                        == REPRO  CARCLI-OL ==                      *
//* OBJETIVO    : COPIAR SECUENCIAL A VSAM (CARTERA CLIENTES ONLINE)   *
//*                                                                    *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PSI13P01 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=MXCP.ZM.FIX.OTR.ZM4MSG42,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.VSB.VAL.DETA.CARCLI.ONLINE,DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSI13T01),DISP=SHR
