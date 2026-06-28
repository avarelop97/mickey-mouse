//FDDEE14 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMAS CASA DE BOLSA (S.I.V.A.)                *
//*                                                                    *
//* PROCESO        :  FDDEE14                                          *
//*                   OPERACIONES INUSUALES                            *
//*                                                                    *
//* OBJETIVO       :  CARGA INFORMACION A LA TABLA OPERINU             *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  INDEPENDIENTE                                    *
//*                                                                    *
//* PERIODICIDAD   :  UNICA VEZ                                        *
//*                                                                    *
//* REALIZO        :  ARACELI SALAZAR PEREZ                            *
//* FECHA          :  JULIO DE 2002                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO SE ADJUNTAN LOS TRES PROGRAMAS      *
//*                   PROCESO DIARIO                                   *
//*                   PROCESO MENSUAL                                  *
//*                   PROCESO ANUAL                                    *
//*                   GENERA EL REPORTE MENSUAL                        *
//*                                                                    *
//*                CUANDO SEA REQUERIDA                                *
//* PARAMETROS     : X - FECHA EN QUE SE QUIERE CORRE (10 POSOCIONES)  *
//*                      POR UNICA VEZ.                                *
//*                CUANDO SEA REQUERIDA PARA PROCESAR EL REPORTE       *
//*                MENSUAL                                             *
//*                : Y - FECHA DONDE SE INICIARA PARA EL REPORTE       *
//*                : Z - FECHA DONDE SE TERMINARA EL REPORTE           *
//*                      (20 POSICIONES PARA LA FECHA DEL REPORTE)     *
//*                                                                    *
//*                  PARMS('XXXXXXXXXX,YYYYYYYYYYZZZZZZZZZZ')          *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                           -- VOBV38E --                            *
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
//FEENOV01 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//        PARM='/DEBUG',
//        TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//VOBV38R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FEENOV01),DISP=SHR
//**********************************************************************
//FEENOV04 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//        PARM='/DEBUG',
//        TIME=100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//VOBV38R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FEENOV04),DISP=SHR
//**********************************************************************
