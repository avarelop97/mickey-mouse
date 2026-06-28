//ZMASCN01 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : BTRADER.                                            *
//* PROCESO      : ZMASCN01.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : OPERAS DE CPA/VTA BTRADER.                    í     *
//* REALIZO      : ROG.                                                *
//* FECHA        : 09 DE MARZO 2020.                                   *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PCN01P04.                                             *
//* UTILERIA   : IKJEFT01/ZM4SCN02.                                    *
//* OBJETIVO   : GENERAR ARCHIVO OPERAS DE CPA/VTA BTRADER.            *
//*--------------------------------------------------------------------*
//PCN01P04 EXEC PGM=IKJEFT01
//*
//ZMDSAL11 DD DSN=MXCP.ZM.FIX.BNET09.AAPPNN1.SALI02,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(DSORG=PS,LRECL=291,BLKSIZE=0,RECFM=FB),
//            DCB=(DSORG=PS,LRECL=311,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(3000,1500),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLASCN01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PCN01P03.                                             *
//* UTILERIA   : IKJEFT01/ZM4SCN03.                                    *
//* OBJETIVO   : GENERAR ARCHIVO OPERAS DE CPA/VTA BTRADER.            *
//*--------------------------------------------------------------------*
//PCN01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDSAL11 DD DSN=MXCP.ZM.FIX.BNET09.AAPPNN1.SALI03,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(DSORG=PS,LRECL=291,BLKSIZE=0,RECFM=FB),
//            DCB=(DSORG=PS,LRECL=311,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(3000,1500),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLASCN03),DISP=SHR
//*
//**********************************************************************
//* PASO       : PCN01P02                                              *
//* PROGRAMA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA MERGE DE LA CONCILIACION SIVA-MUV PARA EXCEL  *
//**********************************************************************
//PCN01P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.BNET09.AAPPNN1.SALI02,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.BNET09.AAPPNN1.SALI03,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.BNET09.AAPPNN1.SALI.UNI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=291,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=311,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(3000,1500),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLASCN04),DISP=SHR
//*
//**********************************************************************
//* PASO     : PCN01P01                                                *
//* OBJETIVO : ORDENA ARCHIVO OPERAS DE CPA/VTA BTRADER.               *
//* UTILERIA : ICEMAN                                                  *
//**********************************************************************
//PCN01P01 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601766 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.BNET09.AAPPNN1.SALI.UNI,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.BNET09.AAPPNN1.BTRADER,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(3000,1500),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLASCN02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMASCN01                        *
//*--------------------------------------------------------------------*
