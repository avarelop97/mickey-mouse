//ZMUFPM1A PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM RENDIMIENTOS DE INGRESOS SIVA                    *
//* PROCESO      : ZMUFPM1A                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : PROCESO QUE ACTUALIZA DE MANERA MENSUAL LA TABLA    *
//*                ZMDT768 QUE CONTIENE ACUMULADOS DE INGRESOS Y       *
//*                RENDIMIENTOS DE BANCA PATRIMONIAL.DEPURA AQUELLOS   *
//*                REGISTROS QUE TENGAN INACTIVIDAD MAYOR A UN ANIO    *
//*                CON RESPECTO A LA FECHA DEL PROCESO.                *
//* REALIZO      : FABRICA DE SOFTWARE (XM010DK)                       *
//* FECHA        : 14 SEPTIEMBRE 2009                                  *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF01P90                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ELIMINA ARCHIVO QUE SERA USADO EN LA DESCARGA DE LA     *
//*            TABLA ZMDT705.                                          *
//*--------------------------------------------------------------------*
//PUF01P90 EXEC PGM=IDCAMS
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF01P85                                                *
//* UTILERIA : ZM3CTAR1                                                *
//* OBJETIVO : CREAR TARJETA DINAMICA                                  *
//*--------------------------------------------------------------------*
//PUF01P85 EXEC PGM=ZM3CTARJ,PARM=&FECHA&EMP,COND=(4,LT)
//*
//S1ZMTARJ DD DSN=MXCP.ZM.FIX.TARJETA1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF01P80                                                *
//* UTILERIA : UNLOAD                                                  *
//* OBJETIVO : REALIZAR DESCARGA DE LA TABLA ZMDT705 POR MES,ANIO DEL  *
//*            PROCESO Y SOLO BANCA PRIVADA Y PATRIMONIAL              *
//*--------------------------------------------------------------------*
//PUF01P80 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUF01P80,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//*
//SYSREC1  DD DSN=MXCP.ZM.FIX.UNLOAD.ZMDT705.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=488,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.TARJETA1,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF01P70                                                *
//* UTILERIA : IKJEFT01/ZM4MU100                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU100 QUE ACTUALIZA IMPORTES  *
//*            DE INGRESOS Y RENDIMIENTOS A NIVEL CLIENTE DEL PERIODO  *
//*            Y ANUAL DE BANCA PATRIMONIAL.                           *
//*--------------------------------------------------------------------*
//PUF01P70 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.UNLOAD.ZMDT705.M&FECHA.,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF01P60                                                *
//* UTILERIA : IKJEFT01/ZM4MU101                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU101 QUE ACTUALIZA IMPORTES  *
//*            DE INGRESOS Y RENDIMIENTOS A NIVEL BANQUERO DEL PERIODO *
//*            Y ANUAL DE BANCA PATRIMONIAL.                           *
//*--------------------------------------------------------------------*
//PUF01P60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF01P50                                                *
//* UTILERIA : IKJEFT01/ZM4MU102                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU102 QUE ACTUALIZA IMPORTES  *
//*            DE INGRESOS Y RENDIMIENTOS A NIVEL UNIDAD DE GESTION DEL*
//*            PERIODO Y ANUAL DE BANCA PATRIMONIAL.                   *
//*--------------------------------------------------------------------*
//PUF01P50 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF01P40                                                *
//* UTILERIA : IKJEFT01/ZM4MU103                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU103 QUE ACTUALIZA IMPORTES  *
//*            DE INGRESOS Y RENDIMIENTOS A NIVEL DIVISION Y TIPO DE   *
//*            BANCA DEL PERIODO Y ANUAL DE BANCA PATRIMONIAL.         *
//*--------------------------------------------------------------------*
//PUF01P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF01P30                                                *
//* UTILERIA : IKJEFT01/ZM4MU104                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU104 QUE ACTUALIZA IMPORTES  *
//*            DE INGRESOS TOTALES DEL PERIODO Y ANUAL DE BANCA        *
//*            PATRIMONIAL.                                            *
//*--------------------------------------------------------------------*
//PUF01P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF01P20                                                *
//* UTILERIA : IKJEFT01/ZM4MU105                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU105 QUE DEPURA INFORMACION  *
//*            DE LA TABLA ZMDT768.ELIMINA REGISTROS CON MAS DE UN ANIO*
//*            DE INACTIVIDAD E IMPORTES EN CERO.                      *
//*--------------------------------------------------------------------*
//PUF01P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF01P10                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ELIMINA ARCHIVO DE TRABAJO.                             *
//*--------------------------------------------------------------------*
//PUF01P10 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUFPM1A                        *
//*--------------------------------------------------------------------*
//*
