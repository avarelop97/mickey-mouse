//ZMPFID02 PROC FECHA=
//*******************************************************************
//*                                                                 *
//*   APLICACION:    SISTEMA ENVIO DE ALERTAS SMS & E-MAIL          *
//*                  AGOSTO 2008                                    *
//*                                                                 *
//*******************************************************************
//*******************************************************************
//*PROGRAMA : ZM4EJ805                                              *
//*FUNCION:   SEPARACION DE RESPUESTA DEL GESTOR DE EVENTOS PARA    *
//*           BANCA PATRIMONIAL                                     *
//*******************************************************************
//PMPFID02 EXEC PGM=IKJEFT01
//ZMJ805A1 DD DSN=MBVP.KZ.FIX.REPORTE.OPCP.F&FECHA,DISP=SHR
//ZMJ805A2 DD DSN=MXCP.ZM.FIX.EBCM.ZMPFID02.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(LRECL=2812,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZMCFID02),DISP=SHR
//*
//*******************************************************************
//* PROGRAMA: ZM4DGD06                                              *
//* FUNCION:  REPORTE DE ENVIO DE ALERTAS BANCOMER                  *
//*******************************************************************
//PMPFID01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDGD06A DD DSN=MBVP.KZ.FIX.REPORTE.OPCP.F&FECHA,DISP=SHR
//*
//ZMDGD06R DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCFID01),DISP=SHR
//*
//******************************************************************
//*                SE ADICIONA CONDICION                           *
//*                PARA QUE SEA TOMADA POR CTL-D                   *
//******************************************************************
//PMPFID00 EXEC  PGM=CTMCND,PARM='ADD COND BCJFID02_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//****************************************************************
//*        TERMINA PROCESO ZMPFID02 SIVA MULTIEMPRESA            *
//****************************************************************
