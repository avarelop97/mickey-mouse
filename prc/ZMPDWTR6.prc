//ZMPDWTR6  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMPDWTR6                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* ACTUALIZACION DE DATOS DE ALARMAS DE CLIENTES BURSATILES           *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*00240002
//*====================================================================*
//* PASO     : PWT06P05                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA.                             *
//*====================================================================*
//PWT06P02 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PWT06P02,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMPDWTR6.ALIASBTR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZWT06T02),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : PWT04P00                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4BTR01                                        *00240002
//* OBJETIVO: ACTUALIZACION DE DATOS DE ALIAS BTRADER                  *00240002
//*--------------------------------------------------------------------*
//PWT06P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ZMPDWTR6.ALIASBTR,
//            DISP=SHR
//SALIDA01 DD DSN=MXCP.ZM.FIX.ZMPDWTR6.ZMDT780.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=77,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWT06T03),DISP=SHR                   01230041
//*--------------------------------------------------------------------*00240002
//* PASO    : PWT04P00                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4BTR01                                        *00240002
//* OBJETIVO: ACTUALIZACION DE DATOS DE ALIAS BTRADER                  *00240002
//*--------------------------------------------------------------------*
//PWT06P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ZMPDWTR6.ALIASBTR,
//            DISP=SHR
//SALIDA01 DD DSN=MXCP.ZM.FIX.ZMPDWTR6.SALIDA1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=77,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWT06T01),DISP=SHR                   01230041
