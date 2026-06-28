//BCPDRE10  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : BCPDRE10                                             *
//*____________________________________________________________________*
//*                                                                    *
//* AUTOR       : ACCENTURE (HECTOR CAMACHO GONZALEZ)                  *
//* FECHA       : MARZO  2016.                                         *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* PROCESO QUE REALIZA LA UNION DE MERCADOS Y GENERA EL ARCHIVO       *
//* FINAL DEL PROCESO IRENE 2.0                                        *
//*                                                                    *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//* PASO     : PHC00050                                                *
//* PROGRAMA : IKJEFT01                                                *
//* OBJETIVO : PROCESO QUE REALIZA LA UNION DE LOS MERCADOS            *
//*====================================================================*
//PHC00050 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.CEDES.F&FECHA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.CONTR.F&FECHA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.PAGAR.F&FECHA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.CAPIT.F&FECHA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.DINER.F&FECHA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.OBLIG.F&FECHA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.REVAR.F&FECHA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.FONDE.F&FECHA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.NOTES.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.IRENED.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=140,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCIRE10),DISP=SHR                   01230041
//**********************************************************************
//*  OBJETIVO : ORDENA ARCHIVO QUE TIENE LA UNION DE LOS MERCADOS,     *
//*  ESTE ORDENAMIENTO SE HACE POR CODIGO DE USUARIO                   *
//**********************************************************************
//PHC00049 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.IRENED.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.IRENES.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=140,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHCIRE11),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO    : PHC00048                                                 *
//* OBJETIVO: LEE ARCHIVO DE SEGURIDAD Y PEGA EL CAMPO NB_ZONA EN EL   *
//*           ARCHIVO FINAL DE IRENE                                   *
//*--------------------------------------------------------------------*
//PHC00048 EXEC PGM=ZM3CIRE1,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MBVP.ZM.FIX.SEGURID.FSORT,
//            DISP=SHR
//*
//ENTRADA2 DD DSN=MXC&AMB..ZM.FIX.IRENES.F&FECHA,
//            DISP=SHR
//*
//SALIDA1  DD DSN=MXC&AMB..ZM.FIX.IRENE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(LRECL=131,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXC&AMB..ZM.FIX.INIREN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(LRECL=138,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*====================================================================*
//*         F I N    D E L    P R O C E S O                            *
//* ELABORO : ACCENTURE (HECTOR CAMACHO GONZALEZ)                      *
//*====================================================================*
