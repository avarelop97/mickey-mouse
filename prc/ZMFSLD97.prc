//ZMFSLD97 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FACTSET.                                       *
//* PROCESO      : ZMFSLD97.                                           *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : GRABAR EN LA TABLA PARAM FST REGISTROS DEL ARCH. ENT*
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
//ZFS97T20 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.FSC.ZMFSLD97.PARLINEA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSC97                                     *
//* OBJETIVO   : ACTUALIZA/INSERTA REGISTROS PARAM 'FTS'               *
//**********************************************************************
//ZFS97T10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUL97E1 DD DSN=MXCP.ZM.FIX.FSC.ZMFSLD97.PARAM.ARC,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS97T20),DISP=SHR
//*
//**********************************************************************
//*                    TERMINA ZMFSLD97
//**********************************************************************
