//ZMHLPP84 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHLPP84                                      *
//*                                                                    *
//*   OBJETIVO         : ENVIO  DE REPLICA DE PORCENTAJE DE CUOTAS     *
//*                      ( OPCION 673 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : CBHLPD84                                      *
//*                                                                    *
//*   CORRE DESPUES DE : SIVAXFON                                      *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : NOVIEMBRE, 2014                               *
//*                                                                    *
//*   AUTOR            : FABRICA DE SOFTWARE DGCM                      *
//*                                                                    *
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUTAR MAS DE   *
//*                      UNA VEZ DURANTE EL DIA.                       *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*--------------------------------------------------------------------*
//PHL84P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMHLPP84,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//*FSW-I
//*PHL84P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXFON_IN_OK WDATE',
//PHL84P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXCUO_IN_OK WDATE',
//*FSW-F
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
