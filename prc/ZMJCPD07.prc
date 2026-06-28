//ZMJCPD07 PROC
//*
//**********************************************************************
//* PROGRAMA: ZM3DG001.
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DEL PROGRAMA LINEA
//*           Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJF07P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJCPD07,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*     SE CORRE NUEVAMENTE PARA LA EMPRESA 'BCM' (BANCA PATRIMONIAL)
//**********************************************************************
//*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DEL PROGRAMA LINEA
//*           Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJF07P2B EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('BCM',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMJCPD07,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ201
//* OBJETIVO: REPORTE DE MOVTOS AUTOMATICOS DE SOC. DE INV.
//* PASO REINICIABLE POR RESTART Y RERUN DE CONTROL-M,R *** SOC. INVERS.
//*---------------------------------------------------------------------
//PJC07P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMJ201R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMJ201R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMJ201R1 DD DSN=MXCP.ZM.FIX.ZMJCPD07.REPORTE1,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(3,10),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//*            UNIT=3390
//*ZMJ201R2 DD DSN=MXCP.ZM.FIX.ZMJCPD07.REPORTE2,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(3,10),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//*            UNIT=3390
//*
//ZMJ201R1 DD DUMMY
//ZMJ201R2 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//ZMJ201P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJCPD07,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC07T01),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ201
//* OBJETIVO: REPORTE DE MOVTOS AUTOMATICOS DE SOC. DE INV.
//* PASO REINICIABLE POR RESTART Y RERUN DE CONTROL-M,R *** SOC. INVERS.
//*---------------------------------------------------------------------
//PJC07P1B EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMJ201R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMJ201R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMJ201R1 DD DSN=MXCP.ZM.FIX.ZMJCPD07.REPORTE3,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(3,10),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//*            UNIT=3390
//*ZMJ201R2 DD DSN=MXCP.ZM.FIX.ZMJCPD07.REPORTE4,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(3,10),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=133,BLKSIZE=0),
//*            UNIT=3390
//*
//ZMJ201R1 DD DUMMY
//ZMJ201R2 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//ZMJ201P1 DD DSN=MXCP.ZM.TMP.TES.EBCM.ZMJCPD07,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC07T01),DISP=SHR
//*
//**********************************************************************
//*                 F I N   Z M J C P D 0 7                            *
//**********************************************************************
