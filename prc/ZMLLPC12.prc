//ZMLLPC12 PROC                                                         00040000
//**********************************************************************00003000
//*                 B A N C A   P A T R I M O N I A L                  *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  M U V                                               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPC12-SIVAXASI                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  INFORMACION DE VENTAS AUTOMATICAS MUV               *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  BCLLPC12                                      *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PLC12P10 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC12,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO    : PLC12P09                                                 *
//* PROGRAMA: IKJEFT01 / ZM4DLD02                                      *
//* FUNCION : EJECUTA EL PROGRAMA ZM4EJF65 PARA VALIDAR PARAMETRO      *
//*           DE MESA ASSET O MESA PRECIOS                             *
//**********************************************************************
//PLC12P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP12T06),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
// IF (PLC12P09.RC<4) THEN
//**********************************************************************
//*****************************************************************
//* PROGRAMA: ZM4DLD03                                            *
//*           SI EL PASO PLC12P09 TERMINA EN CODIGO 3 REALIZA LA  *
//* OBJETIVO: GENERACION DE ARCHIVO DE VENTAS AUTOMATICAS         *
//*           FIDEICOMISOS SOCIEDADES DE INVERSION MESA ASSET     *
//*****************************************************************
//PLC12P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD93A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLD03,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=350,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP12T05),DISP=SHR
//*
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//PLC12P11 EXEC PGM=CTMCND,                                             00240003
//         PARM='ADD COND BCLLPC12_NZMJLD04_AS WDATE',
//         COND=(4,LT)                                                  00250002
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00260002
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00270002
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00280002
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00290002
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00300002
//PRTDBG   DD SYSOUT=*                                                  00310002
//SYSPRINT DD DUMMY                                                     00320002
//SYSUDUMP DD DUMMY                                                     00330002
//DAPRINT  DD SYSOUT=*                                                  00340002
//DACNDIN  DD DDNAME=SYSIN                                              00350002
//*                                                                     00360002
//*****************************************************************
//*--------------------------------------------------------------------*
// ENDIF
//*--------------------------------------------------------------------*
//**********************************************************************
// IF (PLC12P09.RC=4) THEN
//**********************************************************************
//*****************************************************************
//* PROGRAMA: ZM4DLD03                                            *
//*           SI EL PASO PLC12P09 TERMINA EN CODIGO 4 REALIZA LA  *
//* OBJETIVO: GENERACION DE ARCHIVO DE VENTAS AUTOMATICAS         *
//*           FIDEICOMISOS SOCIEDADES DE INVERSION MESA PRECIOS   *
//*****************************************************************
//PLC12P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD93A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLD03.FD2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=350,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP12T05),DISP=SHR
//*                                                                     00340006
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//PLC12P12 EXEC PGM=CTMCND,                                             00240003
//         PARM='ADD COND BCLLPC12_NZMJLD46_PR WDATE',                  00250002
//         COND=(4,LT)                                                  00250002
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00260002
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00270002
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00280002
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00290002
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00300002
//PRTDBG   DD SYSOUT=*                                                  00310002
//SYSPRINT DD DUMMY                                                     00320002
//SYSUDUMP DD DUMMY                                                     00330002
//DAPRINT  DD SYSOUT=*                                                  00340002
//DACNDIN  DD DDNAME=SYSIN                                              00350002
//*                                                                     00360002
//*
//*--------------------------------------------------------------------*
// ENDIF
//*--------------------------------------------------------------------*
