//ZMGLPP41 PROC
//*--------------------------------------------------------------------*
//*                  PREVENCION LAVADO DE DINERO                       *
//*--------------------------------------------------------------------*
//* RECEPCION DE PARAMETROS DE EJECUCION DE CSP                        *
//*--------------------------------------------------------------------*
//PGL42P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ARCH.PLD.PARAM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=96,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PGL42P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXLVP_IN_OK WDATE',
//          COND=(4,LT)
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
//****************************************************************
//*        TERMINA PROCESO ZMGLPP41 SIVA MULTIEMPRESA            *
//****************************************************************
