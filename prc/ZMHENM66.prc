//ZMHENM66 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - INPC DIARIO                                    *
//* PROCESO      : ZMHENM66.                                           *
//* PERIODICIDAD : A PETICION DEL USUARIO                              *
//* OBJETIVO     : CARGA DE ARCHIVO A PETICION DEL USUARIO             *
//* AUTOR        : ACCENTURE , ENERO 2016                              *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//**********************************************************************
//* SORT : DEL ARCHIVO DE AJ PARA DEJARJO COMO MXP                     *
//**********************************************************************
//PHE66P02 EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MBVP.AJ.FIX.INPC.MENSUAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.INPC.MENSUAL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            RECFM=FB,LRECL=68,BLKSIZE=0,
//            SPACE=(CYL,(4,2),RLSE)
//*           BUFNO=30
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHE66T02),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : PHE66P01.                                             *
//* UTILERIA   : ZM4INPC1.                                             *
//* OBJETIVO   : REALIZA LA CARGA DEL ARCHIVO                          *
//*--------------------------------------------------------------------*
//PHE66P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMINPCA1 DD DSN=MXCP.ZM.FIX.INPC.MENSUAL,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE66T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN DEL PROCESO ZMHENM66                     *
//*--------------------------------------------------------------------*
