//ZMHLPP03 PROC
//*-------------------------------------------------------------------**
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXDRP                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZAR LOS DEPOSITOS Y RETIROS A PLAZOS           *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (A SOLICITUD DEL USUARIO)            *
//*                                                                    *
//*   ELABORADO POR:  SOFTTEK.                                         *
//*                                                                    *
//*   FECHA:  ABRIL  2006.                                             *
//*                                                                    *
//*-------------------------------------------------------------------**
//*                      LOG DE MODIFICACIONES                         *
//*-------------------------------------------------------------------**
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* TOWA | 18-11-08 |IDCMZA |        |SE GENERA CONDICION CONTROL-M    *
//*--------------------------------------------------------------------*
//*  PASO:  1     GENERAR ARCHIVO DE PARAMETRO A UTILIZAR EN EL        *
//*  PHL03P06     PROCESO                                              *
//*                                                         ZM3DG001   *
//*--------------------------------------------------------------------*
//PHL03P06 EXEC PGM=ZM3DG001,                                           00070000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00090000
//*                                                                     00090000
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.ZMHLPD03,                     00130000
//            DISP=(NEW,CATLG,DELETE),                                  00130000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00130000
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00130000
//SYSTSPRT DD SYSOUT=*                                                  00130000
//SYSPRINT DD SYSOUT=*                                                  00230000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00250000
//SYSABOUT DD SYSOUT=*                                                  00270000
//SYSUDUMP DD DUMMY                                                     00280000
//*                                                                     00310000
//****************************************************************      00700000
//*                SE ADICIONA CONDICION                         *      00710000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00720000
//****************************************************************      00730000
//PHL03P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXDRP_IN_OK WDATE',       00740000
//         COND=(4,LT)                                                  00750000
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
//*--------------------------------------------------------------------*
//*               F I N    Z M H L P P 0 3                             *
//*--------------------------------------------------------------------*
