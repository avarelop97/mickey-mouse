//ZMHCPE16 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  SIVAXTAH CONTINGENCIA CAPITALES T.A.H.           *
//*                                                                    *
//* OBJETIVO       :  DAR DE ALTA LA CONDICION PARA QUE SE EJECUTE     *
//*                   POR CONTROL-M LA TRANSFERENCIA DEL ARCHIVO DE    *
//*                   HECHOS DE CONTINGENCIA                           *
//* CORRE                                                              *
//* ANTES DE       :  CBHTNE21                                         *
//*                                                                    *
//* DESPUES DE     :  A SOLICITUD DEL USUARIO OPC. 923                 *
//*                                                                    *
//* REALIZO        :  RHB JULIO 2011                                   *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA EVENTUAL  *
//*                   CUANDO HAY CONTINGENCIAS EN LA OPERACION DE      *
//*                   MERCADO DE CAPITALES                             *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC16P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DG001   *
//**********************************************************************
//PHC16P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPE16,
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
//*   ACTIVA LA CONDICION EN CONTROLM QUE CERRO EL MODULO CAPITALES    *
//**********************************************************************
//PHC16P01 EXEC  PGM=CTMCND,PARM='ADD COND     SIVAXTAH_OK    WDATE',
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
