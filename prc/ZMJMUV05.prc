//ZMJMUV05 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA MOVIMIENTOS   BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCESO   :  ZMJMUV05.                                           *
//*                                                                    *
//*   OBJETIVO  :  VERSION -1 SIASTMNV                                 *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA  :  DICIEMBRE , 2014.                                      *
//*                                                                    *
//*   AUTOR  :  ERNESTO MANUEL CUAUTLE MARTINEZ.                       *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//PJL40P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.OTR.ZMJMUV05,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*                       -- ZM4OC0E0 -- ZM4OC00E                      *
//* PASO PHF35P0B         -- ZHF35TB0 -- ZHF35T0B                      *
//* OBJETIVO : PROGRAMA QUE GENERA ARCHIVO SIASTMN2 CON INFORMACION    *
//*            DE BANCA PATRIMONIAL   USUARIO = IDAXERS                *
//*  EL ARCHIVO SE TRANSMITE COMO: SIASTMNB, EN CBSTCD04               *
//**********************************************************************
//PHF35P0B EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMC001A1 DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASTMNB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF35TB0),DISP=SHR
//*
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL SIASTMNB PARA PODER COMPACTARLO     *
//**********************************************************************
//PHF35P0C EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASTMNB,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASSOR2,
//          DISP=(NEW,CATLG,DELETE),
//          DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//          SPACE=(CYL,(50,25),RLSE),
//          UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T11),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DS084
//* OBJETIVO: UNIFICA REGISTROS IGUALES Y SUMA SUS MONTOS
//*---------------------------------------------------------------------
//PHF35P0D EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS084A1 DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASSOR2,DISP=SHR
//ZMS084A2 DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASPAS2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSF04T12),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL CAM PARA PODER COMPACTARLO          *
//**********************************************************************
//PHF35P0E EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASPAS2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASTMN2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF04T13),DISP=SHR
//**********************************************************************
//*                       --    SORT  --                               *
//* PASO PHF35P0J                                                      *
//* OBJETIVO: SORT PARA LA UNION DE ARCHIVOS SIASTMN2 BP Y CB-EDVALCA- *
//*  EL ARCHIVO SE TRANSMITE COMO: SIASTMNV, EN CBSTCD04               *
//**********************************************************************
//PHF35P0J EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASTMN2,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MDC.E&EMP..SIASTMN3,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASTMNV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF35T0D),DISP=SHR
//*
//**********************************************************************
//*                       --    SORT  --                               *
//* PASO PHF35P0K                                                      *
//* OBJETIVO: SORT PARA LA GENERACION DEL NUEVO ARCHIVO RECORTADO      *
//*           ENVIADO AL SAMM                                          *
//**********************************************************************
//PHF35P0K EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASTMNV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.OTR.E&EMP..SIASTYF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=146,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF35T0K),DISP=SHR
//*
//**********************************************************************
//*
