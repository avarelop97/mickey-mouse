//ZMSFPD8A PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  CBSFCD08                                         *00010006
//*                   ARCHIVOS EXTRACTORES BANPAT BCM                  *00010006
//* OBJETIVO       :  GENERAR LOS 8 ARCHIVOS DE INFORMACION ESTADISTICO*00010006
//*                   DEL AREA DE GESTION Y CONTROL (LUIS CARLOS ORONA)*00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :  CBSFCD07  -  ZMSFPD07                            *00010006
//* REALIZO        :  MARTIN SANTOS GONZALEZ                           *00010006
//* FECHA          :  MAYO  2006                                       *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00010006
//**********************************************************************00010006
//*--------------------------------------------------------------------*00939706
//*   EJECUCION DEL PROGRAMA:  ZM4DS002                                *00939806
//*   OBTIENE OPERACIONES PARA SISTEMA ESTADISTICO                     *00939906
//*--------------------------------------------------------------------*00939706
//PSF08P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                00940106
//SYSTSPRT DD SYSOUT=*                                                  00940306
//ZMS002A1 DD DSN=MXC&AMB..ZM.TMP.SIE.E&EMP..ZMSFPD08,DISP=SHR          00940406
//ZMS002A2 DD DSN=MXC&AMB..ZM.FIX.SIE.EBCM.MOVTOS,                      00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//            DCB=(LRECL=235,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940706
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00940808
//ZMS002A3 DD DSN=MXC&AMB..ZM.FIX.SIE.E&EMP..ZM4S002.EFEVTAS1,          00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//            DCB=(LRECL=074,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940706
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00940808
//ZMS002A4 DD DSN=MXC&AMB..ZM.FIX.SIE.EBCM.MOVTOCAM,                    00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//            DCB=(LRECL=271,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940706
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00940808
//SYSPRINT DD SYSOUT=*                                                  00940906
//SYSOUT   DD SYSOUT=*                                                  00941006
//SYSDBOUT DD SYSOUT=*                                                  00941106
//SYSABOUT DD SYSOUT=*                                                  00941206
//SYSUDUMP DD DUMMY                                                     00941306
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSFS8T02),DISP=SHR                   00941406
//*--------------------------------------------------------------------*00939706
//*   EJECUCION DEL PROGRAMA:  ZM4DS008                                *00939806
//*   OBTIENE ACUMULADO DE OPERACIONES                                 *00939906
//*--------------------------------------------------------------------*00939706
//PSF10P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00940106
//SYSTSPRT DD SYSOUT=*                                                  00940306
//ZMS008A1 DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-31),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-30),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-29),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-28),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-27),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-26),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-25),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-24),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-23),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-22),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-21),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-20),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-19),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-18),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-17),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-16),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-15),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-14),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-13),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-12),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-11),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-10),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-09),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-08),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-07),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-06),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-05),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-04),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-03),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-02),DISP=SHR          00940406
//         DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(-01),DISP=SHR          00940406
//         DD DSN=MXC&AMB..ZM.FIX.SIE.EBCM.MOVTOS,DISP=SHR              00940406
//*        DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..MOVTOS(0),DISP=SHR            00940406
//ZMS008A2 DD DSN=MXCP.ZM.FIX.SIE.E&EMP..ACUMOVTS,                      00940506
//            DISP=(NEW,CATLG,DELETE),                                  00940606
//            DCB=(LRECL=235,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940706
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)                       00940808
//SYSPRINT DD SYSOUT=*                                                  00940906
//SYSOUT   DD SYSOUT=*                                                  00941006
//SYSDBOUT DD SYSOUT=*                                                  00941106
//SYSABOUT DD SYSOUT=*                                                  00941206
//SYSUDUMP DD DUMMY                                                     00941306
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF10T06),DISP=SHR                   00941406
//**********************************************************************00900006
//*                    F I N   Z M S F P D 8 A                         *00900006
//**********************************************************************00900006
