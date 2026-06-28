//ZMLLPD17 PROC
//*
//**********************************************************************
//**                                                                   *
//** SISTEMA        :  MUV                                             *
//**                                                                   *
//** PROCESO        :  ZMLLPD17                                        *
//**                                                                   *
//** OBJETIVO       :  REALIZA LA COPYA DEL ARCHIVO DE REASIGNACIONES  *
//**                   DE BONY CUSTODIA INTERNACIONAL.                 *
//**                                                                   *
//** CORRE ANTES DE :  NINGUNO                                         *
//**                                                                   *
//**                                                                   *
//** DESPUES DE     :  ZMLLPD16                                        *
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
//PLL17P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.BONY.ZMLLPD17,
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
//* OBJETIVO: REALIZA COPIA DEL ARCHIVO DE REASIGNACION PARA BONY      *
//*           CUSTODIA INTERNACIONAL.                                  *
//*--------------------------------------------------------------------*
//PLL17P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.MDD.BONY.REASIGNA,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.TMP.MDD.BONYASG.H&INT2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=209,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4DLX08                                                 *
//* OBJETIVO: GRABA CARACTERISTICAS DEL ARCHIVO DE ASIGNACIONES.(PARAM)*
//*--------------------------------------------------------------------*
//PLL17P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLX08A1 DD DSN=MXCP.ZM.TMP.MDD.BONY.ZMLLPD17,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPL17T01),DISP=SHR
//*
