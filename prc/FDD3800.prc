//FDD3800 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMAS CASA DE BOLSA (S.I.V.A.)                *
//*                                                                    *
//*                                                                    *
//* PROCESO        :  PFDFDD38                                         *
//*                   OPERACIONES INUSUALES                            *
//*                                                                    *
//* OBJETIVO       :  CARGA INFORMACION                                *
//*                   LOS PROCESOS DE MODULO DE OPERACIONES INUSUALES  *
//*                                                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  ESTE PROCESO SE EJECUTARA POR UNICA VEZ          *
//*                                                                    *
//* DESPUES DE     :  ????????                                         *
//*                                                                    *
//* REALIZO        :  ARACELI SALAZAR         (ASATECK)                *
//* FECHA          :  ABRIL DE 2002                                    *
//*                                                                    *
//* ULT. MODIF.    :  MONICA RUBIO            (GETRONICS)              *
//* FECHA          :  OCTUBRE 2003                                     *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO HACE LA ACTUALIZACION DE SALDOS EN  *
//*                   LA TABLA OPERINU A PARTIR DE EDVALCA             *
//**********************************************************************
//**********************************************************************
//*                           -- VOBV41E --                            *
//* OBJETIVO    :  ACTUALIZACION DE SALDOS DE OPERINU A PARTIR DE      *
//*                EDVALCA.                                            *
//*                                                                    *
//* ACTUALIZA   :  OPERINU                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***PROC. OPE.INUSUALES*
//**********************************************************************
//FDD3801 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//        PARM='/DEBUG',
//         TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3801),DISP=SHR
//**********************************************************************
