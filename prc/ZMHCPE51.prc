//ZMHCPE51  PROC
//**********************************************************************
//*                   <<  C A P I T A L E S  >>                        *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHCPE51                                         *
//*                   REP. GLO. AFORE                                  *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  SIVAXGAF                                         *
//*                                                                    *
//* PERIODICIDAD   :  A SOLICITUD DEL USUARIO (OPC. 323/399)           *
//*                                                                    *
//* REALIZO        :  INTERNACIONAL DE SISTEMAS ENERO 2014 (XMBJ066)   *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//* OBJETIVO : REPORTE DE ORDEN GLOBAL DE AFORE                        *
//*          -- ZM4DHV58 --                                            *
//**********************************************************************
//PHC51E01 EXEC PGM=IKJEFT01
//*
//ZMHV58R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMHV58A1 DD DSN=MXCP.ZM.FIX.EBCM.GLOAFO.ZM4DHV58,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE51T01),DISP=SHR
//*
