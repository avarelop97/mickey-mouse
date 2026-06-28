//ZMHCPD65 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMHCPD65                                                *
//*                                                                    *
//* OBJETIVO : GENERA Y TRANSFIERE ARCHIVO DE OPERACION AUTOMATICA A LA*
//*            RUTA \\plafs02\b_pla005\codir\SICOR_RV\SIVA\            *
//*            "OPERAUTOMINTRA".                                       *
//*                                                                    *
//* REALIZO  : FSW-TECNOCOM                                            *
//*                                                                    *
//* FECHA    : 26-FEBRERO-2013.                                        *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                       LOG DE MODIFICACIONES                        *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR     FECHA              DESCRIPCION              *
//* ----------- --------  -------  ------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PHD65P02                                                *
//* PROGRAMA : IKJEFT01/ZM4DHV75                                       *
//* FUNCION  : GENERAR ARCHIVO DE LA OPERACION AUTOMATICA.             *
//*--------------------------------------------------------------------*
//PHD65P02 EXEC PGM=IKJEFT01
//*
//ZMOH75A1 DD DSN=MXCP.ZM.FIX.ARCMURX.AUTINTRA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=225,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC65P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PHD65P01                                                 *
//* UTILERIA: DMBATCH                                                  *
//* OBJETIVO: ACTIVA LA CONDICION EN CONTROLM PARA REALIZAR LA         *
//*           TRANSFERENCIA DEL ARCHIVO DE OPERACION AUTOMATICA        *
//*           INTRADIA                                                 *
//*--------------------------------------------------------------------*
//PHD65P01 EXEC PGM=CTMCND,PARM='ADD COND     CBHCND65_OK    WDATE',
//         COND=(2,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMHCPD65                           *
//*--------------------------------------------------------------------*
