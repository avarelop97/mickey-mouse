//FDDEE13 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMAS CASA DE BOLSA (S.I.V.A.)                *
//*                                                                    *
//*                                                                    *
//* PROCESO        :  FDDEE13                                          *
//*                   ABONO DIRECTO POR REMANTE EN CAJE  (201-259)     *
//*                                                                    *
//* OBJETIVO       :  CARGA INFORMACION A LA TABLA CARTERA, OPERATE Y  *
//*                                                OPERTET             *
//* CORRE                                                              *
//* ANTES DE       :  INDEPENDIENTE                                    *
//*                                                                    *
//* DESPUES DE     :  CIERRE DE VALORES.                               *
//*                                                                    *
//* PERIODICIDAD   :  UNICA VEZ                                        *
//*                                                                    *
//* REALIZO        :  ARACELI SALAZAR PEREZ                            *
//* FECHA          :  JULIO DE 2002                                    *
//*                                                                    *
//* PARAMETROS     : X - CLAVE DEF  CORRE EL DEFINITIVO (3 POSOCIONES) *
//*                  PARMS('XXX')                                      *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                           -- VOBA08E --                            *
//* OBSERVACION :  ACTUALIZACION CARTERA                               *
//*                INSERTA REGISTRO EN OPERATE Y OPERTET               *
//*                CORRE EL DEFINITIVO                                 *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***PROC. ABONOS DIRECT*
//**********************************************************************
//**********************************************************************
//FDDEE131 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//        PARM='/DEBUG',
//        TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//VOBA08R1 DD SUBSYS=(C600,'SYSOUT=0,PREFIX=CDAMD')
//VOBA08R2 DD SUBSYS=(C600,'SYSOUT=0,PREFIX=CDAMD')
//FOLCTRL DD DSN=SIVA.FOLCTRL.NUEVOS.KC,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FEE1301),DISP=SHR
//*
//**********************************************************************
//*                     FIN DE PROC. FDDEE13
//**********************************************************************
