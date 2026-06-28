//ZMHRPV02 PROC                                                         00010000
//**********************************************************************
//*                        M U V   Y   S I V A                         *
//*                     =========================                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE AUDITORIA BANCA PATRIMONIAL     *
//*                                                                    *
//*   PROCEDIM. :  ZMHRPV02                                            *
//*                                                                    *
//*   OBJETIVO  :  ARCHIVOS DE EMISORAS  PARA MUV-SIVA MERCAP          *
//*                                                                    *
//*   CORRE ANTES DE  : NINGUNO                                        *
//*                                                                    *
//*   CORRE DESPUES DE: NINGUNO                                        *
//*                                                                    *
//*   PERIODICIDAD    : EVENTUAL.                                      *
//*                                                                    *
//*   ELABORADO POR   : ARACELI SALAZAR PEREZ  (AZERTIA)               *
//*                                                                    *
//*   FECHA           : NOVIEMBRE DEL 2007                             *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO | PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |        |       |                                 *
//**********************************************************************
//*                           --ZM4EGP01--                             *
//* OBJETIVO    : GENERA ARCHIVOS DE EMISORAS CON EL ULTIMO PRECIO DE  *
//*               DE CB Y MUV.                                         *
//*                                                                    *
//**********************************************************************
//PHR02M01 EXEC PGM=IKJEFT01
//*
//ZMGP01A1 DD DSN=MXCP.ZM.FIX.AUD.ARMCAPCB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//*
//ZMGP01A2 DD DSN=MXCP.ZM.FIX.AUD.ARMCAPBC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHRV2T01),DISP=SHR
//*
//**********************************************************************
//*                      F I N   Z M H R P V 0 1                       *
//**********************************************************************
