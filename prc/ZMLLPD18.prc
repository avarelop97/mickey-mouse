//ZMLLPD18 PROC
//*
//**********************************************************************
//**                                                                   *
//** SISTEMA        :  MUV                                             *
//**                                                                   *
//**                                                                   *
//** PROCESO        :  ZMLLPD18    (SIVAXCTD)                          *
//**                                                                   *
//**                                                                   *
//** OBJETIVO       :  RENOMBRA ARCHIVOS DE ASINACION O REASINACION Y  *
//**                   REALIZA TRANSFERENCIA DE ARCHIVO   PARA BONY    *
//**                   CUSTODIA INTERNACIONAL.                         *
//**                                                                   *
//** CORRE ANTES DE :  ZMHTPD09                                        *
//**                                                                   *
//** DESPUES DE     :  NINGUNO                                         *
//**                                                                   *
//** OBSERVACIONES  :  PROCESO ASOCIADO A LOS PROC CBLLND16 Y 17 LOS   *
//**                   CUALES GENERAN ARCHIVO PARA TRANSFERIR AL E-GUARD
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
//PLL18P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.BONY.ZMLLPD18,
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
//PLL18P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.MDD.BONYASG.H&EMP.&SUC.,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.MDD.BONY.ASIGNA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=209,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA:                                                          *
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE DISPARE EL                *
//*           PROCESO DE TRANSFERENCIA                                 *
//*--------------------------------------------------------------------*
//PLL18P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND BCHTND09_BCM_SIVA_OK WDATE',COND=(4,LT)
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
