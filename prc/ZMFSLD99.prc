//ZMFSLD99 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FACTSET.                                       *
//* PROCESO      : ZMFSLD99.                                           *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : GRABAR EN LA TABLA ZMDTHSE REGISTROS DEL ARCHIVO ENT*
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
//ZFS99T20 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.FSC.ZMFSLD99.PAR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4FSC99                                     *
//* OBJETIVO   : ACTUALIZA COSTO PROMEDIO PARA TITULO LIQUIDADOS PARA  *
//*              CAPITAL DE RENTA VARIABLE                             *
//**********************************************************************
//ZFS99T10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFS99T20),DISP=SHR
//*
//**********************************************************************
//*                    TERMINA ZMFSLD99
//**********************************************************************
