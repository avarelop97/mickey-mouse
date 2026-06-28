//ZMHCPD27 PROC
//**********************************************************************
//*                      C A S A   D E  B O L S A                      *
//*                      ========================                      *
//*                   <<  SOCIEDADES DE INVERSION  >>                  *
//*                                                                    *
//*                                                                    *
//* PROCESO        :  CBHCND27   (DISPARADOR)                          *
//*                                                                    *
//*                   ZMHCPD27   PROCEDIMIENTO                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO DE PRECIOS (SISASI), PARA         *
//*                   SOCIEDADES DE INVERSION.                         *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC27P03     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC27P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHCPD27,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                     -- ZM4DHW95 --                                 *
//*   OBJETIVO : GENERA ARCHIVO SISASI - VAL - MDD - ACPO - CAP -      *
//*                                                                    *
//**********************************************************************
//PHC27P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4D95P1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHCPD27,DISP=SHR
//*
//ZM4D95A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..SISASI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=248,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC27T02),DISP=SHR
//*
//**********************************************************************
//*                     -- ZM4DHW96 --                                 *
//*   OBJETIVO : ADICIONA INFORMACION DE MERCADO DE DINERO AL          *
//*              ARCHIVO SISASI.                                       *
//*                                                                    *
//**********************************************************************
//PHC27P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4D96P1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHCPD27,DISP=SHR
//*
//ZM4D96A1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..S&SUC..SISASI,DISP=MOD
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC27T01),DISP=SHR
//*
