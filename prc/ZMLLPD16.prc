//ZMLLPD16 PROC
//*
//**********************************************************************
//**                                                                   *
//** SISTEMA        :  MUV                                             *
//**                                                                   *
//** PROCESO        :  ZMLLPD16                                        *
//**                                                                   *
//** OBJETIVO       :  REALIZA LA COPIA DEL ARCHIVO DE ASIGNACIONES PA-*
//**                   RA BONY CUSTODIA INTERNACIONAL.                 *
//**                                                                   *
//** CORRE ANTES DE :  ZMLLPD17                                        *
//**                                                                   *
//**                                                                   *
//** DESPUES DE     :  ZMLLPD10                                        *
//**                                                                   *
//**                                                                   *
//** OBSERVACIONES  :                                                  *
//**                                                                   *
//**                                                                   *
//** REALIZO        :  GETRONICS                                       *
//*                    JULIO   2007.                                   *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO                 *
//*           PARA SIGUIENTES PASOS                                    *
//*--------------------------------------------------------------------*
//PLL16P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.BONY.ZMLLPD16,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REALIZA COPIA DEL ARCHIVO DE ASIGNACION PARA BONY        *
//*           CUSTODIA INTERNACIONAL.                                  *
//*--------------------------------------------------------------------*
//PLL16P03 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.MDD.BONY.ASIGNA,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.TMP.MDD.BONYASG.H&INT2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=209,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4DLX08                                                 *
//* OBJETIVO: GRABA CARACTERISTICAS DEL ARCHIVO DE ASIGNACIONES.(PARAM)*
//*--------------------------------------------------------------------*
//PLL16P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLX08A1 DD DSN=MXCP.ZM.TMP.MDD.BONY.ZMLLPD16,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL16T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA:                                                          *
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE DISPARE EL  PROCESO       *
//*           BCLLND17 PARA EL ARCHIVO DE LA REASIGNACION.             *
//*--------------------------------------------------------------------*
//PLL16P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLND17_BCM_SIVA_OK WDATE',COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
