//ZMHOPE98 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - MUV                                            *
//* PROCESO      : ZMHOPE98.                                           *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : GRABAR EN LA TABLA ZMDT107 REGIS DEL ARCHIVO ENTRADA*
//*                'MXCP.ZM.FIX.HSO.ZMHOPE98.OPERA' FB, 242 LONG.      *
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
//ZHO98T30 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.HSO.ZMHOPE98.PAR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : COPIA  ARCHIVO PONIENDO RECORD FORMAT EN FB EN LA SALIDA*
//**********************************************************************
//ZHO98T15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.HSO.ZMHOPE98.OPERA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.HSO.ZMHOPE98.ZMDT107,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=242,BLKSIZE=0),
//            SPACE=(CYL,(1000,200),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHO99T30),DISP=SHR
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4HSO99                                     *
//* OBJETIVO   : GRABA EN LA TABLA ZMDT107 LOS REGISTROS DE ENTRADA    *
//**********************************************************************
//ZHO98T10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZHSO99E1 DD DSN=MXCP.ZM.FIX.HSO.ZMHOPE98.ZMDT107,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHO99T20),DISP=SHR
//*
//**********************************************************************
//*                    TERMINA ZMHOPE98
//**********************************************************************
