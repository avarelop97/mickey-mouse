//ZMLLPE18  PROC
//**********************************************************************00029600
//*                                                                    *00029700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00029800
//*                                                                    *00029900
//* PROCESO        :  ZMLLPE18                                         *00030000
//*                   PROCESO SUBMITIDO DESDE LA OPCION 936 SIVA       *00030100
//*                                                                    *00030200
//* OBJETIVO       :  GENERAR REPORTE DE ACUMULADO DE COMISIONES       *00030300
//*                                                                    *00030500
//* CORRE                                                              *00030900
//* ANTES DE       :  NINGUNO                                          *00031000
//*                                                                    *00031300
//* DESPUES DE     :  NINGUNO                                          *00031400
//*                                                                    *00031500
//* REALIZO        :  JLGO                                             *00031600
//* FECHA          :  JUNIO  2003                                      *00031700
//*                                                                    *00031800
//**********************************************************************00032400
//*                                                                     00310000
//**********************************************************************
//*                                                                    *
//* OBJETIVO : EJECUTA REPORTES PARA EL AREA DE MERCADO DE DINERO      *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                        RECIBE PARAMETROS
//**********************************************************************
//PLL18P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE18,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//********************************************************************* 00040000
//*  REPORTE DE ACUMULADO DE COMISIONES ZM4MLN05                      * 00050000
//********************************************************************* 00060000
//*
//PLL18P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//*
//ZMLN05A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE18,DISP=SHR
//*
//ZMLN05R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL18T02),DISP=SHR                   00300000
//*                                                                     00310000
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PLL18P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXCOM_IN_SEP_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
