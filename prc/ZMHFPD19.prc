//ZMHFPD19 PROC
//**********************************************************************
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHFPD19                                         *
//*                                                                    *
//* OBJETIVO       :  PRENDE CONDICION PARA CONTROL-M PARA QUE DEPUES  *
//*                   SE EJECUTE EL JOB QUE REALIZA LA GENERACION DE   *
//*                   ARCHIVOS CON LOS MOVIMIENTOS, POSICION Y         *
//*                   CONCILIACION INICIO DE FIN DE DIA DE MERCADO DE  *
//*                   MERCADO DE CAPITALES  PARA SU ENVIO AL SISTEMA   *
//*                   SIRE.                                            *
//*                                                                    *
//* REALIZO        :  SWF - ACCENTURE - XM09317                        *
//*                                                                    *
//* FECHA          :  06 DE JULIO DEL 2010.                            *
//**********************************************************************
//*
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//*  PASO        : PHF19P01                                            *
//*  PROGRAMA    : ZM3DG001                                            *
//*  DESCRIPCION : GENERA EL ARCHIVO DE PARAMETROS                     *
//**********************************************************************
//PHF19P01 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMHFPD19,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//****************************************************************
//*        ADD COND PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PHF19P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXPPB_IN_OK WDATE',
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
//********************************************************************
//**              FIN DEL PROCEDIMIENTO ZMHFPD19                     *
//********************************************************************
