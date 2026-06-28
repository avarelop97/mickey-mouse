//ZMLTPP09 PROC
//**********************************************************************
//*               C A S A   D E  B O L S A                             *
//*               ========================                             *
//*               << SISTEMA DE VALORES >>                             *
//*                                                                    *
//* APLICACION:  MODULO UNICO DE VALORES  (M.U.V.)                     *
//* OBJETIVO  :  REALIZA TRANSFERENCIA DEL ARCHIVO DE INFORMACION DE   *
//*              OPERACION DE CB DIA ANTERIOR AL SERVIDOR PLANAS1F1    *
//*                                                                    *
//* OPCION LINEA     = 49, TRANSACCION = ZZ54, PREFIJO = SIVAXQZ9      *
//* SUBMITE A        : CBLTPZ09                                        *
//* CORRE DESPUES DE :                                                 *
//* CORRE ANTES   DE :                                                 *
//* PERIODICIDAD     : DIARIO                                          *
//* AUTOR            : MARTIN S. G.                                    *
//**********************************************************************
//*-------------------------------------------------------------------**
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO
//*-------------------------------------------------------------------**
//PLT09P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMLTPP09,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PLT09P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXQZ9_IN_OK WDATE',
//         COND=(5,LT)
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
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M L T P P 0 9                            *00020000
//*--------------------------------------------------------------------*00010000
