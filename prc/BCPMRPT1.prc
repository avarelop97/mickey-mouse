//BCPMRPT1 PROC
//**                                                                   *
//*--------------------------------------------------------------------*
//* OBJETIVO     : REPORTES DE TRASPASO DE TITULOS                     *
//* REALIZO      : HECTOR CAMACHO GONZALEZ (ACCENTURE)                 *
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA  DESCRIPCION                           *
//*------------ -------- ------- ------------------------------------- *
//*CAMACHO-INI  ACCENTURE 6NOV18 SE MODIFICA LONGITUD DE FICHERO DE    *
//*CAMACHO-FIN                   DE TRASPASO                           *
//*--------------------------------------------------------------------*
//*
//BCRPT110 EXEC PGM=IKJEFT01
//*
//BC20FME1 DD DSN=MXCP.ZM.FIX.BC.ZM4DTRAE,DISP=SHR
//*
//BC20FMS1 DD DSN=MXCP.ZM.FIX.BC.ZM4CRPT1.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*CAMACHO-INI
//            DCB=(RECFM=FB,LRECL=441,BLKSIZE=0,DSORG=PS)
//*CAMACHO-FIN
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(BCRPTC10),DISP=SHR
//*
