//ZMHLPD03 PROC
//*-------------------------------------------------------------------**
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXDRP                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZAR LOS DEPOSITOS Y RETIROS A PLAZOS           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (A SOLICITUD DEL USUARIO)            *
//*                                                                    *
//*   ELABORADO POR:  SOFTTEK.                                         *
//*                                                                    *
//*   FECHA:  ABRIL  2006.                                             *
//*                                                                    *
//*-------------------------------------------------------------------**
//*                      LOG DE MODIFICACIONES                         *
//*-------------------------------------------------------------------**
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*--------------------------------------------------------------------*
//*  PASO:  1     GENERAR ARCHIVO DE PARAMETRO A UTILIZAR EN EL        *
//*  PHL03P06     PROCESO                                              *
//*                                                         ZM3DG001   *
//*--------------------------------------------------------------------*
//PHL03P06 EXEC PGM=ZM3DG001,                                           00070000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00090000
//*                                                                     00090000
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHLPD03,               00130000
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00130000
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00130000
//SYSTSPRT DD SYSOUT=*                                                  00130000
//SYSPRINT DD SYSOUT=*                                                  00230000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00250000
//SYSABOUT DD SYSOUT=*                                                  00270000
//SYSUDUMP DD DUMMY                                                     00280000
//*                                                                     00310000
//*--------------------------------------------------------------------*
//*  PASO:  2     ORDENAR ARCHIVO PLAZOS POR CUENTA RECEPTORA (2A)     *
//*  PHL03P05     Y CUENTA TRASPASANTE (1A)                            *
//*                                                         SORT       *
//*--------------------------------------------------------------------*
//PHL03P05 EXEC PGM=ICEMAN,COND=(4,LT)                                  00070000
//*                                                                     00130000
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.PZO.PLADEP,DISP=SHR                   00090000
//*                                                                     00130000
//SORTOUT  DD DSN=MXCP.ZM.TMP.PLAZO.DEPSORT,                            00130000
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=195,BLKSIZE=0),              00130000
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)                        00130000
//*                                                                     00130000
//SYSOUT   DD SYSOUT=*                                                  00230000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD03T05),DISP=SHR                   00250000
//*                                                                     00250000
//*--------------------------------------------------------------------*
//*  PASO:  3     REALIZAR DEPOSITOS A PLAZO DE MERCADO DE DINERO      *
//*  PHL03P04                                                          *
//*                                                         ZM4DH036   *
//*--------------------------------------------------------------------*
//PHL03P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH036A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHLPD03,DISP=SHR
//*
//ZMH036A2 DD DSN=MXCP.ZM.TMP.PLAZO.DEPSORT,DISP=SHR
//*
//ZMH036R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD03T04),DISP=SHR
//*-------------------------------------------------------------------**
//*  PASO:  4     REALIZAR RETIROS A PLAZO DE MERCADO DE DINERO        *
//*  PHL03P03                                                          *
//*                                                         ZM4DH037   *
//*-------------------------------------------------------------------**
//PHL03P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH037A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHLPD03,DISP=SHR
//*
//ZMH037A2 DD DSN=MXCP.ZM.TMP.PLAZO.DEPSORT,DISP=SHR
//*
//ZMH037R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD03T03),DISP=SHR
//*
//*-------------------------------------------------------------------- 00630000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00640000
//*-------------------------------------------------------------------- 00650000
//PHL03P02 EXEC PGM=MAILOPER,COND=(4,GE),
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',
//             ' PROCESO SIVAXDRP TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
//****************************************************************      00700000
//*                SE ADICIONA CONDICION                         *      00710000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00720000
//****************************************************************      00730000
//PHL03P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXDRP_IN_SEP_OK WDATE',   00740000
//         COND=(4,LT)                                                  00750000
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
//*--------------------------------------------------------------------*
//*               F I N    Z M H L P D 0 3                             *
//*--------------------------------------------------------------------*
