//FDD0300  PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD02                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *
//*                   - INTERFASES BATCH (TSO)                         *
//*                                                                    *
//*   2DA. PARTE   :  REALIZA RESPALDO DE ARCHIVOS                     *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD18.                                        *
//*                                                                    *
//* DESPUES DE     :  PFDFDD01                                         *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *
//* FECHA          :  FEBRERO DE 1991                                  *
//*                                                                    *
//*                                                                    *
//*  NOTA          :  ESTE PROCESO YA INCLUYE LOS JOBS PFDFDD03 Y      *
//*                   PFDFDD04.                                        *
//*                                                                    *
//*  MODIFICADO POR : RUBEN HERNANDEZ ORTIZ. ABRIL/95.                 *
//*                                                                    *
//**********************************************************************
//*
//*
//**********************************************************************
//*                       -- ADRDSSU --                                *
//*                                                                    *
//*  OBJETIVO :   REALIZA BACKUP DE ARCHIVOS.                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//*                                                                    *
//**********************************************************************
//*
//FDD0301  EXEC PGM=ADRDSSU,REGION=0M,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//OUTDD1   DD  DSN=BKPP.DIA.FINDIA.ARCHS.D&DATE.,
//             DISP=(NEW,CATLG,DELETE,KEEP),
//             UNIT=VTSS02,
//             LABEL=(,SL,EXPDT=99000)
//SYSIN DD DSN=SIVA.CARDS(FDD0301),DISP=SHR
//**********************************************************************
//* PEND          FIN DEL PROCEDIMIENTO FDD0200                        *
//**********************************************************************
