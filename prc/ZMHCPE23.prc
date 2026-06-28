//ZMHCPE23  PROC
//**********************************************************************
//*                   <<  C A P I T A L E S  >>                        *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHCPE23                                         *
//*                   CARGA HECHOS  DE CONTINGENCIA                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  SIVAXAHE                                         *
//*                                                                    *
//* PERIODICIDAD   :  A SOLICITUD DEL USUARIO (OPC. 973)               *
//*                                                                    *
//* ELABORADO POR  :  STK, JULIO 2011 (RHB)                            *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//* OBJETIVO : CARGA DE HECHOS  DE CONTINGENCIA                        *
//*          -- ZM4DHV41 --                                            *
//**********************************************************************
//PHC23E01 EXEC PGM=IKJEFT01
//*
//ZMHV41A1 DD DSN=MXCP.ZM.TMP.ECBP.SZPR.HECCONT,DISP=SHR
//*
//ZMHV41R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE23T01),DISP=SHR
//*
