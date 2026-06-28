//ZMJLPE35  PROC
//*********************************************************************
//* MENU DE CARGOS VARIOS OPC. 954.
//*********************************************************************
//* ZM4DGE51 : REPORTE DE CANCELACIONES DE INTERESES
//*            INDICATIVOS. CARGOS VARIOS *****DIARIO******
//* NOTA:
//*  ESTE REPORTE QUEDA CONTROLADO CON UN SWITCH DE IMPRESION REGIS-
//*  TRADO EN LA TABLA PARAM CON ITIPOPAR = 'T47', IPARAM ='VIBE51D 01'
//*  Y EN DATOSPAR = 'X ... '  DONDE ,X=1 (SE IMPRIME) =0 (NO SE IMP)
//*
//* SI NO SE ENCUENTRA SE IMPRIME, ASUME QUE EL SWITCH ESTA ENCENDIDO.
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PJL35P02 EXEC PGM=ZM3DG001,
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
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJLPE35,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*****************************************************************
//* OBJETIVO: CANCELACIONES INDICATIVAS DE CARGOS VARIOS
//*           SI EL SWITCH DE IMPRESION=1, SE IMPRIME.
//* PROGRAMA: ZM4DGE51
//*****************************************************************
//PJL35P01 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*
//ZMGE51A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJLPE35,
//            DISP=SHR
//*
//ZMGE51R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGE51T1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJLPTMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK05 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SORTWK06 DD UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL35T01),DISP=SHR
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJL35P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCAN_IN_SEP_OK WDATE',
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
//*********************************************************************
//*       TERMINA PROCESO ZMJLPE35 SIVA MULTIEMPRESA                  *
//*********************************************************************
