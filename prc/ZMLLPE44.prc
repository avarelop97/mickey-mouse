//ZMLLPE44 PROC                                                         01140002
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<< MERCADO DE DINERO >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPE44-SIVAXBPC                                   *
//*                                                                    *
//*   OBJETIVO  :  EJECUTA EL BATCH PARA LA BAJA DE PAGOS              *
//*                PENDIENTES EN MDD, BAJA DE CONTRATOS                *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PLL44P03 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLLPE44,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*****************************************************************
//* PASO: PLL44P02                                                *
//* PROGRAMA: ZM4DLE35                                            *
//* OBJETIVO: GENERA REPORTE DE DE AMORTIZACIONES DE MDD          *
//*           PENDIENTES.                                         *
//*****************************************************************
//PLL44P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDL35A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLLPE43,DISP=SHR
//ZMDL35A2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL44T02),DISP=SHR
//*
//*****************************************************************
//* PASO: PLL44P01                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL44P01 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND CBLLNE44_IN_SEP_OK WDATE'
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
//**********************************************************************
//*  PASO:     PLL44P00                                                *
//*  PROGRAMA: ZM4DLE11                                                *
//*  OBJETIVO  PASO REINICIABLE POR RESTART                            *
//*            ACTUALIZA EL RENGLON DE INTERFACES EN CTLPROC 'DFBPC1'  *
//**********************************************************************
//PLL44P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLLPE44,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL44T00),DISP=SHR
//**********************************************************************
//*                      F I N   Z M L L P E 4 4                       *
//**********************************************************************
