//ZMHCPE22  PROC
//**********************************************************************
//*                   <<  C A P I T A L E S  >>                        *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHCPE22                                         *
//*                   CARGA ORDENES DE CONTINGENCIA                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  SIVAXAOR                                         *
//*                                                                    *
//* PERIODICIDAD   :  A SOLICITUD DEL USUARIO (OPC. 973)               *
//*                                                                    *
//* ELABORADO POR  :  STK, JULIO 2011 (RHB)                            *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//* OBJETIVO : CARGA DE ORDENES DE CONTINGENCIA                        *
//*          -- ZM4DHV40 --                                            *
//**********************************************************************
//PHC22E01 EXEC PGM=IKJEFT01
//*
//ZMHV40A1 DD DSN=MXCP.ZM.TMP.ECBP.SZPR.ORDCONT,DISP=SHR
//*
//ZMHV40R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE22T01),DISP=SHR
//*
