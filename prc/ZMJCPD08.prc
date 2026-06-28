//ZMJCPD08 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E  B O L S A                       *00030000
//*                     ========================                       *00040000
//*                 <<  SOCIEDADES DE INVERSION   >>                   *00041000
//*                                                                    *00042000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00043000
//*                                                                    *00044000
//* PROCESO        :  SIVAXVPR (SUBMITIDOR)                            *00045000
//*                   ZMJCPD08 (PROCEDIMIENTO)                         *00046000
//*                                                                    *00047000
//* OBJETIVO       :  VALUACION PRELIMINAR DE OPERACIONES DE SOC. INV. *00048000
//*                   ENVIADO POR EL USUARIO (FONDOS NORMALES)         *00049000
//*                                                                    *00049100
//* CORRE                                                              *00049200
//* ANTES DE       :  CIERRE DE SOCIEDADES DE INVERSION                *00049300
//*                                                                    *00049400
//* DESPUES DE     :  A PETICION DEL USUARIO                           *00049500
//*                                                                    *00049600
//* PERIODICIDAD   :  DIARIO                                           *00049900
//*                                                                    *00050000
//**********************************************************************00051000
//**********************************************************************00051100
//*                      LOG DE MODIFICACIONES                         *00051200
//**********************************************************************00051300
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00051400
//*--------------------------------------------------------------------*00051500
//*GESFOR| 05-11-04 |       |        | SE RE-AGRUPO LA VALUACION PREL. *00051600
//*--------------------------------------------------------------------*00051800
//*      |          |       |        |                                 *00051900
//**********************************************************************00052000
//*                                                                     00051900
//**********************************************************************00055100
//*                        == IDCAMS   ==                              *00055200
//*                                                                    *00055300
//* OBJETIVO : BORRAR ARCHIVOS DE LA VALUACION DEL PROCESO.            *00055400
//**********************************************************************00055500
//PJC08P12 EXEC PGM=IDCAMS                                              00055600
//*                                                                     00055700
//SYSPRINT DD SYSOUT=*                                                  00055800
//*                                                                     00055900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJC08T01),DISP=SHR                   00056000
//*                                                                     00056100
//**********************************************************************00056200
//*                        == ZM3DG001 ==                              *00056300
//*                                                                    *00056400
//* OBJETIVO : GRABA LOS PARAMETROS PARA LA VALUACION PRELIMINAR       *00056500
//*            DE BANCA PATRIMONIAL (FONDOS NORMALES)                  *00056600
//**********************************************************************00056700
//PJC08P11 EXEC PGM=ZM3DG001,COND=(4,LT),                               00056800
//         PARM=('BCM','000','BCM000JR82644 PSI7SS',' ',)               00056900
//*                                                                     00057000
//PI601765 DD DUMMY                                                     00057100
//*                                                                     00057200
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SIN.P1.EBCM.ZMJCPD08,                     00057300
//            DISP=(NEW,CATLG,DELETE),                                  00057400
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00057500
//            UNIT=3390,                                                00057600
//            SPACE=(CYL,(6,3),RLSE)                                    00057700
//*                                                                     00057800
//SYSTSPRT DD SYSOUT=*                                                  00057900
//SYSPRINT DD SYSOUT=*                                                  00058000
//SYSOUT   DD SYSOUT=*                                                  00058100
//SYSDBOUT DD SYSOUT=*                                                  00058200
//SYSABOUT DD DUMMY                                                     00058300
//SYSUDUMP DD DUMMY                                                     00058400
//*                                                                     00058500
//**********************************************************************00058600
//*                        == ZM4DJ193 ==                              *00058700
//*                                                                    *00058800
//* OBJETIVO : GRABA LOS PARAMETROS REQUERIDOS EN EL PROGRAMA ZM4DJ194 *00058900
//*            PARA BANCA PATRIMONIAL (FONDOS NORMALES)                *00059000
//**********************************************************************00059100
//PJC08P10 EXEC PGM=ZM4DJ193,COND=(4,LT),                               00059200
//         PARM=('BCM','000','BCM000JR82644 PSI7SS',' ',)               00059300
//*                                                                     00059320
//PI601765 DD DUMMY                                                     00059330
//*                                                                     00059400
//ZMJ193P1 DD DSN=MXCP.ZM.FIX.SIN.P2.EBCM.ZMJCPD08,                     00059500
//            DISP=(NEW,CATLG,DELETE),                                  00059600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=0),               00059700
//            UNIT=3390,                                                00059800
//            SPACE=(CYL,(6,3),RLSE)                                    00059900
//*                                                                     00060000
//FALSA    DD SYSOUT=*                                                  00060100
//SYSTSPRT DD SYSOUT=*                                                  00060200
//SYSPRINT DD SYSOUT=*                                                  00060300
//SYSOUT   DD SYSOUT=*                                                  00060400
//SYSDBOUT DD SYSOUT=*                                                  00060500
//SYSABOUT DD DUMMY                                                     00060600
//SYSUDUMP DD DUMMY                                                     00060700
//*                                                                     00060800
//**********************************************************************00060900
//*                        == ZM4DJ194 ==                              *00061000
//*                   (FONDOS NORMALES)                                *00061100
//* OBJETIVO : EJECUCION DEL PROGRAMA DE VALUACION DE BANCA PATRIMONIAL*00061200
//**********************************************************************00061400
//PJC08P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00061500
//*                                                                     00061600
//PI601765 DD DUMMY                                                     00061700
//*                                                                     00061800
//ZMJ194P1 DD DSN=MXCP.ZM.FIX.SIN.P2.EBCM.ZMJCPD08,DISP=SHR             00061900
//ZMJ274P1 DD DSN=MXCP.ZM.FIX.SIN.P1.EBCM.ZMJCPD08,DISP=SHR             00062000
//ZMJ274A1 DD DSN=&&ARCHBCM,                                            00062100
//            DISP=(NEW,PASS),                                          00062200
//            UNIT=3390,                                                00062300
//            DCB=(LRECL=171,RECFM=FB,BLKSIZE=0,DSORG=PS),              00062400
//            SPACE=(CYL,(20,10),RLSE)                                  00062500
//ZMJ274R1 DD DSN=MXCP.ZM.FIX.SIN.PR.EBCM.ZMJ274R1,                     00062600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00062700
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),             00062800
//            SPACE=(CYL,(20,10),RLSE)                                  00062900
//*                                                                     00063000
//SYSTSPRT DD SYSOUT=*                                                  00063100
//SYSPRINT DD SYSOUT=*                                                  00063200
//SYSOUT   DD SYSOUT=*                                                  00063300
//SYSDBOUT DD SYSOUT=*                                                  00063400
//SYSABOUT DD DUMMY                                                     00063500
//SYSUDUMP DD DUMMY                                                     00063600
//*                                                                     00063700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC08T02),DISP=SHR                   00063800
//*                                                                     00065400
//**********************************************************************00065500
//*                        == ZM3DG001 ==                              *00065600
//*                                                                    *00065700
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA     *00065800
//*            EN ARCHIVO                                              *00065900
//**********************************************************************00066000
//PJC08P08 EXEC PGM=ZM3DG001,COND=(4,LT),                               00066100
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00066200
//*                                                                     00066300
//PI601765 DD DUMMY                                                     00066400
//*                                                                     00066500
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SIN.P1.ECBP.ZMJCPD08,                     00066600
//            DISP=(NEW,CATLG,DELETE),                                  00066700
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00066800
//            UNIT=3390,                                                00066900
//            SPACE=(CYL,(6,3),RLSE)                                    00067000
//*                                                                     00067100
//SYSTSPRT DD SYSOUT=*                                                  00067200
//SYSPRINT DD SYSOUT=*                                                  00067300
//SYSOUT   DD SYSOUT=*                                                  00067400
//SYSDBOUT DD SYSOUT=*                                                  00067500
//SYSABOUT DD DUMMY                                                     00067600
//SYSUDUMP DD DUMMY                                                     00068000
//*                                                                     00070000
//**********************************************************************00181000
//*                        == ZM4DJ193 ==                              *00182000
//*                                                                    *00183000
//* OBJETIVO : GRABA LOS PARAMETROS REQUERIDOS EN EL PROGRAMA ZM4DJ194 *00058900
//*            PARA CASA DE BOLSA     (FONDOS NORMALES)                *00059000
//**********************************************************************00185000
//PJC08P07 EXEC PGM=ZM4DJ193,COND=(4,LT),                               00220000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00221000
//*                                                                     00221100
//PI601765 DD DUMMY                                                     00221200
//*                                                                     00240000
//ZMJ193P1 DD DSN=MXCP.ZM.FIX.SIN.P2.ECBP.ZMJCPD08,                     00340000
//            DISP=(NEW,CATLG,DELETE),                                  00390100
//            DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=0),               00390200
//            UNIT=3390,                                                00390300
//            SPACE=(CYL,(6,3),RLSE)                                    00390400
//*                                                                     00390500
//FALSA    DD SYSOUT=*                                                  00390600
//SYSTSPRT DD SYSOUT=*                                                  00390700
//SYSPRINT DD SYSOUT=*                                                  00390800
//SYSOUT   DD SYSOUT=*                                                  00390900
//SYSDBOUT DD SYSOUT=*                                                  00391000
//SYSABOUT DD DUMMY                                                     00391100
//SYSUDUMP DD DUMMY                                                     00391200
//*                                                                     00391300
//**********************************************************************00391400
//*                        == ZM4DJ194 ==                              *00391500
//*                    (FONDOS NORMALES)                               *00391600
//* OBJETIVO : EJECUCION DEL PROGRAMA DE VALUACION DE CASA DE BOLSA    *00391700
//**********************************************************************00391800
//PJC08P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00391900
//*                                                                     00392000
//PI601765 DD DUMMY                                                     00392100
//*                                                                     00392200
//ZMJ194P1 DD DSN=MXCP.ZM.FIX.SIN.P2.ECBP.ZMJCPD08,DISP=SHR             00392300
//ZMJ274P1 DD DSN=MXCP.ZM.FIX.SIN.P1.ECBP.ZMJCPD08,DISP=SHR             00392400
//ZMJ274A1 DD DSN=&&ARCHCBP,                                            00392500
//            DISP=(NEW,PASS),                                          00392600
//            UNIT=3390,                                                00392700
//            DCB=(LRECL=171,RECFM=FB,BLKSIZE=0,DSORG=PS),              00392800
//            SPACE=(CYL,(20,10),RLSE)                                  00392900
//ZMJ274R1 DD DSN=MXCP.ZM.FIX.SIN.PR.ECBP.ZMJ274R1,                     00393001
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00393100
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),             00393200
//            SPACE=(CYL,(20,10),RLSE)                                  00393300
//*                                                                     00393400
//SYSTSPRT DD SYSOUT=*                                                  00393500
//SYSPRINT DD SYSOUT=*                                                  00393600
//SYSOUT   DD SYSOUT=*                                                  00393700
//SYSDBOUT DD SYSOUT=*                                                  00393800
//SYSABOUT DD DUMMY                                                     00393900
//SYSUDUMP DD DUMMY                                                     00394000
//*                                                                     00394100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC08T02),DISP=SHR                   00394200
//*                                                                     00394300
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*                (FONDOS NORMALES)                                   *
//*        IMPRIME EN CONTROL-D LOS REPORTES DE VALUACION DE SOC. INV. *
//**********************************************************************
//PJC08P05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIN.PR.ECBP.ZMJ274R1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SIN.PR.EBCM.ZMJ274R1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                        == ZM4DJ203 ==                              *
//*                                                                    *
//* OBJETIVO : MOVIMIENTOS AUTOMATICOS CUENTAS CONCENTRADORAS MUV V.N. *
//*            BANCA PATRIMONIAL (FONDOS NORMALES)                     *
//**********************************************************************
//PJC08P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ203P1 DD DSN=MXCP.ZM.FIX.SIN.P1.EBCM.ZMJCPD08,DISP=SHR
//ZMJ203R1 DD DSN=MXCP.ZM.FIX.SIN.PR.EBCM.ZMJ203R1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC08T03),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4DJ202 ==                              *
//*                                                                    *
//* OBJETIVO : COMPRA/VENTA AUTOMATICAS DE LOS FONDOS DE S.I.          *
//*                        (FONDOS NORMALES)                           *
//**********************************************************************
//PJC08P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ202P1 DD DSN=MXCP.ZM.FIX.SIN.P1.ECBP.ZMJCPD08,DISP=SHR
//ZMJ202R1 DD DSN=MXCP.ZM.FIX.SIN.PR.ECBP.ZMJ202R1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC08T04),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*                   (FONDOS NORMALES)                                *
//*        IMPRIME EN CONTROL-D LOS REPORTES DE COMPRAS/VENTAS         *
//*        AUTOMATICAS VALOR NORMAL (CUENTAS CONCENTRADORAS Y FONDOS)  *
//**********************************************************************
//PJC08P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIN.PR.EBCM.ZMJ203R1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.SIN.PR.ECBP.ZMJ202R1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJC08P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXVPR_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*                                                                     00394300
//********************************************************************* 00379900
//** PEND         FIN DEL PROCEDIMIENTO ZMJCPD08                       *00380000
//********************************************************************* 00390000
