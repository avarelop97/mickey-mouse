//ZMUFPM21 PROC
//**********************************************************************
//*   APLICACION : MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO           *
//*                                                                    *
//*   REALIZACION : ALFREDO CORTES                                     *
//*                                                                    *
//*   FECHA:  03/MARZO/2012                                            *
//**********************************************************************
//*---------------------------------------------------------------------
//*        L O G    D E   M O D I F I C A C I O N E S                  -
//*---------------------------------------------------------------------
//* MARCA        AUTOR    FECHA            DESCRIPCION                 *
//*-----------  --------  -------  ------------------------------------*
//*DYD-1.0.0    DYD       MZO2012  NUEVO                               *
//**********************************************************************
//**********************************************************************
//* PASO     : PJT2101                                                 *
//* PROGRAMA : IKJEFT1A/ZM4EGG37                                       *
//* FUNCION  : SE CREA UN ARCHIVO CON ESTRATOS                         *
//**********************************************************************
//PJT2101  EXEC PGM=IKJEFT1A
//ZMEG37A1 DD DSN=MXCP.ZM.FIX.TES.ESTRATO.VALIDA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=83,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJT20T03),DISP=SHR
//*
