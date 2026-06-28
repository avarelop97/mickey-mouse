//ZMJLPP35 PROC
//*
//*********************************************************************
//* MENU DE CARGOS VARIOS OPC. 954.
//*********************************************************************
//* ZM4DGE51 : REPORTE DE CANCELACIONES DE INTERESES
//*            INDICATIVOS. CARGOS VARIOS *****DIARIO******
//*********************************************************************
//* NOTA:
//*  ESTE REPORTE QUEDA CONTROLADO CON UN SWITCH DE IMPRESION REGIS-
//*  TRADO EN LA TABLA PARAM CON ITIPOPAR = 'T47', IPARAM ='VIBE51D 01'
//*  Y EN DATOSPAR = 'X ... '  DONDE ,X=1 (SE IMPRIME) =0 (NO SE IMP)
//*
//* SI NO SE ENCUENTRA SE IMPRIME, ASUME QUE EL SWITCH ESTA ENCENDIDO.
//*******************************************************************
//*   RECEPCION DE PARAMETROS
//*******************************************************************
//PJL35P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.ZMJLPE35,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PJL35P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCAN_IN_OK WDATE',
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
//DACNDIN  DD  DDNAME=SYSIN
