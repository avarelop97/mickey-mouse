//ZMULPP04 PROC EMP=,SUC=,INT1=,INT2=
//*
//*******************************************************************
//*   RECEPCION DE PARAMETROS
//*******************************************************************
//PUL04P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.ZMULPE04,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*                    -- ZM4MU002  --                                 *
//*        REIMPRESION NORMAL DE ESTADOS DE CUENTA                     *
//**********************************************************************
//PUL04P03 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.ZMULPE04,DISP=SHR
//ZMU002E1 DD DISP=SHR,DSN=&INT2
//ZMU002C1 DD DUMMY
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOSCTA.FIS.UL04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOSCTA.MOR.UL04,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL04T01),DISP=SHR
//*
//**********************************************************************
//*                         -- ZM4DG001 --                             *
//*  OBJETIVO :                                                        *
//*    GRABA LOS PARAMETROS ENVIADOS DE LA LINEA EN LA 'T54' DE PARAM  *
//*    PARA PERMITIR RE-SUBMITIR EL PROC EN CASO DE CODIGO 20 EN EL    *
//*    PASO ANTERIOR                                                   *
//*                                                                    *
//**********************************************************************
//PUL04P02 EXEC PGM=IKJEFT01,COND=(20,NE,PUL04P03)
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.ZMULPE04,DISP=SHR
//SYSTSPRT DD DUMMY
//SYSPRINT DD DUMMY
//SYSOUT   DD DUMMY
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL04T02),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PUL04P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXEIN_IN_OK WDATE',
//         COND=(0,NE)
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
