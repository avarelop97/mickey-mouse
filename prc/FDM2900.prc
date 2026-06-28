//FDM2900 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE INFORMACION ESTADISTICA      *
//*                               (S. I. I. E.)                        *
//*                                                                    *
//* PROCESO        :  PFDFDM29                                         *
//*                   TENENCIA ESTADISTICA                             *
//*                                                                    *
//* OBJETIVO       :  CONOCER LA POSICION DE LA CASA EN LOS            *
//*                   DIFERENTES GRUPOS DE INSTRUMENTO                 *
//*                                                                    *
//*                   CARGA DE INFORMACION EN TABLAS IMAGEN PARA       *
//*                   NO ENTORPECER LA EJECUCION DE OTROS PROCESOS     *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDCPD01                                         *
//*                                                                    *
//* DESPUES DE     :  PFDFDD25 SOLO EL FIN DE MES                      *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ / PILAR MORAGREGA VERA    *
//* FECHA          :  ENERO DE 1993            DE BONEQUI              *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//* MODIFICO       :  RAFAEL ZULETA VARGAS                             *
//* FECHA          :  MAYO DE 1993                                     *
//*                                                                    *
//* OBSERVACION    :  SE MODIFICO PARA QUE CORRA EN EL FIN DE DIA      *
//*                   ANTES DE IMAGE COPYS DIARIOS A SOLICITUD DE      *
//*                   DOLORES CASTRO/ANTONIO URBANO.                   *
//*                                                                    *
//* MODIFICACION   :  SE AGREGO EL PROGRAMA SOBF57D EN EL PASO 01      *
//*                   PARA EL CALCULO DE LA VALUACION DE ESTADO -      *
//*                   DE CUENTA EN SIVA.                               *
//*                                                                    *
//* MODIFICO       :  CLAUDIA M. MOLINA M.                             *
//* FECHA          :  SEPTIEMBRE DE 1993.                              *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                           -- SOBG27D --                            *
//* OBJETIVO    :  CARGA DE IMAGEN RECORTADA DE CARTERAS  ( BANCO )    *
//*                                                                    *
//* ACTUALIZA   :  EDVALCA                                             *
//*                                                                    *
//*                                          SAUL CONTRERAS.           *
//* PASO REINICIABLE POR RESTART                 30/11/94              *
//**********************************************************************
//FDM2902  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//        PARM='/DEBUG',
//         TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SOBG27R1 DD SYSOUT=V
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDM2902),DISP=SHR
//**********************************************************************
//*                           -- SOBG28D --                            *
//* OBJETIVO    : INCLUIR DEMANDAS P/EECTIVOS  EDO. CTA ( BANCO )      *
//*                                                                    *
//* ACTUALIZA   : EDVALCA.                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDM2901  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//        PARM='/DEBUG',
//         TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDM2901),DISP=SHR
