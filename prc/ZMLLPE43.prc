//ZMLLPE43 PROC                                                         01140002
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  SIVAXBPC                                         *
//*                   BAJA DE PAGOS PENDIENTES EN MDD                  *
//*                   OPCION 991.                                      *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  SOLICITUD DE USUARIO                             *
//*                                                                    *
//* DESPUES DE     :                                                   *
//* APLICATIVO:                                                        *
//*                                                                    *
//* REALIZO        :                                                   *
//* FECHA          :  MARZO 2014                                       *
//*                                                                    *
//**********************************************************************
//*
//PLL43P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..ZMLLPE43,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                         -- CTMCND --                               *
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CBLLNE44_IN" PARA QUE SE  *
//*           EJECUTE EL BATCH PARA LA BAJA DE PAGOS PENDIENTES        *
//*                   EN MDD, BAJA DE CONTRATOS OPC 991                *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PLL43P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND CBLLNE44_&EMP_SIVA_OK WDATE',COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
