//ZMHCPD68 PROC
//**********************************************************************
//*                      C A S A   D E  B O L S A                      *
//*                      ========================                      *
//*                   <<   MERCADO DE CAPITALES    >>                  *
//*                                                                    *
//*                                                                    *
//* PROCESO        :  CBHCND68   (DISPARADOR).                         *
//*                                                                    *
//*                   ZMHCPD68   PROCEDIMIENTO.                        *
//*                                                                    *
//* OBJETIVO       :  CARGA INFORMACION DE LAS TABLAS AHECHOR          *
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
//*  PHC68P03     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC68P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','CBPZPR','     ',)
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHCPD68,
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
//*                     -- ZM4DHV04 --                                 *
//*   OBJETIVO : INSERTA EN LA TABLA AHECHOR, EL RESPALDO DE -         *
//*              LA TABLA AHECHOR.                                     *
//*                                                                    *
//**********************************************************************
//PHC68P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DHVA5 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHCPD68,DISP=SHR
//*
//ZM4DHVA6 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..AHECHOR,DISP=SHR
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC68T02),DISP=SHR
//*
//**********************************************************************
//*                     -- ZM4DHV05 --                                 *
//*   OBJETIVO : INSERTA EN LA TABLA HISAHEC, EL RESPALDO DE -         *
//*              LA TABLA HISAHEC.                                     *
//*                                                                    *
//**********************************************************************
//PHC68P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DHVA7 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..ZMHCPD68,DISP=SHR
//*
//ZM4DHVA8 DD DSN=MXC&AMB..ZM.FIX.E&EMP..S&SUC..HISAHEC,DISP=SHR
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC68T01),DISP=SHR
//*
