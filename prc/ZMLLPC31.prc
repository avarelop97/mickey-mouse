//ZMLLPC31 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A).              *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPC31.                                           *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  PROCESO DE GENERACION INTERFAZ PARA DIFO.           *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO.                                      *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO.                                      *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.0.1-00  XMBB157  18OCT18 SE INTEGRAN LOS FACTORES DE FIBRAS   *
//*                               AL ARCHIVO QUE SE ENVIA A DIFO.      *
//*                               MXC&AMB..ZM.FIX.SDI.FACTOISR.F&FECHA *
//*                               POR TANTO SE MODIFICA SU LONGITUD DE *
//*                               80 A 205.                            *
//*                                                                    *
//*--------------------------------------------------------------------*
//*---------------------------------------------------------------------
//*---------------------------------------------------------------------
//* PASO    : PLC31P01
//* PROGRAMA: IKJEFT01
//* OBJETIVO: CARGA AUTOMATICA DE FACTORES
//*---------------------------------------------------------------------
//PLC31P02 EXEC PGM=IKJEFT01
//*
//ZMJ082S1 DD DSN=MXC&AMB..ZM.FIX.SDI.FACTOISR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=205,BLKSIZE=0,DSORG=PS)
//ZMJ082S2 DD DSN=MXC&AMB..ZM.FIX.SDI.INCIDISR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP30T01),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M, INDICANDO QUE YA      *
//*            TERMINO DE GENERARSE EL ARCHIVO DE FACTORES PARA        *
//*            QUE EL AREA DE DIFO TOME EL ARCHIVO Y LOS CARGUE        *
//*            EN SUS TABLAS                                           *
//* PROGRAMA: IOACND                                                   *
//**********************************************************************
//PLC31P01 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND CBJLPC31_OK    WDATE'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
