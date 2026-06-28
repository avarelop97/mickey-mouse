//ZMHCPD59 PROC
//**********************************************************************
//*                      C A S A   D E  B O L S A                      *
//*                      ========================                      *
//*                   <<   MERCADO DE CAPITALES    >>                  *
//*                                                                    *
//*                                                                    *
//* PROCESO        :  CBHCND59   (DISPARADOR).                         *
//*                                                                    *
//*                   ZMHCPD59   PROCEDIMIENTO.                        *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO DE VECTOR DE PRECIOS PARA         *
//*                   MERCADO DE CAPITALES.                            *
//*                                                                    *
//* PERIODICIDAD   :  EVENTUAL.                                        *
//*                                                                    *
//* ELABORADO POR  :  ERNESTO MANUEL CUAUTLE MARTINEZ.                 *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*                                                                    *
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*  PHC59P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *
//**********************************************************************
//*                     ===   INICIO DE     ===                        *
//*                     ===   CAPITALES     ===                        *
//**********************************************************************
//PHC59P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..ZMHCPD59,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                     -- ZM4DHW01 --                                 *
//*   OBJETIVO : GENERA ARCHIVO DE VECTOR DE PRECIOS, PARA             *
//*              CASA DE BOLSA.                                        *
//*                                                                    *
//**********************************************************************
//PHC59P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DHWA1 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..ZMHCPD59,DISP=SHR
//*
//ZM4DHWA2 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..VECTOR.PRECIO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=703,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC59T00),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*   OBJETIVO : ADICIONAR CONDICION PARA QUE SEA TOMADA POR CTL-M     *
//*              CASA DE BOLSA.                                        *
//*              EL PROCESO ES CICLICO.                                *
//**********************************************************************
//PHC59P01 EXEC  PGM=CTMCND,PARM='ADD COND CBHCND61_IN_OK WDATE',
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
//****************************************************************
//*        TERMINA PROCESO ZMHCPD59 SIVA MULTIEMPRESA            *
//****************************************************************
