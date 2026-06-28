//ZMJLPE39 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA MOVIMIENTOS   BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCEDIMI.:  ZMJLPE39                                            *
//*                                                                    *
//*   OBJETIVO  :  PROCESA MOVIMIENTOS  DE SOCIEDADES DE INVERSION     *
//*                (OPCION Z18)                                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA  :  JUNIO , 2006.                                          *
//*                                                                    *
//*   AUTOR  :  GETRONICS S.A. DE C.V.                                 *
//*                                                                    *
//*   MODIFICACIOES                                                    *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJL39P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE39,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//****************************************************************
//* PROGRAMA: ZM4DGD03                                           *
//* FUNCION:  GENERACION DE REPORTE DE MOVIMIENTOS M.U.V.        *
//****************************************************************
//PJL39P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGD03A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE39,
//            DISP=SHR
//ZMGD03R1 DD DSN=MXCP.ZM.FIX.MUV.E&EMP..S&SUC..ZMJLPE39,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=174,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL39T02),DISP=SHR
//*
//****************************************************************
//* PROGRAMA:                                                    *
//* FUNCION:  COPIA DEL ARCHIVO DE MOVIMIENTOS A CTROL-D         *
//****************************************************************
//PJL39P01 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.MUV.E&EMP..S&SUC..ZMJLPE39,
//            DISP=SHR
//*
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJL39P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXZ18_IN_SEP_OK WDATE',
//         COND=(4,LT)
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
//*        TERMINA PROCESO ZMJLPE39 SIVA MULTIEMPRESA                  *
//**********************************************************************
