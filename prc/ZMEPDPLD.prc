//ZMEPDPLD PROC
//*--------------------------------------------------------------------*
//* REALIZO  : CAMACHO (ACCENTURE)                                     *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*   MARCA      AUTOR   FECHA     DESCRIPCION                         *
//*------------ ------- -------  ------------------------------------- *
//*CAMACHO-INI  HECTOR  30/11/18 SE AGREGA EL ARCHIVO PARA PLD PARA    *
//*CAMACHO-FIN  CAMACHO          DAR EL CAPITAL DE CADA MERCADO        *
//*---------------------------------------------------------------------
//*    RRT-INI  XM06657 04/12/18 SE MODIFICA LONG DE ARCHIVO PORQUè SE *
//*    RRT-FIN                   AGREGARON NUEVOS MERCADOS             *
//*---------------------------------------------------------------------
//PDV14PLD EXEC PGM=IKJEFT01
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.DATAMART.PLD1,DISP=SHR
//*
//ZMPDPLDS DD DSN=MXC&AMB..ZM.FIX.F&FECHA..DATAMART.PLD,
//            DISP=(NEW,CATLG,DELETE),
//*RRT-INI
//*            DCB=(LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=284,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*RRT-FIN
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
