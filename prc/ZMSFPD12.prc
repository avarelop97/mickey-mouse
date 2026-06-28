//ZMSFPD12 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCSFCD12                                         *00010006
//*                   ARCHIVOS EXTRACTORES BANPAT BCM                  *00010006
//* OBJETIVO       :  GENERA ARCHIVOS ACUMULADOS DE INFORMACION        *00010006
//*                   ESTADISTICA PARA EL AREA DE GESTION PATRIMONIAL  *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :  IMAGDIA                                          *00010006
//* DESPUES DE     :  BCSFCD10  -  ZMSFPD10                            *00010006
//* REALIZO        :  MARTIN SANTOS GONZALEZ                           *00010006
//* FECHA          :  MAYO  2007                                       *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE MENSUALMENTE                  *00010006
//**********************************************************************00010006
//PSF12P55 EXEC PGM=ZM3DG001,                                           00300009
//         PARM=('&EMP','   ','   ','   ',)                             00310006
//SYSTSPRT DD SYSOUT=*                                                  00312006
//SYSPRINT DD SYSOUT=*                                                  00313006
//SYSOUT   DD SYSOUT=*                                                  00314006
//SYSDBOUT DD SYSOUT=*                                                  00315006
//SYSABOUT DD DUMMY                                                     00316006
//SYSUDUMP DD DUMMY                                                     00317006
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIE.E&EMP..ZMSFPD12,                      00319006
//            DISP=(NEW,CATLG,DELETE),                                  00320006
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00330006
//            UNIT=3390,                                                00340006
//            SPACE=(CYL,(2,1),RLSE)                                    00350008
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS118                                *00910006
//*    GENERA ARCHIVOS CAPTA01 Y CUENTAS PARA PROMOCION CASA DE BOLSA  *00920006
//*--------------------------------------------------------------------*00900006
//PSF12P50 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS118A1 DD DSN=MXCP.ZM.FIX.SIE.ECBP.CAPTA01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//ZMS118A2 DD DSN=MXCP.ZM.FIX.SIE.ECBP.CUENTAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=130,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T15),DISP=SHR                   00939506
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS040                                *00910006
//*    SALDOS PARA EL CAM.                                             *00920006
//*--------------------------------------------------------------------*00900006
//PSF12P45 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS040A1 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..CIERREGE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=50,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T14),DISP=SHR                   00939506
//*--------------------------------------------------------------------*00900006
//*   EJECUCION DEL PROGRAMA:  ZM4DS041                                *00910006
//*    ACUMULADO DE TENENCIA.                                          *00920006
//*--------------------------------------------------------------------*00900006
//PSF12P40 EXEC PGM=IKJEFT01,COND=(4,LT)                                00931006
//SYSTSPRT DD SYSOUT=*                                                  00933006
//ZMS041A1 DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-31),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-30),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-29),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-28),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-27),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-26),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-25),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-24),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-23),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-22),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-21),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-20),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-19),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-18),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-17),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-16),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-15),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-14),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-13),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-12),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-11),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-10),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-9),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-8),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-7),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-6),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-5),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-4),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-3),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-2),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(-1),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(0),DISP=SHR
//ZMS041A2 DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..ACUTENV2(+1),                 00935006
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUD.MODEL,LRECL=340,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*                                                  00939006
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSDBOUT DD SYSOUT=*                                                  00939206
//SYSABOUT DD SYSOUT=*                                                  00939306
//SYSUDUMP DD DUMMY                                                     00939406
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF12T01),DISP=SHR                   00939506
//*                                                                     00950210
//**********************************************************************
//* PROGRAMA: ICEGENER
//* OBJETIVO: COPIA ARCHIVO DE ACUMOVTS A GDT
//**********************************************************************
//PSF12P35 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUMOVTS,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..ACUMOVTS(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUD.MODEL,LRECL=235,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSIN    DD DUMMY
//*                                                                     00950210
//**********************************************************************
//* PROGRAMA: ICEGENER
//* OBJETIVO: COPIA ARCHIVO DE ACUMOVTS A GDT
//**********************************************************************
//PSF12P30 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUINGRE,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..ACUINGRE(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUD.MODEL,LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSIN    DD DUMMY
//*                                                                     00950210
//**********************************************************************
//* PROGRAMA: ICEGENER
//* OBJETIVO: COPIA ARCHIVO DE ACUMOVTS A GDT
//**********************************************************************
//PSF12P25 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACINGCAM,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..ACINGCAM(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUD.MODEL,LRECL=125,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSIN    DD DUMMY
//*                                                                     00950210
//**********************************************************************
//* PROGRAMA: ICEGENER
//* OBJETIVO: COPIA ARCHIVO DE ACUMOVTS A GDT
//**********************************************************************
//PSF12P20 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUPROM,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..ACUPROM(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUD.MODEL,LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSIN    DD DUMMY
//*                                                                     00950210
//**********************************************************************
//* PROGRAMA: ICEGENER
//* OBJETIVO: COPIA ARCHIVO TEN1  A GDT
//**********************************************************************
//PSF12P15 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.ZM4DS121.TENECB01,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.SIE.EBCM.TENECB01(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUD.MODEL,LRECL=57,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSIN    DD DUMMY
//*                                                                     00950210
//**********************************************************************
//* PROGRAMA: ICEGENER
//* OBJETIVO: COPIA ARCHIVO TEN2  A GDT
//**********************************************************************
//PSF12P10 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.ZM4DS121.TENECB02,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.SIE.EBCM.TENECB02(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUD.MODEL,LRECL=65,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSIN    DD DUMMY
//*                                                                     00950210
//**********************************************************************
//* PROGRAMA: ICEGENER
//* OBJETIVO: COPIA ARCHIVO AMOVTCAM A GDG
//**********************************************************************
//PSF12P05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.SIE.EBCM.AMOVTCAM.F&FECHA,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.SIE.EBCM.AMOVTCAM(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUD.MODEL,LRECL=271,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*                                                  00939106
//SYSIN    DD DUMMY
//*                                                                     00950210
//**********************************************************************00900006
//*                    F I N   Z M S F P D 1 2                         *00900006
//**********************************************************************00900006
