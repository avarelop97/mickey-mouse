//ZMEGPM01  PROC
//**********************************************************************
//* SISTEMA  : ZM - ATENCION MEJORAS SIVA-DECALOG FASE II EVENTUAL     *
//*            ODT35                                                   *
//* PROCESO  : ZMEGPM01                                                *
//* PERIODIC : N/A                                                     *
//* OBJETIVO : GENERA INFORMACION DE CUSTODIA INTERNACIONAL            *
//* FECHA    : 01 DE OCTUBRE DE 2014                                   *
//* AUTHOR   : CDA-INFORMATICA   (XMCH019)                             *
//*====================================================================*
//*                      LOG DE MODIFICACIONES                         *
//*====================================================================*
//*    MARCA     AUTOR   FECHA  DESCRIPCION                            *
//* ----------- ------- ------- -------------------------------------- *
//* FS-1.1.0-01 XXXXXXX  DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXX          *
//* ----------- ------- ------- -------------------------------------- *
//* FS-1.1.0-02 XM26181  17OCT18-SE AGREGA NUEVO PASO Y MOD. ARCHIVO.  *
//*====================================================================*
//*
//*--------------------------------------------------------------------*
//* PASO         : PEG01P10                                            *
//* PROGRAMA     : IKJEFT01 (ZM4DQQ11)                                 *
//* DESCRIPCION  : GENERA ARCHIVO CON INFORMACION DE CUSTODIA          *
//*                INTERNACIONAL PARA CNBV                             *
//*--------------------------------------------------------------------*
//PEG01P10 EXEC PGM=IKJEFT01
//*
//ZDQQ11A1 DD DSN=MXCP.ZM.FIX.CTE.CTD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=131,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,100),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZEG01T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO         : PEG01P05                                            *
//* PROGRAMA     : ICEMAN                                              *
//* DESCRIPCION  : SE REALIZA SORT AL ARCHIVO CON INFORMACION DE       *
//*                CUSTODIA INTERNACIONAL PARA CNBV                    *
//*--------------------------------------------------------------------*
//PEG01P05 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CTE.CTD,DISP=SHR
//*
//*FS-1.1.0-02-I
//*SORTOUT  DD DSN=MXCP.ZM.FIX.CTE.CTD.SORT,
//SORTOUT  DD DSN=MXCP.ZM.FIX.CTE.CTD.SORT1,
//*FS-1.1.0-02-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=131,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZEG01T05),DISP=SHR
//*
//*FS-1.1.0-02-I
//*--------------------------------------------------------------------*
//* PASO       : PEG01P04.                                             *
//* UTILERIA   : ZM3DQQ12.                                             *
//* OBJETIVO   : REALIZA LA CONCATENACION DE REPORTOS Y DIRECTOS CON EL*
//*              MISMO TIPO DE VALORES: CONTRATO, EMISORA, SERIE, ISIN,*
//*              SUMA LOS TITULOS Y VALOR RAZONABLE EN UN SOLO REGISTRO*
//*--------------------------------------------------------------------*
//PEG01P04 EXEC PGM=ZM3DQQ12,COND=(4,LT)
//*
//E1ZMCTD1 DD DSN=MXCP.ZM.FIX.CTE.CTD.SORT1,
//            DISP=SHR
//*
//S1ZMCTD1 DD DSN=MXCP.ZM.FIX.CTE.CTD.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(100,100),RLSE),
//            DCB=(LRECL=131,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//*FS-1.1.0-02-F
//*--------------------------------------------------------------------*
//* PASO         : PEG01P01                                            *
//* PROGRAMA     : ICEGENER                                            *
//* DESCRIPCION  : SE REALIZA RESPALDO AL ARCHIVO CON INFORMACION DE   *
//*                CUSTODIA INTERNACIONAL PARA CNBV                    *
//*--------------------------------------------------------------------*
//PEG01P01 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.CTE.CTD.SORT,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.GDGD.CTE.CTD(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,LRECL=131,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,100),RLSE)
//*
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//*
