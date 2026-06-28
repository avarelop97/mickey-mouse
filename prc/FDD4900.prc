//FDD4900 PROC
//*
//**********************************************************************
//*    CASA DE BOLSA PROBURSA  -  BILBAO VIZCAYA                       *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        : PFDFDD49.                                         *
//*                  REPORTES DE LA INTERFAZ DE MERCADO DE DINERO      *
//*                                                                    *
//* OBJETIVO: GENERAR POR UNICA VEZ EL DIA 28 DE FEBRERO DE 2000       *
//*           EL MISMO DIA DE LA OPERACION ENTRE 4 Y 7 DE LA TARDE     *
//*           LOS REPORTES VIBH06D Y VIBH07D ESTO PARA OBTENER LA      *
//*           INFORMACION SOLICITADA POR LA BMV EN EL SENTRA LA CUAL   *
//*           SIRVE DE BASE PARA ELABORAR EL BOLETIN BURSATIL UTILI-   *
//*           ZADO POR TODOS LOS BANCOS NACIONALES.                    *
//*                                                                    *
//* CORRE          :  MEDIANTE CONDICION MANUAL                        *
//*                   A PETICION DEL USUARIO                           *
//*                                                                    *
//* REALIZO        :  JAIME FLORES ESTRADA  --  ASATECK  --            *
//*                                                                    *
//* FECHA          :  ENERO      2000.                                 *
//**********************************************************************
//*
//**********************************************************************
//*                          === VIBH06D ===                           *
//* OBJETIVO : REPORTAR LAS OPERACIONES DE REPORTO CELEBRADAS CON      *
//*            CLIENTES DURANTE EL DIA.                                *
//* PASO REINICIABLE POR RESTART                      *** M. DINERO    *
//**********************************************************************
//*                 PASO PARA CASA DE BOLSA                            *
//**********************************************************************
//FDD4902  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBH06R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//VIBH06R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD4902),DISP=SHR
//*
//**********************************************************************
//*                          === VIBH07D ===                           *
//* OBJETIVO : REPORTAR LOS INSTRUMENTOS OPERADOS CON CLIENTES         *
//*            VALOR HOY Y VALOR NORMAL .                              *
//* PASO REINICIABLE POR RESTART                       ***M. DINERO    *
//**********************************************************************
//*                   PASO PARA CASA DE BOLSA                          *
//**********************************************************************
//FDD4901  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBH07R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD4901),DISP=SHR
//*
