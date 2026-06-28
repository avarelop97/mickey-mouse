//ZMHCPD89  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMHCPD89                                             *
//*____________________________________________________________________*
//*                                                                    *
//* AUTOR       : FSW-DGCM                                             *
//* FECHA       : 25 DE FEBRERO DEL 2014                               *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* REPROCESO DE CALCULO DE COSTO PROMEDIO PARA LA EJECUCION DESDE UN  *
//* DIA EN ESPECIFICO PARA UNA CUENTA Y CONCEPT CAPTURADOS.            *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*   @DGCM01    FS-DGCM 04MZO15  SE MODIFICA EL PASO PHC89P01.        *
//*                                                                    *
//*   @DGCM02    FS-DGCM 19MZO15  SE MODIFICA EL PASO PHC89P01 Y SE    *
//*                               AGREGA EL PASO PHC89P00.             *
//*====================================================================*
//* PASO     : PHC89P01                                                *
//* PROGRAMA : IKJEFT01/ZM4ISR03                                       *
//* OBJETIVO : REPROCSO DE COSTO PROMEDIO/ISR                          *
//*====================================================================*
//PHC89P01 EXEC PGM=IKJEFT01                                            01151027
//*                                                                     01153001
//ZMISR3R1 DD DSN=MXC&AMB..ZM.FIX.CTAREP.COSPROM.CBP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//*                                                                     01155001
//ZMISR3R2 DD DSN=MXC&AMB..ZM.FIX.CTAREP.COSPROM.BCM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//*@DGCM01-I                                                            01155001
//ZMISR3A1 DD DSN=MXC&AMB..ZM.FIX.CTAREP.TRASPAS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*@DGCM01-F                                                            01155001
//*@DGCM02-I                                                            01155001
//ZMISR3A2 DD DSN=MXC&AMB..ZM.FIX.CTAREP.ARCH.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=247,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//ZMISR3A3 DD DSN=MXC&AMB..ZM.FIX.CTAREP.ARCH.NVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=247,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*@DGCM02-F                                                            01155001
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC89T01),DISP=SHR                   01230041
//*@DGCM02-I                                                            01155001
//*====================================================================*
//* PASO     : PHC89P00                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : SORT PARA UNIR ARCHIVOS                                 *
//*====================================================================*
//PHC89P00 EXEC PGM=ICEMAN,COND=(4,LT)                                  01151027
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.CTAREP.ARCH.ORI,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.CTAREP.ARCH.NVO,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.CTAREP.INICIAL.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=247,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC89T00),DISP=SHR
//*
//*@DGCM02-F                                                            01155001
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 2 5         *
//*====================================================================*
