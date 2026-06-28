//ZMLLPP45 PROC                                                         01140002
//*
//**********************************************************************
//**                                                                   *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  SIVAX99A                                         *
//*                   POLIZA AUTOMATICA DE CASA DE BOLSA               *
//*                   OPCION    .                                      *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  SOLICITUD DE USUARIO                             *
//*                                                                    *
//* DESPUES DE     :                                                   *
//* APLICATIVO:                                                        *
//*                                                                    *
//* REALIZO        :                                                   *
//* FECHA          :  AGOSTO 2014                                      *
//*                                                                    *
//**********************************************************************
//*
//PLL45P04 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.PAC.E&EMP..S&SUC..ZMLLPP45,
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
//*                                                                    *
//* PROGRAMA: ZM3PCB01                                                 *
//* FUNCION:  MOVIMIENTOS CASA DE BOLSA Y BANCA PATRIMONIAL.           *
//*                                                                    *
//**********************************************************************
//PLL45P03 EXEC PGM=ZM3PCB01,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.PAC.E&EMP..S&SUC..ZMLLPP45,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************
//*                         -- CTMCND --                               *
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CBLLNZ48_IN" PARA QUE SE  *
//*           EJECUTA EL BATCH PARA GENERAR LA CONTABILIDAD            *
//*           DEL DIA ANTERIOR.                                        *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
// IF  PLL45P03.RC EQ 01 THEN
//PLL45P02 EXEC  PGM=CTMCND,
//         PARM='ADD COND CBLLNZ48_&EMP_SIVA_OK WDATE',COND=(4,LT)
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
// ENDIF
//*
//**********************************************************************
//*                         -- CTMCND --                               *
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CBLLNZ46_IN" PARA QUE SE  *
//*           EJECUTA EL BATCH PARA GENERAR LA CONTABILIDAD            *
//*           DEL DIA ANTERIOR.                                        *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
// IF  PLL45P03.RC EQ 02 THEN
//PLL45P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND CBLLNZ46_&EMP_SIVA_OK WDATE',COND=(4,LT)
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
// ENDIF
//*
