//ZMJFPD66 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                           *
//* PROCESO      : ZMJFPD66.                                           *
//* OBJETIVO     :                                                     *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//**********************************************************************
//*   OBJETIVO: GENERAR ARCHIVO CASCARON VACIO                         *
//*   PROGRAMA: ICEGENER                                               *
//**********************************************************************
//ZJCON001  EXEC PGM=ICEGENER
//SYSUT1  DD DSN=NULLFILE,
//           DCB=(RECFM=FB,LRECL=160)
//SYSUT2  DD DSN=MXCP.ZM.FIX.BNCCONMD.CBJFCD59,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(5,5),RLSE),
//            DCB=(LRECL=160,BLKSIZE=0,RECFM=FB,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//**********************************************************************
//*   OBJETIVO: GENERAR ARCHIVO CASCARON VACIO                         *
//*   PROGRAMA: ICEGENER                                               *
//**********************************************************************
//ZJCON002  EXEC PGM=ICEGENER,COND=(4,LE)
//SYSUT1  DD DSN=NULLFILE,
//           DCB=(RECFM=FB,LRECL=162)
//SYSUT2  DD DSN=MXCP.ZM.FIX.BNCCONFV.CBJFCD60,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(5,2),RLSE),
//            DCB=(LRECL=162,BLKSIZE=0,RECFM=FB,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//**********************************************************************
//*   OBJETIVO: GENERAR ARCHIVO CASCARON VACIO                         *
//*   PROGRAMA: ICEGENER                                               *
//**********************************************************************
//ZJCON003  EXEC PGM=ICEGENER,COND=(4,LE)
//SYSUT1  DD DSN=NULLFILE,
//           DCB=(RECFM=FB,LRECL=219)
//SYSUT2  DD DSN=MXCP.ZM.FIX.ECBP.CFDI.MENSUAL.GIIN1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=219,BLKSIZE=0,RECFM=FB,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//**********************************************************************
//
//**********************************************************************
//*                 F  I  N                                            *
//**********************************************************************
