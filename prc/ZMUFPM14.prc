//ZMUFPM14 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM RENDIMIENTOS DE INGRESOS SIVA                    *
//* PROCESO      : ZMUFPM14                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : BACK UP DEL MES DE DICIEMBRE DEL AÑO ANTERIOR PARA  *
//*                REPORTES GESTIóN.                                   *
//* REALIZO      : FABRICA DE SOFTWARE (XM010DG)                       *
//* FECHA        : 09 NOVIEMBRE 2009                                   *
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
//*  CREACION DE SYSTSIN PARA EL PROGRAMA ZM4MU120                     *
//*--------------------------------------------------------------------*
//PUF04P90 EXEC PGM=ZM3CTC01,PARM=('P,MXP1,ZM4MU120,&MES')
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M04.ZM4MU120,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO     : PUF04P80                                                *
//* UTILERIA : IKJEFT01/ZM4MU120                                       *
//* OBJETIVO : BACK UP DE LA INFORMACION DEL MES DE DICIEMBRE          *
//*--------------------------------------------------------------------*
//PUF04P80 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=MXCP.ZM.WKF.M04.ZM4MU120,
//            DISP=(OLD,DELETE,DELETE)
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUFPM14                        *
//*--------------------------------------------------------------------*
