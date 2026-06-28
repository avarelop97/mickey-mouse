//ZMJLPE36  PROC
//*********************************************************************
//* MENU CARGOS VARIOS OPC. 955.
//*********************************************************************
//*  REPORTE DIARIO DE LAS SOLICITUDES DE CANCELACION DE INTERESES POR
//*  SALDO DEUDOR CON VO. BO. DEL RESPONSABLE DEL CENTRO DE COSTOS
//*********************************************************************
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PJL36P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJLPE36,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*****************************************************************
//* OBJETIVO: REPORTE DIARIO DE LAS SOLICITUDES DE CANCELACION
//*           DE INTERESES POR SALDO DEUDOR CON VO. BO.
//*           DEL RESPONSABLE DEL CENTRO DE COSTOS.
//* PROGRAMA: ZM4DGF02
//*****************************************************************
//PJL36P02 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*
//ZMGF02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJLPE36,
//            DISP=SHR
//*
//ZMGF02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL36T01),DISP=SHR
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJL36P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSOL_IN_SEP_OK WDATE',
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
//**********************************************************************
//*        TERMINA PROCESO ZMJLPE36 SIVA MULTIEMPRESA                  *
//**********************************************************************
