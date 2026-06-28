//ZMGFPD47 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)            *
//*                                                                    *
//* PROCESO        : CBGFND47                                          *
//*                  OPERACIONES INUSUALES                             *
//*                                                                    *
//* OBJETIVO       : CARGA INFORMACION A LA TABLA OPERINU              *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       : CBGFND48                                          *
//*                                                                    *
//* CORRE
//* DESPUES DE     : CBLFND46                                          *
//*                                                                    *
//* REALIZO        : FERNANDO CABALLERO ROMAN (ASATECK)                *
//*                                                                    *
//* FECHA          : OCTUBRE  2002                                     *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//* SUBPROCESO : (D) AL CIERRE DE OPERACIONES                          *
//*              - OPERACIONES INUSUALES                               *
//**********************************************************************
//* MODIFICACIONES: REQUERIMIENTOS POR PARTE DE USUARIO DE NEGOCIO     *
//* 1.- PASO PGF47P01 SE CANCELA ENVIO DE REPORTE A CONTROL-D Y SE     *
//* ENVIA POR TRANSMISION A SERVIDOR.                                  *
//* 2.- PASO PGF47P1A, PGF47P1C, PGF47P1D SE GENERA NUEVO ARCHIVO      *
//* CONINFORMACION DE SALDO INICIAL Y SE ENVIA POR TRANSMISION A       *
//* SERVIDOR DE USUARIO DE NEGOCIO.                                    *
//* MARCA: @PLD-MAYO2020                                               *
//**********************************************************************
//*
//**********************************************************************
//*                        RECIBE PARAMETROS
//**********************************************************************
//PGF47P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGFPD47,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//**********************************************************************
//*                          -- ZM4DGV37 --                            *
//* OBJETIVO    :  ACTUALIZACION OPERINU                               *
//*                                                                    *
//*                DEPURACION MENSUAL DE LA TABLA OPERINU              *
//*                                                                    *
//*                RECIBIR LOS PARAMETROS ENVIADOS DE CICS             *
//*                                                                    *
//*                REPORTE MENSUAL DE OPERACIONES INUSUALES            *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***PROC. OPE.INUSUALES*
//**********************************************************************
//PGF47P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//ZMGV37A1 DD  DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGFPD47,
//         DISP=SHR
//*@PLD-MAYO2020-I
//*ZMGV37R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGV37R1 DD DSN=MXCP.ZM.FIX.REP.OPEINU.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*@PLD-MAYO2020-F
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGF47T01),DISP=SHR
//*@PLD-MAYO2020-I
//**********************************************************************
//* UTILERIA   : ADUUMAIN/DB2.                                         *
//* OBJETIVO   : DESCARGA LA TABLA OPERINU SOLO LAS CABECERAS          *
//*              ESTATUS = 'C'                                         *
//**********************************************************************
//PGF47P1A EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PGF47P1A,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCAINI.OPERINU,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGF47T1A),DISP=SHR
//**********************************************************************
//*                          -- ZM4DGV36 --                            *
//* OBJETIVO    :  GENERA ARCHIVO CON EL SALDO INICIAL CON EL QUE      *
//*                TRABAJARAN LAS ALERTAS PLD CASA DE BOLSA.           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 ***PROC. OPE.INUSUALES*
//**********************************************************************
//PGF47P1C EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//ZMGV36A1 DD  DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGFPD47,
//         DISP=SHR
//*
//ZMGV36A2 DD  DSN=MXCP.ZM.FIX.DESCAINI.OPERINU,
//         DISP=SHR
//*
//S1DGV36  DD  DSN=MXCP.ZM.FIX.ARCH.SALDOI.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(100,50),RLSE)
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZGF47T1C),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO    :  ADICIONAR CONDICION PARA QUE SE TRANSMITA           *
//*                EL ARCHIVO DE SALDO INICIAL PARA PLD CASA           *
//*                DE BOLSA                                            *
//**********************************************************************
//PGF47P1D EXEC  PGM=CTMCND,
//         PARM='ADD COND CBGFND47_PLD_SIVA_OK WDATE',COND=(0,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//*
//*@PLD-MAYO2020-F
//**********************************************************************
