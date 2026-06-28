//ZMSFPD23 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - HERMES.                                        *
//* PROCESO      : ZMSFPD23.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : GENERA EL ARCHIVO CORESPONDIENTE A US PERSON        *
//*                PENDIENTE DE DOCUMENTAR.                            *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 12 DE MARZO DE 2013.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PSF23P03.                                             *
//* UTILERIA   : ICEGENER.                                             *
//* OBJETIVO   : COPIA DEL ARCHIVO MXC&AMB..ZM.FIX.LAR.SIVALAVL        *
//*              A                 MXB&AMB..TI.FIX.E11841.HN000018.    *
//*--------------------------------------------------------------------*
//PSF23P03 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.LAR.SIVALAVL,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXB&AMB..TI.FIX.E11841.HN000018,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=159,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PSF23P02.                                             *
//* UTILERIA   : ICEGENER.                                             *
//* OBJETIVO   : COPIA DEL ARCHIVO MXC&AMB..ZM.FIX.LAR.COTROLVL        *
//*              A                 MXB&AMB..TI.FIX.E11841.HN000019.    *
//*--------------------------------------------------------------------*
//PSF23P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.LAR.COTROLVL,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXB&AMB..TI.FIX.E11841.HN000019,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=080,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PSF23P01.                                             *
//* UTILERIA   : ICEGENER.                                             *
//* OBJETIVO   : COPIA DEL ARCHIVO MXC&AMB..ZM.FIX.LAR.RECHALVL        *
//*              A                 MXB&AMB..TI.FIX.E11841.HN000020.    *
//*--------------------------------------------------------------------*
//PSF23P01 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.LAR.RECHALVL,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXB&AMB..TI.FIX.E11841.HN000020,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=034,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMSFPD23                        *
//*--------------------------------------------------------------------*
