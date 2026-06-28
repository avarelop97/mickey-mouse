//FDDEE15 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMAS CASA DE BOLSA (S.I.V.A.)                *
//*                                                                    *
//* PROCESO        :  FDDEE15                                          *
//*                                                                    *
//* OBJETIVO       :  CARGA INFORMACION A LA TABLA ORDCAPI             *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  INDEPENDIENTE                                    *
//*                                                                    *
//* PERIODICIDAD   :  UNICA VEZ                                        *
//*                                                                    *
//* REALIZO        :  ARACELI SALAZAR PEREZ                            *
//* FECHA          :  SEPTIEMBRE 2002                                  *
//*                                                                    *
//* OBSERVACION    :  ACTUALIZA LA VIGENCIA DE LA TABLA ORDCAPI.       *
//*                   DEBERA EJECUTARSE SOLO UNA VEZ, CUANDO SE LIBERE.*
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                           -- VOBV20E --                            *
//* OBJETIVO    :  ACTUALIZACION ORDCAPI                               *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***PROC.              *
//**********************************************************************
//**********************************************************************
//FDDEE151 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//        PARM='/DEBUG',
//        TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FEE1501),DISP=SHR
//**********************************************************************
//*                     FIN DE PROC. FDDEE15
//**********************************************************************
