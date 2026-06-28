//ZMLLPE50 PROC
//*
//**********************************************************************
//*                     ZM-ODT1 CARGA DE SPREADS                       *00170000
//*                     ========================                       *00180000
//*                                                                    *
//*   APLICACION:  API. PROCESO DE EJECUCIóN. CARGA DE ARCHIVO DE      *00210000
//*                SPREADS PARA DISTRIBUCIóN                           *00220000
//*                                                                    *
//*   PROCEDIM. :  ZMLLPE50                                            *
//*                                                                    *
//*   OBJETIVO  :  ACTIVAR LA CONDICION DE INICIO EN CONTROL-M         *
//*                PARA EJECUTAR EL JCL QUE REALICE LA                 *00270001
//*                TRANSFERENCIA DEL ARCHIVO DE SPREADS PARA LA        *00280000
//*                DISTRIBUCION                                        *00280000
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//*   ELABORADO POR: CDA INFORMATICA.                                  *
//*                                                                    *
//*   FECHA:  FEBRERO 2014.                                            *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS Y LOS GRABA EN ARCHIVO*
//*               SECUENCIAL.                                          *
//*                                                         ZM3DG001   *
//**********************************************************************
//PLL50P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765  DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.MDD.E&EMP..S&SUC..ZMLLPE50,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),
//            BUFNO=30
//*
//**********************************************************************
//*                                                                    *
//*  PASO:  2     ADICIONA CONDICION PARA EJECUTAR SIGUIENTE JCL       *
//*                                                          CTMCND    *
//**********************************************************************
//PLL50P01 EXEC  PGM=CTMCND,PARM='ADD COND BCLTNE51_IN_OK WDATE',
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
//**********************************************************************
//*               F I N      Z M L L P E 5 0                           *
//**********************************************************************
