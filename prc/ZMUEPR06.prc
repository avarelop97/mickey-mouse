//ZMUEPR06 PROC EMP=,SUC=,INT1=,INT2=
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM YA9BXW - REDISENO DE ESTADOS DE CUENTA.          *
//* PROCESO      : ZMUEPR06 (SIVAXREC)                                 *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : ADICIONA CONDICION EN CONTROL 'M' PARA EJECUTAR     *
//*                VO.BO. DE ESTADOS DE CUENTA MENSUALES MUV           *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PLZ06P02                                              *
//* UTILERIA   : ZM3DG001                                              *
//* OBJETIVO   : RECIBE PARAMETROS EN ARCHIVO.                         *
//*--------------------------------------------------------------------*
//PLZ06P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECT.EMP.SUC.ZMUEPR06,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO       : PLZ06P01                                              *
//* UTILERIA   : CTMCND                                                *
//* OBJETIVO   : SE ADICIONA CONDICION PARA CONTROL M.                 *
//*              EJECUTA LOS PROCESOS BCUENR16 , CBUENM17 Y MZMP9M02   *
//*--------------------------------------------------------------------*
//PLZ06P01 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND    SIVAXREC_IN     &INT2'
//*
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
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUEPR06 (SIVAXREC)             *
//*--------------------------------------------------------------------*
//*
