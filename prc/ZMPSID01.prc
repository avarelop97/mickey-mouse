//ZMPSID01 PROC
//**********************************************************************
//* SISTEMA:    SISTEMA INTEGRAL DE VALORES (S.I.V.A.)                 *
//* PROCESO:    SIVAXFVN (DISPARADOR)                                  *
//* OBJETIVO:   DAR DE ALTA LA CONDICION PARA ARRANCAR EL PROCESO QUE  *
//*             GENERA EL REPORTE DE FONDOS DE VALOR NORMAL.           *
//* CORRE                                                              *
//* ANTES DE:   NINGUNO                                                *
//* DESPUES DE: NINGUNO                                                *
//* REALIZO:    IGNACIO CARLIN HERNANDEZ (SNG)                         *
//* FECHA:      27-ABR-2010                                            *
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//ZMSID020 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//ZMG001A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.ZMPSID01,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(LRECL=96,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
//* SE ADICIONA LA CONDICION EN CONTROL-M PARA INICIAR EL              *
//* PROCESO ZMJFVN01                                                   *
//**********************************************************************
//ZMSID010 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXFVN_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//****************************************************************
//*        TERMINA PROCESO ZMPSID01 SIVA MULTIEMPRESA            *
//****************************************************************
//****************************************************************
