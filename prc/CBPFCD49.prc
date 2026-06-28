//CBPFCD49 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 FSW INDRA 15FEB16 SE AGREGA EL PASO PHL46P3A PARA LA   *
//*                               ACTUALIZACION DE LA CARTERA ZMDT834  *
//*--------------------------------------------------------------------*
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO    *
//**********************************************************************
//PJI0450 EXEC PGM=ZM3DG001
//*        PARM='EMP,SUC'
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.ZMJLPD49,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//* PROGRAMA:ZM4DCO01                                                  *
//* FUNCION : REALIZA LA CARGA DEL ARCHIVO BG                          *
//**********************************************************************
//PJI0345 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)
//*
//PEN1PEN2 DD DSN=MBVP.BG.FIX.F&FECHA..MM02.PEN1PEN2.ENCT,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF49T01),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:ZM4DCO03                                                  *
//* FUNCION:  ACTUALIZA LA TABLA ZMDT936 DESDE OPERATE                 *
//**********************************************************************
//ZMPC031  EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF49T03),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DCO02                                                 *
//* FUNCION : REPORTE DE OPERACIONES CONCILIADAS                       *
//**********************************************************************
//PJI0135 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCO02A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.ZMJLPD49,
//            DISP=SHR
//*
//PEN1PEN2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF49T02),DISP=SHR
//*
//
