//ZMRICD05 PROC EMP=,SUC=,INT1=,INT2=
//*--------------------------------------------------------------------*
//* SISTEMA  : ZM - CASA DE BOLSA.                                     *00003000
//* PROCESO  : BCRICD05.     (SIVAXRC5)                                *
//* OBJETIVO : SUBMITIDOR DE OPCION 2 DE REPROCESO FISCAL.             *
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//*                        == IDCAMS   ==                              *
//* PASO        : ZMRICT15                                             *
//* OBJETIVO : BORRAR ARCHIVO                                          *
//*            MXCP.ZM.TMP.EBCM.S000.ZMRICD05                          *
//*                                                                    *
//**********************************************************************
//ZMRICT15 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZRC05T30),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : ZMRICT10                                                 *
//* PROGRAMA: ZM3DG001                                                 *
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOSDE LINEA Y LOS GRABAEN     *
//*           EN ARCHIVO SECUENCIAL.                                   *
//*---------------------------------------------------------------------
//ZMRICT10 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.EBCM.S000.ZMRICD05,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//* PASO    : ZMRICT05                                                 *
//* PROGRAMA: CTMCND                         CTL-M MUV -->(NZMJRZB3)   *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-M.    *
//*---------------------------------------------------------------------
//ZMRICT05 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND SIVAXRC5_IN_OK &INT2 '
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
//*---------------------------------------------------------------------
//*               FIN ZMRICD05                                         *
//*---------------------------------------------------------------------
