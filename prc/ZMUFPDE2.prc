//ZMUFPDE2 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBUFCDE2                                         *
//*                   ENLACE CONTABLE                                  *
//*                                                                    *
//* OBJETIVO       :  REALIZAR EL REPROCESO DE POLIZAS ANTERIORES      *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE EVENTUALMENTE                 *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          ==  IDCAMS  ==                            *00661000
//* OBJETIVO    : BORRAR ARCHIVOS DE TRABAJO                           *00662000
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE2P09 EXEC PGM=IDCAMS                                              00130000
//SYSPRINT DD SYSOUT=*                                                  00140000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUFE2T09),DISP=SHR                   00150000
//**********************************************************************
//*                          == ZM4DUE16 ==                            *00221002
//* OBJETIVO    :  DEPURACION DE ARCHIVOS CONTABLES                    *00222002
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE2P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE2T08),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE11 ==                            *00221002
//* OBJETIVO    :  GENERACION DE MOVIMIENTOS CONTABLES                 *00222002
//*                                                                    *
//* PASO REINICIABLE                                                   *
//**********************************************************************
//PUFE2P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUE11A1 DD DSN=SIVA.ENC.FIX.GLMV303.VCVMNT.G30029.CTASAUX,DISP=MOD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE2T07),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE14 ==                            *00221002
//* OBJETIVO    :  CONSOLIDACION DE ASIENTOS CONTABLES                 *00222002
//*                                                                    *
//* PASO REINICIABLE                                                   *
//**********************************************************************
//PUFE2P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUE14A1 DD DSN=SIVA.ENC.FIX.GLMV303.ENCON.HEADER,DISP=MOD            00730000
//ZMUE14A2 DD DSN=SIVA.IFA.FIX.GLMV303.ENCON.DETAIL,DISP=MOD            00730000
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE2T06),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE15 ==                            *00221002
//* OBJETIVO    :  REPORTE POLIZA AUTOMATICA                           *00222002
//*                                                                    *
//* PASO REINICIABLE                                                   *
//**********************************************************************
//PUFE2P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUE15R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE2T05),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE17 ==                            *00221002
//* OBJETIVO    :  REPORTE DE MOVIMIENTOS RECHAZADOS                   *00222002
//*                                                                    *
//* PASO REINICIABLE                                                   *
//**********************************************************************
//PUFE2P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUE17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE2T04),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE27 ==                            *00221002
//* OBJETIVO    :  REPORTE DE CONTROL DE MOVIMIENTOS                   *00222002
//*                                                                    *
//* PASO REINICIABLE                                                   *
//**********************************************************************
//PUFE2P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUE27R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE2T03),DISP=SHR
//**********************************************************************
//*                          == ZM4DUE20 ==                            *00221002
//* OBJETIVO    :  ACTUALIZACION DE NUMERO DE POLIZA Y FECHA           *00222002
//*                                                                    *
//* PASO -NO- REINICIABLE                                              *
//**********************************************************************
//PUFE2P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUFE2T02),DISP=SHR
//**********************************************************************
//*                          == MAILOPER ==                            *00221002
//* OBJETIVO    :  AVISO EN CASO DE ERROR                              *
//*                                                                    *
//**********************************************************************
//PUFE2P01 EXEC PGM=MAILOPER,COND=(4,GE),
//         PARM=('/ATENCION OPERADOR.AVISAR A SOP. PROD. QUE',
//             ' PROCESO CBUFCDE2 TERMINO MAL.CONTESTAR SI',
//             ' PARA TERMINAR')
