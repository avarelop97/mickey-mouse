//ZMJLPEA4 PROC
//*********************************************************************
//*                     C A S A   D E   B O L S A                     *
//*                     =========================                     *
//*                    << MERCADO DE CAPITALES >>                     *
//*                                                                   *
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  *
//*                                                                   *
//*   JCL              :  SIVAXAP4                                    *
//*                                                                   *
//*   CADENA           :  OPCION ZA3 -> JCL SIVAXAPM -> PRC ZMJLPEA4  *
//*                                                                   *
//*   OBJETIVO         :  RECOLECCION DE INFORMACION DE ACCIONES      *
//*                       PROPIAS DE DIFERENTES MODULOS               *
//*                                                                   *
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION ZA1 P/USUARIO     *
//*                                                                   *
//*   CORRE ANTES   DE :  NINGUNO                                     *
//*                                                                   *
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      *
//*                                                                   *
//*   ELABORADO POR    :  JOSE LUIS GUTIERREZ ORTEGA                  *
//*                                                                   *
//*   FECHA            :  NOVIEMBRE/ 2006                             *
//*                                                                   *
//*********************************************************************
//*  PASO: 01    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*              EN ARCHIVO SECUENCIAL                                *
//*  SECUENCIA: 1                                           ZM3DG001  *
//*********************************************************************
//PJLA4P01 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.ZMJLPEAB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//**********************************************************************
//*  PASO: 02     REALIZA LA EXTRACCION DE LAS OPERACIONES DE          *
//*               SOCIEDADES DE INVERSION                              *
//*  PJLA4P02                          SIVA MUV             ZM4DJA03   *
//**********************************************************************
//PJLA4P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJA02E1 DD DSN=MXCP.ZM.TMP.TES.ZMJLPEAB,DISP=SHR
//ZMJA02A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA4.VH,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=110,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(5,10),RLSE)
//*
//ZMJA02A2 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA4.VN,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=110,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(5,10),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA4T02),DISP=SHR
//*
//**********************************************************************
//*  PASO: 03     LEE ARCHIVO E INSERTA REGISTROS A LA TABLA ZMDT841   *
//*               SOCIEDADES DE INVERSION                              *
//*  PJLA4P03                          SIVA MUV             ZM4DJB31   *
//**********************************************************************
//PJLA4P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJB31A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA4.VH,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA4T05),DISP=SHR
//*
//**********************************************************************
//*  PASO: 04     INSERTA MOVIMIENTOS DE CRUCE A LA TABLA ZMDT841      *
//*               SOCIEDADES DE INVERSION                              *
//*  PJLA4P04                          SIVA MUV             ZM4DJB32   *
//**********************************************************************
//PJLA4P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA4T06),DISP=SHR
//*
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-D                       *
//**********************************************************************
//PJLA7P0B EXEC  PGM=CTMCND,PARM='ADD COND CBJLNEA4_IN_OK WDATE',
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
//*
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-D                       *
//**********************************************************************
//PJLA7P0C EXEC  PGM=CTMCND,PARM='ADD COND CBJLNEB1_IN_OK WDATE',
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
//*
