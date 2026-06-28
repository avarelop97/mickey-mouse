//MZMPP145 PROC
//**********************************************************************
//* PROCESO        : MZMPP145                                          *
//* APLICATIVO     : SINCRONIZACION DE UG'S                            *
//* DESCRIPCION    : RUTEADOR2 DE PROCESOS DE SINCRO A SUITABILITY     *
//* REALIZO        : DYD VALORES BANCA PATRIMONIAL                     *
//* FECHA          : 12 DE JULIO DE 2012                               *
//* CTRL-M         : CONDICIONES ARRANQUE CBUDND41_OK INITNOLINEA      *
//*                  CORRE CUANDO SE ACTIVA CICSSIVA                   *
//* OBJETIVO       : DISPARA EL PROCESO DE SUITABILITY AUN CUANDO NO SE*
//*                  HA PROCESADO SINCRONIZACION.                      *
//*                  REVISA EL FICHERO DE AVISOS Y DETECTA SI YA SE PRO*
//*                  PROCESO SINCRO, PARA EVITAR DUPLICAR LA CONDICION *
//* PERIODICIDAD   : DIARIO                                            *
//**********************************************************************
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA              DESCRIPCION              *
//* ----------- --------- ------- ------------------------------------ *
//* DYD1.0.0-01 XM07591   12JUL12 RUTEADOR-2 DE PROCESOS SINCRO A SUITA*
//*            *         *       *                                     *
//**********************************************************************
//*
//**********************************************************************
//* PASO    : MZP14505                                                 *
//* OBJETIVO: GENERA FICHERO DE AVISO CUANDO SINCRO2 TIENE AVISO SI    *
//* PROGRAMA: ICEMAN / UTILITY                                         *
//**********************************************************************
//MZP14505 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.RUTEADOR.SINCRO2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.RUTEADOR.SINCRO3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=17,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//**********************************************************************
//* PASO    : MZP14504                                                 *
//* OBJETIVO: VERIFICA QUE FICHERO SINCRO3 TENGA INFORMACION           *
//* PROGRAMA: IDCAMS / UTILITY                                         *
//**********************************************************************
//MZP14504 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//INPUT1   DD DSN=MXCP.ZM.FIX.RUTEADOR.SINCRO3,
//            DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : MZP14503                                                 *
//* OBJETIVO: BORRA FICHERO A CREAR EN EL SIGUIENTE PASO               *
//* PROGRAMA: IDCAMS / UTILITY                                         *
//**********************************************************************
//MZP14503 EXEC PGM=IDCAMS,COND=(1,EQ,MZP14504)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//**********************************************************************
//* PASO    : MZP14502                                                 *
//* OBJETIVO: GENERA FICHERO DE AVISOS CON NO PARA SIGUIENTES PROCESOS *
//* PROGRAMA: ICEMAN / UTILITY                                         *
//**********************************************************************
//MZP14502 EXEC PGM=ICEMAN,COND=(1,EQ,MZP14504)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.RUTEADOR.SINCRO1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.RUTEADOR.SINCRO2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=17,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO     : MZP14501                                                *
//* OBJETIVO : ADICIONA CONDICION PARA INICIO PROCESO SUITABILITY      *
//* PROGRAMA : CTMCND                                                  *
//**********************************************************************
//MZP14501 EXEC PGM=CTMCND,PARM='ADD COND MZMN0155_OK WDATE',
//            COND=(0,EQ,MZP14504)
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
//**********************************************************************
//*    FINAL DEL PROCEDIMIENTO                                         *
//**********************************************************************
