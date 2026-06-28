//ZMHCPD67 PROC
//**********************************************************************
//*                      C A S A   D E  B O L S A                      *
//*                      ========================                      *
//*                   <<   MERCADO DE CAPITALES    >>                  *
//*                                                                    *
//*                                                                    *
//* PROCESO        :  CBHCND67   (DISPARADOR).                         *
//*                                                                    *
//*                   ZMHCPD67   PROCEDIMIENTO.                        *
//*                                                                    *
//* OBJETIVO       :  RESPALDA INFORMACION DE LAS TABLAS AHECHOR       *
//*                   Y HISAHEC.                                       *
//*                                                                    *
//* PERIODICIDAD   :  EVENTUAL.                                        *
//*                                                                    *
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ.                 *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC67P03     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC67P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','     ',)
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHCPD67,
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
//*                     -- ZM4DHV02 --                                 *
//*   OBJETIVO : GENERAR UN ARCHIVO DE RESPALDO DE LA TABLA  -         *
//*              AHECHOR.                                              *
//*                                                                    *
//**********************************************************************
//PHC67P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DHVA1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHCPD67,DISP=SHR
//*
//ZM4DHVA2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..AHECHOR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=44,BLKSIZE=0,RECFM=FB),
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC67T02),DISP=SHR
//*
//**********************************************************************
//*                     -- ZM4DHV03 --                                 *
//*   OBJETIVO : GENERAR UN ARCHIVO DE RESPALDO DE LA TABLA  -         *
//*              HISAHEC.                                              *
//*                                                                    *
//**********************************************************************
//PHC67P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DHVA3 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHCPD67,DISP=SHR
//*
//ZM4DHVA4 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..HISAHEC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=44,BLKSIZE=0,RECFM=FB),
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC67T01),DISP=SHR
//*
