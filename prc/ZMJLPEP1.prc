//ZMJLPEP1 PROC
//*********************************************************************
//*                     C A S A   D E   B O L S A                     *
//*                     =========================                     *
//*                    << MERCADO DE CAPITALES >>                     *
//*                                                                   *
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  *
//*                                                                   *
//*   JCL              :  SIVAXAPM                                    *
//*                                                                   *
//*   CADENA           :  OPCION ZA1 -> JCL SIVAXAPM -> PRC ZMJLPEA1  *
//*                                                                   *
//*   OBJETIVO         :  RECOLECCION DE INFORMACION PARA DECALOG     *
//*                                                                   *
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION ZA1 P/USUARIO     *
//*                                                                   *
//*   CORRE ANTES   DE :  NINGUNO                                     *
//*                                                                   *
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      *
//*                                                                   *
//*   ELABORADO POR    :  MARLENE ZAMARRIPA ALVAREZ                   *
//*                                                                   *
//*   FECHA            :  DICIEMBRE/ 2015                             *
//*********************************************************************
//*                                                                   *
//*  PASO: 01    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*              EN ARCHIVO SECUENCIAL                                *
//*                                                                   *
//*  SECUENCIA: 1                                           ZM3DG001  *
//*                                                                   *
//*********************************************************************
//PJLA1P01 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.ECBP.SZPR.ZMJLPEA1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PJLA1P02 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXAPM_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*
