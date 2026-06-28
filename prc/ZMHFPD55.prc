//ZMHFPD55 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : PROTOCOLO FINANCIERO PLUS.                          *
//* PROCESO      : ZMHFPD55.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : TRANSFIERE EL ARCHIVO DE TOTALES DE LAS OPERACIONES *
//*                DIFO GENERADO A TRAVES DE  LA OPC 99001 JCL=SIVAXPA5*
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 03 DE JULIO DE 2013.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PHF55P01.                                             *
//* UTILERIA   : ZM4DHH30/IKJEFT01.                                    *
//* OBJETIVO   : GENERAR UN ARCHIVO CON LOS TOTALES DE LAS OPERACIONES *
//*              DIFO.                                                 *
//*--------------------------------------------------------------------*
//*
//PHF55P01 EXEC PGM=IKJEFT01
//*
//ZMG055A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHFPD55,
//            DISP=(SHR)
//ZMG060A1 DD DSN=MXCP.ZM.FIX.VAL.DIFO.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=085,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*                                                  00076000
//SYSPRINT DD SYSOUT=*                                                  00077000
//SYSTSPRT DD SYSOUT=*                                                  00078000
//SYSDBOUT DD SYSOUT=*                                                  00079000
//SYSABOUT DD SYSOUT=*                                                  00079100
//SYSUDUMP DD SYSOUT=*                                                  00079200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHF60P01),DISP=SHR                   00079302
//*
//*--------------------------------------------------------------------*
//*                 FIN DEL PROCESO ZMHFPD55                           *
//*--------------------------------------------------------------------*
