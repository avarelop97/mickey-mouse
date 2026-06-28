//ZMJCPP09 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E  B O L S A                       *00030000
//*                     ========================                       *00040000
//*                 <<  SOCIEDADES DE INVERSION   >>                   *00041000
//*                                                                    *00042000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00043000
//*                  (OPC 514D)                                        *00044000
//* PROCESO        :  SIVAXVDF (SUBMITIDOR)    CBJCPZ08 CBJCPZ09       *00045000
//*                   ZMJCPP09 (PROCEDIMIENTO) ZMJCPZ08 ZMJCPZ09       *00046000
//*                                                                    *00047000
//* OBJETIVO       :  CIERRE DEFINITIVO DE OPERACIONES VALOR NORMAL DE *00048000
//*                   SOCIEDADES DE INVERSION (ENVIADO POR EL USUARIO) *00049000
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
//**********************************************************************00052000
//*                                                                     00051900
//**********************************************************************00065500
//*                        == ZM3DG001 ==                              *00065600
//*                       (FONDOS NORMALES) SI7, CBP                   *00065700
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA     *00065800
//*            EN ARCHIVO PARA LA VALUACION DEFINITIVA CASA DE BOLSA   *00065900
//**********************************************************************00066000
//PJC09P09 EXEC PGM=ZM3DG001,                                           00066100
//         PARM=('CBP','ZPR','CBPZPRJR82644 PSI7SS',' ',)               00066200
//*                                                                     00066500
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SIN.P1.ECBP.DEFI.PP09,                    00066600
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
//*                       (FONDOS NORMALES) SI7, CBP                   *00183000
//* OBJETIVO : GRABA LOS PARAMETROS REQUERIDOS EN EL PROGRAMA ZM4DJ194 *00058900
//*            PARA PARA LA VALUACION DEFINITIVA CASA DE BOLSA         *00059000
//**********************************************************************00185000
//PJC09P08 EXEC PGM=ZM4DJ193,COND=(4,LT),                               00220000
//         PARM=('CBP','ZPR','CBPZPRJR82644 PSI7SS',' ',)               00221000
//*                                                                     00240000
//ZMJ193P1 DD DSN=MXCP.ZM.FIX.SIN.P2.ECBP.DEFI.PP09,                    00340000
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
//*                                                                     00051900
//**********************************************************************00065500
//*                        == ZM3DG001 ==                              *00065600
//*                       (FONDOS NORMALES) SI7, BCM                   *00065700
//* OBJETIVO : GRABA LOS PARAMETROS PARA LA VALUACION DEFINITIVA       *00065800
//*            DE BANCA PATRIMONIAL                                    *00065900
//**********************************************************************00066000
//PJC09P07 EXEC PGM=ZM3DG001,COND=(4,LT),                               00066100
//         PARM=('BCM','000','BCM000JR82644 PSI7SS',' ',)               00066200
//*                                                                     00066500
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SIN.P1.EBCM.DEFI.PP09,                    00066600
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
//*                       (FONDOS NORMALES) SI7, BCM                   *00183000
//* OBJETIVO : GRABA LOS PARAMETROS REQUERIDOS EN EL PROGRAMA ZM4DJ194 *00058900
//*            PARA VALUACION DEFINITIVA BANCA PATRIMONIAL             *00059000
//**********************************************************************00185000
//PJC09P06 EXEC PGM=ZM4DJ193,COND=(4,LT),                               00220000
//         PARM=('BCM','000','BCM000JR82644 PSI7SS',' ',)               00221000
//*                                                                     00240000
//ZMJ193P1 DD DSN=MXCP.ZM.FIX.SIN.P2.EBCM.DEFI.PP09,                    00340000
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
//*                                                                     00051900
//**********************************************************************00065500
//*                        == ZM3DG001 ==                              *00065600
//*                       (FONDO DE FONDOS) SI9, CBP                   *00065700
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA     *00065800
//*            EN ARCHIVO PARA LA VALUACION DEFINITIVA CASA DE BOLSA   *00065900
//**********************************************************************00066000
//PJC09P05 EXEC PGM=ZM3DG001,COND=(4,LT),                               00066100
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00066200
//*                                                                     00066500
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SIN.P3.ECBP.DEFI.PP09,                    00066600
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
//*                       (FONDO DE FONDOS) SI9, CBP                   *00183000
//* OBJETIVO : GRABA LOS PARAMETROS REQUERIDOS EN EL PROGRAMA ZM4DJ194 *00058900
//*            PARA PARA LA VALUACION DEFINITIVA CASA DE BOLSA         *00059000
//**********************************************************************00185000
//PJC09P04 EXEC PGM=ZM4DJ193,COND=(4,LT),                               00220000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00221000
//*                                                                     00240000
//ZMJ193P1 DD DSN=MXCP.ZM.FIX.SIN.P4.ECBP.DEFI.PP09,                    00340000
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
//*                                                                     00051900
//**********************************************************************00065500
//*                        == ZM3DG001 ==                              *00065600
//*                       (FONDO DE FONDOS) SI9, BCM                   *00065700
//* OBJETIVO : GRABA LOS PARAMETROS PARA LA VALUACION DEFINITIVA       *00065800
//*            DE BANCA PATRIMONIAL                                    *00065900
//**********************************************************************00066000
//PJC09P03 EXEC PGM=ZM3DG001,COND=(4,LT),                               00066100
//         PARM=('BCM','000','BCM000JR82644 PSI9SS',' ',)               00066200
//*                                                                     00066500
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SIN.P3.EBCM.DEFI.PP09,                    00066600
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
//*                       (FONDO DE FONDOS) SI9, BCM                   *00183000
//* OBJETIVO : GRABA LOS PARAMETROS REQUERIDOS EN EL PROGRAMA ZM4DJ194 *00058900
//*            PARA VALUACION PRELIMINAR BANCA PATRIMONIAL             *00059000
//**********************************************************************00185000
//PJC09P02 EXEC PGM=ZM4DJ193,COND=(4,LT),                               00220000
//         PARM=('BCM','000','BCM000JR82644 PSI9SS',' ',)               00221000
//*                                                                     00240000
//ZMJ193P1 DD DSN=MXCP.ZM.FIX.SIN.P4.EBCM.DEFI.PP09,                    00340000
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
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PJC09P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXVDF_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*                                                                     00394300
//********************************************************************* 00379900
//** PEND         FIN DEL PROCEDIMIENTO ZMJCPP09                       *00380000
//********************************************************************* 00390000
