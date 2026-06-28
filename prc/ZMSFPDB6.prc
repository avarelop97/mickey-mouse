//ZMSFPDB6 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCSFCDB1                                         *00010006
//*                   ARCHIVOS EXTRACTORES BANPAT BCM                  *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :                                                   *00010006
//* REALIZO        :  FSW DGCM.                                        *00010006
//* FECHA          :  MAYO 2018                                        *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00010006
//**********************************************************************00010006
//*                                                                     00360006
//*   EJECUCION DEL PROGRAMA:  ZM4DS0A4                                 00370006
//*   GENERACION DE ARCHIVOS DE CLIENTES                                00380006
//********************************************************************* 00390006
//PSFB1P90 EXEC PGM=IKJEFT01                                            00400006
//ZMS001A1 DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR                         00420006
//ZMS001A2 DD DSN=MXCP.ZM.FIX.SIE.ZMSFPDB1.CLTES.AN.F&FECHA,            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=711,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//ZMS001A3 DD DSN=MXCP.ZM.FIX.SIE.ZMSFPDB1.CLIENTES.CIFRAS,             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=077,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSFB1P90),DISP=SHR                   00530006
//*
//**********************************************************************00010006
//*                                                                     00360006
//*   EJECUCION DEL PROGRAMA:  ZM4DS0A5                                 00370006
//*   GENERACION DE ARCHIVOS DE CLIENTES                                00380006
//********************************************************************* 00390006
//PSFB1P85 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//ENTRADA1 DD DSN=MXCP.ZM.FIX.SIE.ZMSFPDB1.CLTES.AN.F&FECHA,            00450006
//            DISP=SHR                                                  00460006
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.SIE.ZMSFPDB1.CLIENTES.F&FECHA,            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=742,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSFB1P85),DISP=SHR                   00530006
//*
//**********************************************************************00010006
//*   EJECUCION DEL PROGRAMA:  ZM4DS0A6                                 00370006
//*   GENERACION DE ARCHIVOS DE CLIENTES                                00380006
//********************************************************************* 00390006
//PSFB1P75 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//ZMS001A1 DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR                         00420006
//ZMS001A2 DD DSN=MXCP.ZM.FIX.SIE.ZMSFPDB1.CLIENTES.F&FECHA,            00450006
//            DISP=SHR                                                  00460006
//*
//ZMS001A3 DD DSN=MXCP.ZM.FIX.SIE.ZMSFPDB1.CLTGLMO.F&FECHA,             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=900,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//ZMS001A4 DD DSN=MXCP.ZM.FIX.SIE.ZMSFPDB1.CLTES.CIFRAS,                00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=077,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSFB1P75),DISP=SHR                   00530006
//*
//**********************************************************************00010006
//*   EJECUCION DEL PROGRAMA:  ZM4DS0A7                                 00370006
//*   GENERACION DE ARCHIVOS DE CLIENTES ACUM X FRANQUICIA              00380006
//********************************************************************* 00390006
//PSFB1P65 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//*
//ZMS001A1 DD DSN=MXCP.ZM.FIX.SIE.ZMSFPDB1.CLTGLMO.F&FECHA,             00450006
//            DISP=SHR                                                  00460006
//*
//ZMS001A2 DD DSN=MXCP.ZM.FIX.SIE.ZMSFPDB1.ACUMFRA.F&FECHA2,            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=328,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PSFB1P65),DISP=SHR                   00530006
//*
//**********************************************************************00900006
//*                    F I N   Z M S F P D B 6                         *00900006
//**********************************************************************00900006
