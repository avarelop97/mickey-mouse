//ZMHHPP10 PROC                                                         01140002
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  C A P I T A L E S >>                       *
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES.(HOST TO HOST).      *
//*                                                                    *
//* PROCESO        :  SIVAXEFF                                         *
//*                   EXTRACTOR PARA FONDO DE FONDOS.                  *
//*                                                                    *
//* OBJETIVO       :  EXTRACTOR PARA FONDO DE FONDOS.                  *
//*                   HOST TO HOST.                                    *
//*                                                                    *
//* GRUPO          :  06         SOC. DE INV. QUE OPERAN SOC. DE INV.  *
//*                                                                    *
//* DESPUES DE     :  A PETICION DEL USUARIO,                          *
//*                   SUBMITE POR OPCION 868.                          *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO, DE LUNES A VIERNES, A PETICION.          *
//*                                                                    *
//* ELABORADO POR  :  EQUIPO DE HOST TO HOST.                          *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*
//PHH10P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHHPD10,
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
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CBHHPZ10_IN" PARA QUE SE  *
//*           EJECUTE EL BATCH PARA SIVA PLUS                          *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PHH10P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND CBHHPZ10_&EMP_SIVA_OK WDATE',COND=(4,LT)
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
