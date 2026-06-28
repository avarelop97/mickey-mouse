//ZMHLPZ30 PROC
//*====================================================================
//*                                            P R E L I M I N A R
//*   RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*   PROCESO PRELIMINAR PAGO DE DERECHOS OPC 802.
//*====================================================================
//*   SE CAMBIA CONDICION DE MISION DE SEPARACION PARA COTRL 'D'
//*====================================================================
//*
//********************************************************************
//* EJECUCION DE PRELIMINAR DE EJERCICIO DE DERECHOS DE RENTA VARIABLE
//* ZM4EH981 VALORES
//********************************************************************
//PJH30P2A EXEC PGM=IKJEFT01
//ZMH981A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE30,DISP=SHR
//*
//ZMH981A2 DD DSN=&&ARCH,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//ZMH981A3 DD DSN=MXCP.ZM.TMP.EBCM.ARCH.ZM6RG075,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=569,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A4 DD DSN=MXCP.ZM.TMP.EBCM.ARCH.ZM6RH978,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=143,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A5 DD DSN=MXCP.ZM.TMP.EBCM.ARCH.ZM6RH979,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=440,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A6 DD DSN=MXCP.ZM.TMP.EBCM.ARCH.ZM6RH995,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=584,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A7 DD DSN=MXCP.ZM.TMP.EBCM.ARCH.ISRBON,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=020,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A8 DD DSN=MXCP.ZM.TMP.EBCM.ARCH.VARCOMP,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=044,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A9 DD DSN=MXCP.ZM.TMP.EBCM.ARCH.DIVEFE,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=440,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMH981AA DD DSN=MXCP.ZM.FIX.EBCM.PREL.DIVIDEN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=955,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMH981S1 DD DSN=MXCP.ZM.FIX.EBCM.REPP01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981S2 DD DSN=MXCP.ZM.FIX.EBCM.REPP02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL30T01),DISP=SHR
//*
//*********************************************************************
//* OBJETIVO : SORTEAR ARCHIVO                                        *
//* PROGRAMA : ICEMAN(TARJETA DE SORT ZHL30T2A)                       *
//*********************************************************************
//PJH30P2B EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.REPP02,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.EBCM.REPP03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL30T2A),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SEPARA LAS CUENTAS DE FIDEICOMISO DEL RESTO
//* PROGRAMA : ZM4CFID1
//********************************************************************
//PJH30P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH981A3 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE30,DISP=SHR
//ZMH981A4 DD DSN=MXCP.ZM.WKF.EBCM.REPP03,DISP=SHR
//ZMH981A5 DD DSN=MXCP.ZM.FIX.EBCM.REPP01,DISP=SHR
//*
//ZMH981R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH981RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL30T1A),DISP=SHR
//*
