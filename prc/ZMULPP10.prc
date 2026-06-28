//ZMULPP10 PROC                                                         00001000
//*--------------------------------------------------------------------*00002000
//*                                                                    *00003000
//*                     C A S A   D E   B O L S A                      *00004000
//*                     =========================                      *00005000
//*                     <<  C O N T R A T O S  >>                      *00006000
//*                                                                    *00007000
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00008000
//*                                                                    *00009000
//*   PROCEDIMIENTO    : ZMULPP10                                      *00009100
//*                                                                    *00009200
//*   OBJETIVO         : REPORTE DE ASIGNACION DE NUMERO DE CONTRATO   *00009300
//*                      ( OPCION 236 )                                *00009400
//*                                                                    *00009500
//*   CORRE ANTES DE   : NINGUNO                                       *00009600
//*                                                                    *00009700
//*   CORRE DESPUES DE : NINGUNO                                       *00009800
//*                                                                    *00009900
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00010000
//*                                                                    *00010100
//*   FECHA            : JUNIO 26, 2003                                *00010200
//*                                                                    *00010300
//*   AUTOR            : GETRONICS - MEXICO                            *00010400
//*
//*--------------------------------------------------------------------*00010600
//*   MODIFICO         : IDCJSL (JOSE OSCAR SEGURA PEREZ)             * 00010500
//*   FECHA            : JUNIO DE 2008                                 *00010200
//*--------------------------------------------------------------------*00010600
//*--------------------------------------------------------------------*00010600
//*   MODIFICO         : IDCMZA (TOWA)                                 *00010500
//*   FECHA            : NOVIEMBRE 2008                                *00010200
//*--------------------------------------------------------------------*00010600
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00010800
//*--------------------------------------------------------------------*00010900
//PUL10P04 EXEC PGM=ZM3DG001,                                           00011000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00011100
//PI601765 DD DUMMY                                                     00011200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00011300
//SYSPRINT DD SYSOUT=*                                                  00011400
//SYSOUT   DD SYSOUT=*                                                  00011500
//SYSDBOUT DD SYSOUT=*                                                  00011600
//SYSABOUT DD DUMMY                                                     00011700
//SYSUDUMP DD DUMMY                                                     00011800
//*                                                                     00011900
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.EMP.SUC.ZMULPE10,                     00012000
//            DISP=(NEW,CATLG,DELETE),                                  00012100
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00012200
//            UNIT=3390,                                                00012300
//            SPACE=(CYL,(2,1),RLSE)                                    00012400
//*                                                                     00014100
//*--------------------------------------------------------------------*
//*            CONDICION PARA SER TOMADA POR CONTROL-M                 *00021100
//*--------------------------------------------------------------------*00021200
//PUL10P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXNCT_IN_OK WDATE',       00021300
//         COND=(4,LT)                                                  00021400
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*                                                00021900
//SYSPRINT DD   DUMMY                                                   00022000
//SYSUDUMP DD   DUMMY                                                   00022100
//DAPRINT  DD   SYSOUT=*                                                00022200
//DACNDIN  DD   DDNAME=SYSIN                                            00022300
//*
//****************************************************************
//*        TERMINA PROCESO ZMULPP10 SIVA MULTIEMPRESA            *
//****************************************************************
