//ZMHCPP12  PROC
//**********************************************************************00001000
//*                                                                    *00002000
//*                   C A S A   D E  B O L S A                         *00003000
//*                   ========================                         *00004000
//*                   <<  C A P I T A L E S >>                         *00005001
//*                                                                    *00006000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00007000
//*                                                                    *00008000
//* PROCESO        :  ZMHCPP12                                         *00009001
//*                   PREVIO AL CIERRE DE DIA DEL MODULO DE CAPITALES  *00009100
//*                   PARA BANCA PATRIMONIAL.                          *00009201
//*                                                                    *00009301
//* OBJETIVO       :  PREVIO DE ASIGNACIONES DEL DIA DE CAPITALES      *00009401
//*                                                                    *00009500
//* CORRE                                                              *00009600
//* ANTES DE       :  CBHCPZ12                                         *00009701
//*                                                                    *00009900
//* PERIODICIDAD   :  DIARIO                                           *00010000
//*                                                                    *00010100
//* ELABORADO POR  : ERNESTO MANUEL CUAUTLE MARTINEZ                   *00010200
//*                                                                    *00010300
//**********************************************************************00010400
//*                      LOG DE MODIFICACIONES                         *00010500
//**********************************************************************00010600
//* FECHA    : 01 DE NOVIEMBRE  DE 2005.                               *00010700
//* MODIFICO : ERNESTO MANUEL CUAUTLE MARTINEZ.                        *00010700
//*                                                                    *00010700
//* OBJETIVO : SE ADICIONA UN ARCHIVO EN EL PASO  PHP12P04 Y PHP12P06  *00010700
//*            MODIFICA LA LONGITUD DEL ARCHIVO                        *00010700
//*            MXCP.ZM.TMP.MDC.E&EMP..ORDEN.X.EMISBP DE 169 A 136.     *00010700
//*                                                                    *00010700
//* FECHA    : NOVIEMBRE 2008.                                         *00010700
//* MODIFICO : OSCAR URBANO F. (AZERTIA).                              *00010700
//* OBJETIVO : CONVERSION DE SUBMITIDORES.                             *00010700
//**********************************************************************00011000
//*                                                                    *00011100
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00011200
//*  PHP12P14     GRABA EN UN ARCHIVO SECUENCIAL.                      *00011302
//*                                                         ZM3DG001   *00011400
//**********************************************************************00011500
//PHP12P02 EXEC PGM=ZM3DG001,                                           00050002
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00060000
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.EBCM.S000.ZMHCPD12,                   00090001
//            DISP=(NEW,CATLG,DELETE),                                  00100000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00110000
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00120000
//*                                                                     00140000
//SYSTSPRT DD SYSOUT=*                                                  00150000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSOUT   DD SYSOUT=*                                                  00170000
//SYSDBOUT DD SYSOUT=*                                                  00180000
//SYSABOUT DD DUMMY                                                     00190000
//SYSUDUMP DD DUMMY                                                     00200000
//*                                                                     00220000
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PHP12P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXBPP_IN_OK WDATE',
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
