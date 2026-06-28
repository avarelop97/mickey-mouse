//MZMPPA03 PROC
//*--------------------------------------------------------------------*
//* JOB NAME: MZMP0A03                                                 *
//* PROCESO : MZMPPA03                                                 *
//* OBJETIVO: GENERA LOS ARCHIVOS CON LAS OPERACIONES DE COMPRA/VENTA  *
//*           DE FONDOS DE INVERSION DE RENTA VARIABLE -BANCO-         *
//* REALIZO: J&B                                                       *
//* FECHA  : 17 ABRIL 2018.                                            *
//*====================================================================*
//*             L O G    D E   M O D I F I C A C I O N E S             *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- --------------------------------------*
//* FS-1.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//* JB-1.0.0-01    J&B   13JUN18 AUMENTA LA LONG DEL ARCH. SE AGREGA EL*
//*                              USUARIO QUE CAPTURA LA OPERACION.     *
//*                                                                    *
//*====================================================================*
//* PROGRAMA: ICEMAN                                                   *00022600
//* OBJETIVO: SE ELIMINAN DUPLICADOS, VALORES NULOS DE LOS CAMPOS CANT1*00022700
//*           Y CANT2. SE ORDENA EL ARCHIVO DE SALIDA POR IREF E ISEC  *00022700
//*           EN FORMA DESCENDENTE.                                    *00022700
//*--------------------------------------------------------------------*00022800
//ZMPA0305 EXEC PGM=ICEMAN                                              00022900
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.CBJCPZ08.UNLOAD01,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.TMP.CBJCPZ09.UNLOAD01,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.WKF.MZMP0A03.SORT01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=62,BLKSIZE=0)     JB-1.0.0-01
//            DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPA0305),DISP=SHR
//*                                                                     00023400
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01/ZM4ALR03                                        *00022600
//* OBJETIVO: GEN. LOS ARCHIVOS CON LAS ALERTAS QUE SE ENVIARAN A LOS  *00022700
//*           CLIENTES DE LA OPERATIVA DE FONDOS DE INV. RENTA VARIABLE*00022700
//*--------------------------------------------------------------------*
//ZMPA0310 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXC&AMB..ZM.WKF.MZMP0A03.SORT01,
//            DISP=SHR
//*
//* ARCH. DE ALERTAS SMS/PUSH
//SALIDA1  DD DSN=MXC&AMB..ZM.TMP.MZMP0A03.SMSPUSH,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//* ARCH. DE ALERTAS EMAIL
//SALIDA2  DD DSN=MXC&AMB..ZM.TMP.MZMP0A03.EMAIL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=2700,BLKSIZE=0)
//*
//* ARCH. CON ERRORES DE PROCESAMIENTO
//SALIDA3  DD DSN=MXC&AMB..ZM.FIX.MZMP0A03.ERROR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=82,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPA0310),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPA0300.                                             *
//* UTILERIA   : IOACND.                                               *
//* OBJETIVO   : AGREGAR CONDICION PARA PU                             *
//*--------------------------------------------------------------------*
//ZMPA0315 EXEC PGM=IOACND,COND=(4,LT),PARM='ADD COND &IN    &FECH1'
//*             ,PARM='ADD COND MZMP0A03_OK    &FECH1'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL JCL MZMP0A01                           *
//*--------------------------------------------------------------------*
