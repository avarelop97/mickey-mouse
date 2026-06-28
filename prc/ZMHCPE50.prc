//ZMHCPE50 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//* PROCESO        :  SIVAXGAF REP. GLO. AFORE                         *
//* OBJETIVO       :  DAR DE ALTA LA CONDICION PARA QUE SE EJECUTE     *
//*                   POR CONTROL-M EL REPORTE DE GLOBALES DE AFORE    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  A SOLICITUD DEL USUARIO OPC. 323/399             *
//*                                                                    *
//* REALIZO        :  INTERNACIONAL DE SISTEMAS ENERO 2014 (XMBJ066)   *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA EVENTUAL  *
//*                   CUANDO EL USUARIO EJECUTA LA APLICACION DE LA    *
//*                   DISTRIBUCION DE UNA ORDEN GLOBAL DE LA AFORE     *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC19P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*                                                         ZM3DG001   *
//**********************************************************************
//PHC19P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHCPE50,
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
//PHC19P01 EXEC  PGM=CTMCND,PARM='ADD COND     SIVAXGAF_OK    WDATE',
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
