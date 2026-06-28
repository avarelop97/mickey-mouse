//FDD4700 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMAS CASA DE BOLSA (S.I.V.A.)                *
//*                                                                    *
//*                                                                    *
//* PROCESO        :  PFDFDD47                                         *
//*                   OPERACIONES INUSUALES                            *
//*                                                                    *
//* OBJETIVO       :  CARGA INFORMACION A LA TABLA OPERINU             *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  PFDFDD46                                         *
//*                                                                    *
//* REALIZO        :  ARACELI SALAZAR PEREZ                            *
//* FECHA          :  ABRIL DE 2002                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO SE ADJUNTAN LOS TRES PROGRAMAS      *
//*                   NECESARIOS EN EL CONTROL DE LOS  DATOS PROPIOS   *
//*                   PARA  LA VALIDACION  DE LA INFORMACION  PRECISADA*
//*                   PARA  REFLEJAR LAS OPERACIONES INUSUALES.        *
//*                   PROCESO DIARIO                                   *
//*                   PROCESO MENSUAL                                  *
//*                   PROCESO ANUAL                                    *
//*                   GENERA EL REPORTE MENSUAL                        *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                           -- VOBV37D --                            *
//* OBJETIVO    :  ACTUALIZACION OPERINU                               *
//*                                                                    *
//*                DEPURACION MENSUAL DE LA TABLA OPERINU              *
//*                                                                    *
//*                RECIBIR LOS PARAMETROS ENVIADOS DE CSP              *
//*                                                                    *
//*                REPORTE MENSUAL DE OPERACIONES INUSUALES            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***PROC. OPE.INUSUALES*
//**********************************************************************
//**********************************************************************
//FDD4701 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//        PARM='/DEBUG',
//        TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//VIBV37R1 DD SUBSYS=(C600,'SYSOUT=0,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD4701),DISP=SHR
//**********************************************************************
