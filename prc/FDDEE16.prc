//FDDEE16 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMAS CASA DE BOLSA (S.I.V.A.)                *
//*                                                                    *
//* PROCESO        :  FDDEE16                                          *
//*                   REVIERTE CARGOS VARIOS DUPLICADOS DE NOVIEMBRE   *
//*                                                                    *
//* OBJETIVO       :  REVIERTE CARGOS VARIOS DUPLICADOS DE NOVIEMBRE   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  INDEPENDIENTE                                    *
//*                                                                    *
//* PERIODICIDAD   :  UNICA VEZ                                        *
//*                                                                    *
//* REALIZO        :  LUIS XICOTENCATL PADRON                          *
//* FECHA          :  28 NOVIEMBRE 2002                                *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                           -- VOBV40E --                            *
//* OBJETIVO    :  ACTUALIZA OPERA, CARTERA ELIMINA CGOS DUPLICADOS    *
//*                                                                    *
//*                REVIERTE CARGOS POR CUSTODIA DUPLICADOS             *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//FDEE1601 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//FOLCTRL  DD DSN=SIVA.FOLCTRL.NUEVOS.KC,DISP=SHR
//VOBV40A1 DD DSN=SIVA.TES.WKF.CARGOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=36,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//VOBV40R1 DD SYSOUT=X
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FEE1601),DISP=SHR
//**********************************************************************
