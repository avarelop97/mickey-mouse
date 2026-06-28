//ZMHCPP80 PROC
//*
//**********************************************************************
//*                                                                    *
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                   CAPITALES                                        *
//*                                                                    *
//* PROCESO        :  ZMHCPE80                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE ASIGNACIONES Y   *
//*                   ORDENES DE CAPITALES.                            *
//* CORRE                                                              *
//* ANTES DE       :  CBHCPZ80.                                        *
//*                                                                    *
//* REALIZO        :  J. JAIME FLORES ESTRADA     -   ASATECK   -      *
//* FECHA          :  AGOSTO 2002.                                     *
//*                                                                    *
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *
//* FECHA          :  OCTUBRE 2008.                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EVENTUALMENTE      *
//*                                                                    *
//**********************************************************************
//*                                                                   *
//*  PASO: 06    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*              EN ARCHIVO SECUENCIAL                                *
//*                                                                   *
//*  SECUENCIA: 1                                           ZM3DG001  *
//*                                                                   *
//*********************************************************************
//PHC80P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.PATRCNB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PHC80P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXCNB_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
