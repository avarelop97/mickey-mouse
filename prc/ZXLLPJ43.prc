//ZXLLPJ43 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM SISTEMA INTEGRAL DE VALORES                      *
//* PROCESO      : ZXLLPJ43                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : GENERA ARCHIVO DE PARAMETROS PARA REPORTE DE        *
//*                POSICION CON FILTROS OPCION 119. ADICIONA --        *
//*                CONDICION DE ARRANQUE                               *
//* REALIZO      : FSW-DGCM (XM26224)                                  *
//* FECHA        : 27 AGOSTO 2013                                      *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* @XXXXXXXXXX  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO     : PLL43P02                                                *
//* UTILERIA : ZM3DG001                                                *
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS   *
//*            GRABA EN ARCHIVO SECUENCIAL                             *
//*--------------------------------------------------------------------*
//*
//PLL43P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZXLLPJ43,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PLL39P01                                                *
//* UTILERIA : CTMCND                                                  *
//* OBJETIVO : ACTIVA CONDICION EN CONTROL-M                           *
//*--------------------------------------------------------------------*
//*
//PLL39P01 EXEC PGM=CTMCND,
//         PARM='ADD COND CBLLPJ43_IN_PR_OK WDATE',COND=(4,LT)
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
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZXLLPJ43                        *
//*--------------------------------------------------------------------*
