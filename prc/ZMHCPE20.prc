//ZMHCPE20 PROC
//*********************************************************************
//*                                                                   *
//* SISTEMA: ZM (MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO).          *
//*                                                                   *
//* PROCESO: ZMHCPE20.                                                *
//*                                                                   *
//* OBJETIVO : CREAR ARCHIVO DE PARAMETROS Y DEJAR LA CONDICION PARA  *
//*            ACTIVAR EL JCL QUE GENERA EL LISTADO DE ORDENES        *
//*            CANCELADAS.                                            *
//*                                                                   *
//* REALIZO : CDA INFORMATICA (XMCH061).                              *
//*                                                                   *
//* FECHA : 25 MAYO 2012.                                             *
//*                                                                   *
//*********************************************************************
//******************************************************************
//*----------------------------------------------------------------*
//*           L O G   D E   M O D I F I C A C I O N E S            *
//*----------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA            DESCRIPCION            *
//* ----------- -------- ------- --------------------------------- *
//* XXXXXXXXXXX XXXXXXXX XXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*            *         *       *                                 *
//*----------------------------------------------------------------*
//**********************************************************************
//* PASO     : PHC20P02                                                *
//* PROGRAMA : ZM3DG001                                                *
//* OBJETIVO : GENERA ARCHIVO DE PARÁMETROS                            *
//**********************************************************************
//PHC20P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPE20,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO     : PHC20P01                                                *
//* PROGRAMA : CTMCND                                                  *
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROLM PARA GENERAR LISTADO DE *
//*            ORDENES CANCELADAS   Á                                  *
//**********************************************************************
//PHC20P01 EXEC  PGM=CTMCND,PARM='ADD COND     SIVAXJ08_OK    WDATE',
//         COND=(4,LT)
//*
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
