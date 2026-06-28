//ZMLLPE07 PROC                                                         00040000
//********************************************************************* 00040000
//*   OBJETIVO: GENERAR REPORTE DE ISR PF Y PM                          00050000
//*   AREA    : MERCADO DE DINERO                                       00050000
//*   CUALQUIER ASUNTO RELACIONADO CON ESTE PROC COMUNICARSE A LA 3672  00050000
//**********************************************************************00003000
//*     ARCHIVO DE PARAMETROS                                           00003000
//**********************************************************************00003000
//PLL07P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE07,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************00003000
//*        MERCADO DE DINERO:    REPORTE DE I.S.R     BANCO             00060000
//********************************************************************* 00060000
//*
//PLL07P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//ZMLM55A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE07,DISP=SHR
//ZMLM55R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL07T02),DISP=SHR                   00300000
//*                                                                     00310000
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PLL07P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXISR_IN_SEP_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
