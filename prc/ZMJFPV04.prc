//ZMJFPV04 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E  B O L S A                       *00030000
//*                     ========================                       *00040000
//*                 <<  SOCIEDADES DE INVERSION   >>                   *00041000
//*                                                                    *00042000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00043000
//*                                                                    *00044000
//* PROCESO        :  SIVAXVPR (SUBMITIDOR) (CBJFCV04)                 *00045000
//*                   ZMJFPV04 (PROCEDIMIENTO)                         *00046000
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
//*                                                                     00051900
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
