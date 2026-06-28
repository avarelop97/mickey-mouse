//ZMHCPP08 PROC                                                         00002025
//**********************************************************************
//*               C A S A   D E  B O L S A                             *
//*               ========================                             *
//*               << SISTEMA DE VALORES >>                             *
//*                                                                    *
//* APLICACION: MODULO UNICO DE VALORES  (M.U.V.)                      *
//* OBJETIVO  : GENERAR ARCHIVO CON LOS DATOS DE LAS EMISORAS,         *
//*             SERIES VALIDAS PARA E-GUARD (MERCADO DE CAPITALES,     *
//*             MERCADO DE DINERO Y SOCIEDADES DE INVERSION            *
//*                                                                    *
//* OPCION LINEA     = 166, TRANSACCION = Z536, PREFIJO = SIVAXPRE     *
//* SUBMITE A        : CBHCPZ08                                        *
//* CORRE DESPUES DE :                                                 *
//* CORRE ANTES   DE :                                                 *
//* PERIODICIDAD     : A SOLICITUD DEL USUARIO                         *
//**********************************************************************
//**********************************************************************00011700
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO   00011800
//**********************************************************************00014016
//PHP08P23 EXEC PGM=ZM3DG001,                                           00050000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00060000
//ZMG001A1 DD DSN=SIVA.MDC.WKF.EMP.SUC.ZMHCPE08,                        00090002
//            DISP=(NEW,CATLG,DELETE),                                  00100000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00110000
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00120020
//*                                                                     00140000
//SYSTSPRT DD SYSOUT=*                                                  00150003
//SYSPRINT DD SYSOUT=*                                                  00160003
//SYSOUT   DD SYSOUT=*                                                  00170003
//SYSDBOUT DD SYSOUT=*                                                  00180003
//SYSABOUT DD DUMMY                                                     00190000
//SYSUDUMP DD DUMMY                                                     00200000
//*
//**********************************************************************03800000
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROLM QUE TERMINO             *03801000
//*            ASIGNACION PREVIA.                                      *03810000
//**********************************************************************03820100
//PHP08P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXPRE_IN_OK WDATE',       03821027
//         COND=(5,LT)                                                  03821111
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*                                                                     03851014
//PRTDBG   DD SYSOUT=*                                                  03900021
//SYSPRINT DD DUMMY                                                     03910021
//SYSUDUMP DD DUMMY                                                     03920021
//DAPRINT  DD SYSOUT=*                                                  03930021
//DACNDIN  DD DDNAME=SYSIN                                              03940021
//*                                                                     03950000
