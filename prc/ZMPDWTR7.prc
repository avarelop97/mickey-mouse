//ZMPDWTR7  PROC
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMPDWTR6                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERACION DE ARCHIVO DE CLIENTES PARA CRM (CAMPANIA CONTRATACION) *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO     : PWT07P05                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA CLIENTES PROPUESTOS                *
//*====================================================================*
//PWT07P05 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PWT07P05,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMPDWTR7.UNLOAD1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZWT07T03),DISP=SHR
//*====================================================================*
//* PASO     : PWT07P04                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PDV ASESORADOS AGRESIVOS           *
//*====================================================================*
//PWT07P04 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PWT07P04,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMPDWTR7.UNLOAD2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZWT07T02),DISP=SHR
//*--------------------------------------------------------------------*
//* PROGRAMA: IKJEFT01/ZM3PPG32                                        *
//* OBJETIVO: GENERA ARCHIVO CON FECHA ODATE RECIBIDA DEL JCL          *
//*--------------------------------------------------------------------*
//PWT07PP4 EXEC PGM=ZM3BTR01,PARM='&FECHA',COND=(4,LT)
//*
//ZM3BTRS1 DD DSN=MXCP.ZM.FIX.ZMPDWTR7.FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=08,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*====================================================================*
//* PASO    : PWT07P03                                                 *
//* UTIL/PGM: IKJEFT01/ZM4BTR20                                        *
//* OBJETIVO: GENERA ARCHIVO DE CLIENTES AGRESIVOS EN PDV VALIDANDO SU *
//*           MONTO DE INVERSION EN CAPITALES, EXCEPTO EN OBLIGACIONES *
//*====================================================================*
//PWT07P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ENTRADA1 DD DSN=MXCP.ZM.FIX.ZMPDWTR7.ENTRADA1,
//ZM4BTRE1 DD DSN=MXCP.ZM.FIX.ZMPDWTR7.UNLOAD2,
//            DISP=SHR
//ZM4BTRE2 DD DSN=MXCP.ZM.FIX.ZMPDWTR7.FECHA,
//            DISP=SHR
//ZM4BTRS1 DD DSN=MXCP.ZM.FIX.ZMPDWTR7.CLIENTES.MINIMOS.SAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=08,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWT07T10),DISP=SHR
//*
//*====================================================================*
//* PASO    : PWT07P02                                                 *
//* UTIL/PGM: ICEMAN                                                   *
//* OBJETIVO: GENERA ARCHIVO CON TOTAL DE CLIENTES COMO PROSPECTOS PARA*
//*           BTRADER GLOMO, QUITANDO DUPLICADOS                       *
//*====================================================================*
//PWT07P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMPDWTR7.UNLOAD1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZMPDWTR7.CLIENTES.MINIMOS.SAL,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMPDWTR7.SAL.BTRADER.CRM.TOTAL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(400,200),RLSE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=08,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZWT07T12),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*====================================================================*
//* PASO    : PWT04P00                                                 *
//* UTIL/PGM: IKJEFT01/ZM4BTR11                                        *
//* OBJETIVO: GENERA ARCHIVO PARA CRM                                  *
//*====================================================================*
//PWT07P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ENTRADA1 DD DSN=MXCP.ZM.FIX.ZMPDWTR7.ENTRADA1,
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ZMPDWTR7.SAL.BTRADER.CRM.TOTAL,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.ZMPDWTR7.FECHA,
//            DISP=SHR
//SALIDA01 DD DSN=MXCP.ZM.FIX.ZMPDWTR7.SALIDA.BTRADER.CRM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=57,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWT07T00),DISP=SHR
//*====================================================================*
//*                        Z M P D W T R 7                             *
//*====================================================================*
