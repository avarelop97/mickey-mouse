//FDD0700 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD07                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  GENEREA MOVTOS INDICATIVOS PARACONTABILIDAD.     *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD08, PFDFDD10, PFDFDD11, PFDFDD12           *
//*                                                                    *
//* DESPUES DE     :  PFDFDD14*
//*                                                                    *
//* REALIZO        :  VICTOR GARCIA FLORES.                            *
//* FECHA          :  FEBRERO DE 1995                                  *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*********************************************************************
//*
//**********************************************************************
//*                         -- VNBF26D --                              *
//*  MODULO : CARGOS VARIOS                                            *
//*  GENERA MOVS IND (MOVIND) CON AFECT CC, CG, CC                     *
//*                                                                    *
//*                                                                    *
//*  CADA QUE SE EJECUTA DEPURA LOS MOVIMIENTOS QUE SE HAYAN GENERADO  *
//*  POR ESTE PROGRAMA EN CORRIDA ANTERIOR DE LA TABLA MOVIND          *
//*  <<<<<   NO GUARDA NINGUN ORDEN CON EL VNBF13D  >>>>>*PROC.ESTADIS.*
//**********************************************************************
//FDD0704 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),
//        PARM='/DEBUG',
//         TIME=100
//*VNBF26R1 DD SYSOUT=(V,,ZF04)
//VNBF26R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0704),DISP=SHR
//**********************************************************************
//*                        -- VNBF13D --                               *
//*  MODULO : CARGOS VARIOS                                            *
//*  OBJETIVO :                                                        *
//*  GENERA MOVS. IND(MOVIND) VIRTUALES.                               *
//*                                                                    *
//*                                                                    *
//*  CADA QUE SE EJECUTA DEPURA LOS MOVIMIENTOS QUE SE HAYAN GENERADO  *
//*  POR ESTE PROGRAMA EN CORRIDA ANTERIOR DE LA TABLA MOVIND          *
//*  <<<<<   NO GUARDA NINGUN ORDEN CON EL VNBF26D  >>>>>              *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                  ***PROC.ESTADISTICO *
//**********************************************************************
//FDD0703 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//        PARM='/DEBUG',
//         TIME=100
//*VNBF13R1 DD SYSOUT=(V,,ZF05)
//VNBF13R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0703),DISP=SHR
