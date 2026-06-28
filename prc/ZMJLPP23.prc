//**********************************************************************
//ZMJLPP23 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                        >>>>  TESORERIA   <<<<                      *
//*                                                                    *
//* PROCESO        :  ACTUALIZACION DE LEYENDAS PARA IMPRESION         *
//*                   DE PROEMIO DE ALTA DE CONTRATO DE BANCA          *
//*                   PATRIMONIAL (SOCIEDADES DE INVERSION)            *
//*                   OPCION=286                                       *
//*                                                                    *
//* OBJETIVO       :  ENVIO DE MUESTRA DE ACUSE DE PROSPECTOS          *
//*                   SOCIEDADES DE INVERSION PARA PERSONAS MORALES    *
//*                   Y FISICAS A SERVIDOR.                            *
//*                                                                    *
//* DESPUES DE     :  SIVAXACU                                         *
//* ANTES          :  ZMJLPE23                                         *
//*                                                                    *
//* REALIZO        :  AGR (AZERTIA)                                    *
//* FECHA          :  JUNIO  / 2007                                    *
//* MODIFICA       :  OSCAR URBANO F.(AZERTIA).                        *
//* FECHA          :  OCTUBRE 2008.                                    *
//**********************************************************************
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS EN LINEA Y LOS GRABA  *
//*               EN ARCHIVO SEC. ARCHIVO.                             *
//*                                                          ZM3DG001  *
//**********************************************************************
//PJL23P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE23,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PJL23P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXACU_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
