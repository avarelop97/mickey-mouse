//ZMPRC661 PROC
//**********************************************************************
//**********************************************************************
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//ZC661T11 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.CAM.ZMPRC661.PAR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*                                                                    *
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4MT661                                     *
//* OBJETIVO   : GENERA ARCHIVO PARA EL CAM DE LAS CUENTAS AFECTADAS   *
//**********************************************************************
//ZC661T00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMT661E1 DD DSN=MXCP.ZM.FIX.CAM.CUENTA.DIA15.AFECTADO,DISP=SHR
//*
//ZMT661S1 DD DSN=MXCP.ZM.FIX.CAM.ARCHIVO.CAM.CTA.AFECT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM66PC),DISP=SHR
//*
//**********************************************************************
//*                         TERMINA ZMPRC661                           *
//**********************************************************************
