//ZMCFDI21  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMCFDI21                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERA ARCHIVO DE CANCELACION DE CONSTANCIA FISCAL PARA BANCA      *
//* PATRIMONIAL Y REPORTE DE CONSTANCIAS CANCELADAS.                   *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : ZHDI2102                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI01                                       *
//* OBJETIVO : GENERA ARCHIVO DE CANCELACION                           *
//*====================================================================*
//ZHDI2102 EXEC PGM=IKJEFT01                                            01151027
//*                                                                     01153001
//*SALIDA1  DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.CONSTF.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(50,10),RLSE),
//*            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//*            UNIT=3390
//*
//*SALIDA2  DD DSN=MXCP.ZM.FIX.EBCM.CIFRAS.CONTROL.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(50,10),RLSE),
//*            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//*            UNIT=3390
//*
//SALIDA3  DD DSN=MXCP.ZM.FIX.EBCM.DATOS.CANCELA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=221,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDI2102),DISP=SHR                   01230041
//*                                                                     01155001
//*--------------------------------------------------------------------*
//* PASO       : ZMCFD105.                                             *
//* OBJETIVO   : VALIDAR CONDICION A ELIMINAR                          *
//*--------------------------------------------------------------------*
//* IF (ZHDI2102.RC = 3) THEN
//*ZHDI2112 EXEC PGM=CTMCND,
//*          PARM='DELETE COND MXPCRP_BCTEND22_CO &DIA.&MES',
//*          COND=(4,LT)
//*
//*STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//*DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//*         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//*DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//*DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*PRTDBG   DD SYSOUT=*
//*SYSPRINT DD DUMMY
//*SYSUDUMP DD DUMMY
//*DAPRINT  DD SYSOUT=*
//*DACNDIN  DD DDNAME=SYSIN
//* ENDIF
//*====================================================================*
//* PASO     : ZHDI2101                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI07                                       *
//* OBJETIVO : GENERA REPORTE DE CONSTANCIAS CANCELADAS                *
//*====================================================================*
//ZHDI2101 EXEC PGM=IKJEFT01,COND=(04,LT)                               01151027
//*                                                                     01153001
//REPCOCA  DD DSN=MXCP.ZM.FIX.EBCM.REPCOCA.CONSTF.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDI2101),DISP=SHR                   01230041
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 2 5         *
//*====================================================================*
