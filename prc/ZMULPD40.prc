//ZMULPD40  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*              << EFICIENCIA Y CONTROL DE LA CARTERA  >>             *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE EFICIENCIA Y CONTROL DE LA CARTERA      *
//*                AREA DE REGULACION (MA. CARMEN SANJURJO)            *
//*                GENERAR REPORTES DE VISITAS A SUCURSALES            *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   FECHA:  JULIO  2005 BBVA-BANCOMER (JGO)                          *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE LOS PARAMETROS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PUL40P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMULPD40,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4DGU29                                                  00221002
//* OBJETIVO: REPORTES DE VISITAS A SUCURSALES                          00222002
//*           GENERA 7 DIFERENTES TIPOS DE REPORTES                     00223002
//*---------------------------------------------------------------------00223002
//PUL40P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*                                                  00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGU29R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU29R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU29R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGU29A3 DD DSN=MXCP.ZM.GDGD.OTR.ARCHUSER(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=132,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//ZMGU29R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGU29A4 DD DSN=MXCP.ZM.GDGD.OTR.ARCHPROM(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=140,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//ZMGU29R5 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU29R6 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU29R7 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGU29P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMULPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL40T01),DISP=SHR
//*
