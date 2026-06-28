//ZMOPP423 PROC
//**********************************************************************
//*                         BANCA PATRIMONIAL                          *
//*                         =================                          *
//*                   >>>>  OPERACION CENTRAL  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.VA.)               *
//*                                                                    *
//*   DISPARADOR:  SIVAX423  (SUBMITIDOR LINEA) / BCOP9423             *
//*                                                                    *
//*   PROCEDIM. :  ZMOPP423  (OPCION   423)                            *
//*                                                                    *
//*   OBJETIVO  :  DISPARA PROCESO QUE GENERA REPORTE INFORME CON LOS  *
//*                CAMBIOS REALIZADOS A LOS CONTRATOS DE CLIENTES      *
//*                                                                    *
//*   CORRE ANTES DE   :   NINGUNO                                     *
//*                                                                    *
//*   CORRE DESPUES DE :   NINGUNO                                     *
//*                                                                    *
//*   PERIODICIDAD     :   EVENTUAL (A SOLICITUD DEL USUARIO)          *
//*                                                                    *
//*   REALIZO   :  GETECSA (XM01480)                                   *
//*                                                                    *
//*   FECHA     :  ENERO DE 2017                                       *
//*====================================================================*
//*                       LOG DE MODIFICACIONES                        *
//*--------------------------------------------------------------------*
//* MODIF  FECHA    USUARIO  PASO     DESCRIPCION                      *
//* ------ -------- -------- -------- -------------------------------- *
//* MMMMMM AA-MM-DD UUUUUUUU PPPPPPPP                                  *
//*                                                                    *
//*====================================================================*
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO  *
//*--------------------------------------------------------------------*
//ZMP42310 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMOPP423.PARAM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*====================================================================*
//* PROGRAMA: CTMCND                                                   *
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-M        *
//*--------------------------------------------------------------------*
//ZMP42305 EXEC  PGM=CTMCND,PARM='ADD COND SIVAX423_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//*====================================================================*
//* PROGRAMA: ZM4OG423                                                 *
//* OBJETIVO: GENERA REPORTE INFORME DE CAMBIOS A CONTRATOS            *
//*--------------------------------------------------------------------*
//ZMP42302 EXEC PGM=IKJEFT01,COND=(0,NE),
//         PARM=('&EMP',' ',' ',' ',)
//ZMG423EP DD DSN=MXCP.ZM.FIX.E&EMP..ZMOPP423.PARAM,DISP=SHR
//*
//ZMG423S1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMGPP423.REPINFO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=451,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMP42301),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*           TERMINA PROCESO ZMOPP423 SIVA MULTIEMPRESA               *
//**********************************************************************
