//ZMJLNEAG PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* JCL      : SIVAXVAF                                                *
//* PROCESO  : ZMJLNEAG                                                *
//*                                                                    *
//* OBJETIVO : GEBNERA CONDICIÓN PARA LA TRANSFERENCIA DE LOS PRECIOS  *
//*            DE COVAF DE SERVIDOR A HOST                             *
//* PERIODICIDAD: SE EJECUTA A PETICIóN DE USUARIO.                    *
//*                                                                    *
//* FECHA    : FEBRERO DE 2012                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//*        L O G    D E   M O D I F I C A C I O N E S
//**********************************************************************
//*  MARCA   AUTHOR  FECHA         DESCRIPCION
//*  -----   ------  -----         -----------------------
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PHF08T05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLNEAG,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*                                                                    *
//* PROGRAMA: ZM3PCB01                                                 *
//* FUNCION:  OPCIONES DE DESCARGA COVAF X CONTINGENCIA.              *
//*                                                                    *
//**********************************************************************
//PHF08T04 EXEC PGM=ZM3PCB02,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLNEAG,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************
//**********************************************************************
//* PROGRAMA: CTMCND                                                   *
//*           GENERA CONDICION PARA CONTROL M                          *
//*           TRANSFIERE ARCHIVO DE REPORTOS (NZMJLD3R)                *
//**********************************************************************
// IF  PHF08T04.RC EQ 03 THEN
//PHF08T03 EXEC PGM=CTMCND,PARM='ADD COND SIVAXVA3_IN_OK WDATE',
//          COND=(4,LT)
//*
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
// ENDIF
//*
//**********************************************************************
//* PROGRAMA: CTMCND                                                   *
//*           GENERA CONDICION PARA CONTROL M                          *
//*           TRANSFIERE ARCHIVO DE FACTORES (NZMJLD3F)                *
//**********************************************************************
// IF  PHF08T04.RC EQ 02 THEN
//PHF08T02 EXEC PGM=CTMCND,PARM='ADD COND SIVAXVA2_IN_OK WDATE',
//          COND=(4,LT)
//*
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
// ENDIF
//*
//**********************************************************************
//* PROGRAMA: CTMCND                                                   *
//*           GENERA CONDICION PARA CONTROL M                          *
//*           TRANSFIERE ARCHIVO DE PRECIOS ((NZMJLD32)                *
//**********************************************************************
// IF  PHF08T04.RC EQ 01 THEN
//PHF08T01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXVAF_IN_OK WDATE',
//          COND=(4,LT)
//*
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
// ENDIF
//*
//**********************************************************************
//*                     FIN DEL  PROCESO ZMHFNP08                      *
//**********************************************************************
