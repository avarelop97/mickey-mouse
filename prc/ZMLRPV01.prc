//ZMLRPV01 PROC                                                         00010000
//**********************************************************************
//*                        M U V   Y   S I V A                         *
//*                     =========================                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE AUDITORIA BANCA PATRIMONIAL     *
//*                                                                    *
//*   PROCEDIM. :  ZMLRPV01                                            *
//*                                                                    *
//*   OBJETIVO  :  ARCHIVOS DE EMISORAS  PARA MUV-SIVA MERDIN          *
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
//*                           --ZM4EGP02--                             *
//* OBJETIVO    : GENERA ARCHIVOS DE EMISORAS CON EL ULTIMO PRECIO DE  *
//*               DE CB Y MUV.                                         *
//*                                                                    *
//**********************************************************************
//PLR01P01 EXEC PGM=IKJEFT01
//*
//ZMGP02A1 DD DSN=MXCP.ZM.FIX.AUD.ARMDINCB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=70,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(70,35),RLSE)
//*
//ZMGP02A2 DD DSN=MXCP.ZM.FIX.AUD.ARMDINBC,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLRV1T01),DISP=SHR
//*
//**********************************************************************
//*                      F I N   Z M L R P V 0 1                       *
//**********************************************************************
