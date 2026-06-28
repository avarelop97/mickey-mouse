//ZMPCRCTE PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ CASA DE BOLSA                                    *
//* DECRIPCION  : CLIENTES CON MAYOR INVERSION.                        *
//* AUTOR       : FSW DGCM (XMZ8533).                                  *
//* FECHA       : 10 DE ENERO DE 2019.                                 *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*   @MEX000   XXXXXXX  DDMMMAA ..................................... *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO     : ZMRCTE99                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : COPIADO DE ARCHIVO DE CLIENTES PATRIMONIALES            *
//*            MBVP.AJ A MXCP.ZM                                       *
//*--------------------------------------------------------------------*
//ZMRCTE99 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MBVP.MC.FIX.F&FECHA..MPJC3CPP.CLITE.PAT,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.F&FECHA..BCJCRCTE.CLIENTES,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(05,02),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=28,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//*
//*====================================================================*
//* PASO       : ZMRCTE98                                              *
//* UTILERIA   : IKJEFT1A/ZM4CRCTE                                     *
//* OBJETIVO   : RECUPERA LA SUCURSAL CON MAYOR INVERSION DE UN CLIENTE*
//*====================================================================*
//ZMRCTE98 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJCRCTE.CLIENTES,
//            DISP=SHR
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJCRCTE.CTESSUC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=28,BLKSIZE=0)
//*
//S2DQSAL2 DD DSN=MXCP.ZM.FIX.F&FECHA..BCJCRCTE.REPORTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=050,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRCTE98),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMRCTE97.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE CAMBIO DE    *
//*              NOMBRE PARA MENEJO DE MP Y CONTINUACION DE SU PROCESO *
//*--------------------------------------------------------------------*
//ZMRCTE97 EXEC PGM=IOACND,PARM='ADD COND AJJCCB47_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMPCRCTE                           *
//*--------------------------------------------------------------------*
